const std = @import("std");
const io = std.io;
const Allocator = std.mem.Allocator;

pub fn main() anyerror!void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();

    const alloc = &arena.allocator;

    var buf: [4000]u8 = undefined;

    var stream = io.bufferedReader(io.getStdIn().reader());
    var rd = stream.reader();
    var bits = BitSet.init(alloc);

    // Print the largest ID seen (part 1).
    var largest: usize = 0;
    while (try rd.readUntilDelimiterOrEof(&buf, '\n')) |line| {
        const pos = passPosition(line) catch continue;
        const id = pos.id();
        if (id > largest) largest = id;
        try bits.set(id, true);
    }
    std.log.info("Largest ID = {}", .{largest});

    // Invert the bitset and look for bits where the surrounding bits are unset.
    bits.invert();
    var iter = bits.iter();
    while (iter.next()) |bit| {
        // Ignore underflow on this because the 2**64-th bit won't be set.
        if (!bits.get(bit -% 1) and !bits.get(bit + 1)) {
            // Print empty-but-surrounded bits (part 2).
            std.log.info("Empty ID = {}", .{bit});
        }
    }
}

const Pos = struct {
    const Self = @This();

    row: usize,
    column: usize,

    fn id(self: Self) usize {
        return self.row * 8 + self.column;
    }
};

const PosError = error{
    ExpectFB,
    ExpectLR,
};

fn passPosition(pass: []const u8) !Pos {
    var row: usize = 0;
    var col: usize = 0;

    var div: usize = 64;
    var next: ?usize = null;
    for (pass) |c, i| {
        next = i;
        switch (c) {
            'B' => row += div,
            'F' => {},
            'L', 'R' => {
                next = i;
                break;
            },
            else => return PosError.ExpectFB,
        }
        div /= 2;
    }

    if (next == null) return PosError.ExpectLR;

    div = 4;
    for (pass[next.?..]) |c, i| {
        next = i;
        switch (c) {
            'R' => col += div,
            'L' => {},
            else => return PosError.ExpectLR,
        }
        div /= 2;
    }
    return Pos{ .row = row, .column = col };
}

test "passPosition returns correct values" {
    const eql = std.testing.expectEqual;
    const Case = struct {
        input: []const u8,
        want: Pos,
        id: usize,
    };

    const cases = [_]Case{
        .{ .input = "BFFFBBFRRR", .want = Pos{ .row = 70, .column = 7 }, .id = 567 },
        .{ .input = "FFFBBBFRRR", .want = Pos{ .row = 14, .column = 7 }, .id = 119 },
        .{ .input = "BBFFBBFRLL", .want = Pos{ .row = 102, .column = 4 }, .id = 820 },
    };

    for (cases) |c| {
        const pos = try passPosition(c.input);
        eql(pos.row, c.want.row);
        eql(pos.column, c.want.column);
        eql(pos.id(), c.id);
    }
}

// BitSet is a naive bitset implementation with an iterator attached.
const BitSet = struct {
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
        const needCap = bits / wordBits + 1;
        if (self.bits != null and self.bits.?.len >= needCap) return;
        var p = try self.alloc.alloc(u64, needCap);
        if (self.bits) |o| {
            std.mem.copy(u64, p, o);
            std.mem.set(u64, p[o.len..], 0);
            self.alloc.free(o);
        } else {
            std.mem.set(u64, p, 0);
        }
        self.bits = p;
    }

    pub fn set(self: *Self, bit: u64, v: bool) !void {
        try self.reserve(bit);
        const off: u6 = @intCast(u6, bit % wordBits);
        const i: u64 = (bit - off) / wordBits;
        const w: u64 = self.bits.?[i];
        const m: u64 = @intCast(u64, 1) << off;
        self.bits.?[i] = if (v) (w | m) else (w & ~m);
    }

    pub fn get(self: Self, bit: u64) bool {
        const i = bit / wordBits;
        if (self.bits.?.len <= i) return false;
        const m: u64 = @intCast(u64, 1) << @intCast(u6, bit % wordBits);
        return (self.bits.?[i] & m) == m;
    }

    pub fn getWord(self: Self, bit: u64) u64 {
        const i = bit / wordBits;
        if (self.bits.?.len <= i) return 0;
        return self.bits.?[i];
    }

    pub fn iter(self: *const Self) Iter {
        return Iter{
            .p = self,
            .word = if (self.bits) |p| p[0] else 0,
        };
    }

    pub fn invert(self: *Self) void {
        if (self.bits == null) return;
        for (self.bits.?) |*i| i.* = ~i.*;
    }

    const Iter = struct {
        p: *const Self,
        i: u64 = 0,
        word: u64 = 0,

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
    const expect = std.testing.expect;
    const expectEqual = std.testing.expectEqual;

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
    var nth: usize = 0;
    var iter = bits.iter();
    while (iter.next()) |i| {
        expectEqual(wantBits[nth], i);
        nth += 1;
    }
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

fn bitsTrailingZeros(u: u64) u64 {
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
