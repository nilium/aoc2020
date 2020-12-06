const std = @import("std");
const mem = std.mem;
const Allocator = mem.Allocator;
const testing = std.testing;

// BitSet is a naive bitset implementation with an iterator attached.
pub const BitSet = struct {
    const Self = @This();
    const wordBits = @bitSizeOf(u64);

    alloc: *Allocator,
    bits: ?[]u64 = null,

    pub fn init(allocator: *Allocator) Self {
        return Self{ .alloc = allocator };
    }

    pub fn deinit(self: *Self) void {
        if (self.bits != null) self.alloc.free(self.bits.?);
    }

    pub fn reserve(self: *Self, bits: u64) !void {
        const needCap = @intCast(usize, bits / wordBits) + 1;
        if (self.bits != null and self.bits.?.len >= needCap) return;
        var p = try self.alloc.alloc(u64, needCap);
        if (self.bits) |o| {
            mem.copy(u64, p, o);
            mem.set(u64, p[o.len..], 0);
            self.alloc.free(o);
        } else {
            mem.set(u64, p, 0);
        }
        self.bits = p;
    }

    pub fn zero(self: *Self) void {
        if (self.bits == null) return;
        mem.set(u64, self.bits.?, 0);
    }

    pub fn invert(self: *Self) void {
        if (self.bits == null) return;
        for (self.bits.?) |*i| i.* = ~i.*;
    }

    pub fn set(self: *Self, bit: u64, v: bool) !void {
        try self.reserve(bit);
        const off: u6 = @intCast(u6, bit % wordBits);
        const i: usize = @intCast(usize, (bit - off) / wordBits);
        const w: u64 = self.bits.?[i];
        const m: u64 = @intCast(u64, 1) << off;
        self.bits.?[i] = if (v) (w | m) else (w & ~m);
    }

    pub fn get(self: Self, bit: u64) bool {
        const i = @intCast(usize, bit / wordBits);
        if (self.bits.?.len <= i) return false;
        const m: u64 = @intCast(u64, 1) << @intCast(u6, bit % wordBits);
        return (self.bits.?[i] & m) == m;
    }

    pub fn getWord(self: Self, bit: u64) u64 {
        const i = bit / wordBits;
        if (self.bits.?.len <= i) return 0;
        return self.bits.?[i];
    }

    pub fn count(self: Self) usize {
        if (self.bits == null) return 0;
        var n: usize = 0;
        for (self.bits.?) |i| n += @popCount(u64, i);
        return n;
    }

    pub fn iter(self: *const Self) Iter {
        return Iter{
            .p = self,
            .word = if (self.bits) |p| p[0] else 0,
        };
    }

    const Iter = struct {
        word: u64 = 0,
        p: *const Self,
        i: usize = 0,

        pub fn next(self: *Iter) ?u64 {
            if (self.p.bits == null) return null;
            const bits = self.p.bits.?;
            if (self.i >= bits.len) return null;
            if (self.word == 0) {
                self.i += 1;
                while (self.i < bits.len and bits[self.i] == 0) self.i += 1;
                if (self.i >= bits.len) return null;
                self.word = bits[self.i];
            }
            // Note: because of the self.word == 0 check above, this will never
            // be never be 64.
            const bit = @truncate(u6, @ctz(u64, self.word));
            self.word &= ~(@intCast(u64, 1) << bit);
            return self.i * 64 + bit;
        }
    };
};

test "BitSet usage" {
    const expect = testing.expect;
    const expectEqual = testing.expectEqual;

    var bits = BitSet.init(std.testing.allocator);
    defer bits.deinit();

    try bits.set(0, true);
    expect(bits.get(0));

    expect(!bits.get(1));
    try bits.set(1, true);
    expect(bits.get(1));

    expect(!bits.get(1000));
    try bits.set(1000, true);
    expect(bits.get(1000));

    var wantBits = [_]u64{ 0, 1, 1000 };

    expectEqual(wantBits.len, bits.count());

    var nth: usize = 0;
    var iter = bits.iter();
    while (iter.next()) |i| {
        expectEqual(wantBits[nth], i);
        nth += 1;
    }

    bits.zero();
    expectEqual(@intCast(usize, 0), bits.count());
}
