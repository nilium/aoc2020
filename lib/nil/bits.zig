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
        for (self.bits.?) |i| n += bitsSet(i);
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
            const bit = bitsTrailingZeros(self.word);
            self.word &= ~(@intCast(u64, 1) << @intCast(u6, bit));
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

pub fn bitsSet(u: u64) usize {
    const m = (1 << 64) - 1;
    const m0 = 0x55555555_55555555;
    const m1 = 0x33333333_33333333;
    const m2 = 0x0f0f0f0f_0f0f0f0f;
    const m3 = 0x00ff00ff_00ff00ff;
    const m4 = 0x0000ffff_0000ffff;
    const m5 = 0x00000000_ffffffff;
    var x = u;
    x = (x >> 1 & m0) + (x & (m0 & m));
    x = (x >> 2 & m1) + (x & (m1 & m));
    x = (x >> 4 & m2) + (x & (m2 & m));
    x = (x >> 8 & m3) + (x & (m3 & m));
    x = (x >> 16 & m4) + (x & (m4 & m));
    x = (x >> 32 & m5) + (x & (m5 & m));
    return @intCast(usize, x);
}

test "bitsSet" {
    const eql = std.testing.expectEqual;

    eql(@intCast(u64, 0), bitsSet(0));
    eql(@intCast(u64, 1), bitsSet(0x10000));
    eql(@intCast(u64, 31), bitsSet(0xFFF7FFFF));
    eql(@intCast(u64, 32), bitsSet(0xFFFFFFFF));
    eql(@intCast(u64, 64), bitsSet(0xFFFFFFFF_FFFFFFFF));
}

pub fn bitsTrailingZeros(u: u64) u64 {
    // Currently based off the
    // https://graphics.stanford.edu/~seander/bithacks.html#ZerosOnRightBinSearch
    if (u == 0) return 64;
    var n: u64 = 1;
    var x = u;
    if (x & 0xFFFFFFFF == 0) {
        n += 32;
        x >>= 32;
    }
    if (x & 0xFFFF == 0) {
        n += 16;
        x >>= 16;
    }
    if (x & 0xFF == 0) {
        n += 8;
        x >>= 8;
    }
    if (x & 0xF == 0) {
        n += 4;
        x >>= 4;
    }
    if (x & 0x3 == 0) {
        n += 2;
        x >>= 2;
    }
    return n - (x & 1);
}

test "bitsTrailingZeros" {
    const eql = std.testing.expectEqual;
    eql(@intCast(u64, 64), bitsTrailingZeros(0));
    var n: u64 = 1;
    var i: u64 = 0;
    while (n != 0) : ({
        n <<= 1;
        i += 1;
    }) {
        eql(i, bitsTrailingZeros(n));
    }
}
