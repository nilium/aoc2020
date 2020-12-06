const std = @import("std");
const io = std.io;
const File = std.fs.File;
const Reader = File.Reader;
const Combination = @import("nil").combination.Combination;

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
            std.log.notice("Pair: {} * {} = {}", .{ r, s, r * s });
            break;
        }
    }

    var n3 = Combination(i64, 3).init(numbers.items);
    while (n3.next()) |pair| {
        const r = pair[0];
        const s = pair[1];
        const t = pair[2];
        if (r + s + t == 2020) {
            std.log.notice("Pair: {} * {} * {} = {}", .{ r, s, t, r * s * t });
            break;
        }
    }
}
