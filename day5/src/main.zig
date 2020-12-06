const std = @import("std");
const io = std.io;
const Allocator = std.mem.Allocator;
const BitSet = @import("nil").bits.BitSet;

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
    std.log.notice("Largest ID = {}", .{largest});

    // Invert the bitset and look for bits where the surrounding bits are unset.
    bits.invert();
    var iter = bits.iter();
    while (iter.next()) |bit| {
        // Ignore underflow on this because the 2**64-th bit won't be set.
        if (!bits.get(bit -% 1) and !bits.get(bit + 1)) {
            // Print empty-but-surrounded bits (part 2).
            std.log.notice("Empty ID = {}", .{bit});
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
