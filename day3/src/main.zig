const std = @import("std");
const io = std.io;
const File = std.fs.File;
const Reader = File.Reader;

pub fn main() anyerror!void {
    var buf: [4000]u8 = undefined;

    var stream = io.bufferedReader(io.getStdIn().reader());
    var rd = stream.reader();

    var checks = [_]Counter{
        .{ .stride = 1, .skip = 0 },
        .{ .stride = 3, .skip = 0 },
        .{ .stride = 5, .skip = 0 },
        .{ .stride = 7, .skip = 0 },
        .{ .stride = 1, .skip = 1 },
    };

    while (try rd.readUntilDelimiterOrEof(&buf, '\n')) |line| {
        for (checks) |*c| c.consume(line);
    }

    var hits: usize = 1;
    for (checks) |*c| {
        std.log.info("Right = {} Down = {} Hits = {} Lines = {}", .{ c.stride, c.skip, c.hits, c.lines });
        hits *= c.hits;
    }
    std.log.info("Product = {}", .{hits});
}

const Counter = struct {
    const Self = @This();

    lines: usize = 0,
    skip: usize = 0,
    stride: usize = 1,
    x: usize = 0,
    y: usize = 0,
    hits: usize = 0,

    pub fn consume(self: *Self, line: []const u8) void {
        const y = self.y;
        self.y += 1;
        if (y % (self.skip + 1) != 0) return;
        self.lines += 1;
        if (line[self.x] == '#') self.hits += 1;
        self.x += self.stride;
        if (self.x >= line.len) self.x -= line.len;
    }
};
