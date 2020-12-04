const std = @import("std");
const io = std.io;
const File = std.fs.File;
const Reader = File.Reader;

const expect = std.testing.expect;

fn Allocator() std.heap.ArenaAllocator {
    return std.heap.ArenaAllocator.init(std.heap.page_allocator);
}


pub fn main() anyerror!void {
    var allocator = Allocator();
    defer allocator.deinit();

    const alloc = &allocator.allocator;

    var buf: [4000]u8 = undefined;
    const bufp = buf[0..];

    var stream = io.bufferedReader(io.getStdIn().reader());
    var rd = stream.reader();
    var numbers = std.ArrayList(i64).init(alloc);
    defer numbers.deinit();

    while (try rd.readUntilDelimiterOrEof(bufp, '\n')) |line| {
        const i = try std.fmt.parseInt(i64, line, 10);
        try numbers.append(i);
    }

    var n2 = Combination(i64, 2).init(numbers.items);
    while (n2.next()) |pair| {
        const r = pair[0];
        const s = pair[1];
        if (r + s == 2020) {
            std.log.info("Pair: {} * {} = {}", .{ r, s, r * s });
            break;
        }
    }

    var n3 = Combination(i64, 3).init(numbers.items);
    while (n3.next()) |pair| {
        const r = pair[0];
        const s = pair[1];
        const t = pair[2];
        if (r + s + t == 2020) {
            std.log.info("Pair: {} * {} * {} = {}", .{ r, s, t, r * s * t });
            break;
        }
    }
}

// Based on <https://rosettacode.org/wiki/Combinations#Nim> because I don't
// remember this stuff off the top of my head.

fn Combination(comptime T: type, comptime size: usize) type {
    comptime {
        if (size == 0) {
            unreachable; // size=0 not permitted since it makes no sense.
        }
    }
    return struct {
        const Self = @This();
        const Type = T;
        const Result = [size]T;
        const Size = size;

        data: []const T,
        c: [size]T,
        i: [size]usize,
        first: bool,

        pub fn init(data: []const T) Self {
            var self = Self{
                .data = data,
                .c = undefined,
                .i = undefined,
                .first = data.len < size,
            };
            for (self.i) |_, i| {
                self.i[i] = i;
            }
            return self;
        }

        fn result(self: *Self) Result {
            for (self.i) |dataIdx, resultIdx| {
                self.c[resultIdx] = self.data[dataIdx];
            }
            return self.c;
        }

        pub fn next(self: *Self) ?Result {
            if (!self.first) {
                self.first = true;
                return self.result();
            }

            const len = self.data.len;
            var i = size - 1;
            self.i[i] += 1;
            if (self.i[i] <= len - 1) {
                return self.result();
            }

            while (self.i[i] >= len - size + i) {
                if (i == 0) {
                    return null;
                }
                i -= 1;
            }
            self.i[i] += 1;

            while (i < size - 1) {
                self.i[i + 1] = self.i[i] + 1;
                i += 1;
            }

            return self.result();
        }
    };
}

test "combinations" {
    const C2 = Combination(i32, 2);

    comptime expect(C2.Type == i32);
    comptime expect(C2.Size == 2);

    const Pair = struct { r: i32, s: i32 };
    const data = &[_]i32{ 4, 3, 2, 1 };
    const want = [_][2]i32{
        .{ 4, 3 },
        .{ 4, 2 },
        .{ 4, 1 },
        .{ 3, 2 },
        .{ 3, 1 },
        .{ 2, 1 },
    };

    var n2 = C2.init(data);
    var i: usize = 0;
    while (n2.next()) |pair| {
        const wanted = want[i];
        expect(std.mem.eql(i32, &pair, &wanted)); // Expect that the pair is the same.
        i += 1;
    }

    expect(i == want.len); // Expect that we get the desired number of results.
}
