const std = @import("std");
const io = std.io;
const Allocator = std.mem.Allocator;
const BitSet = @import("nil").bits.BitSet;

const Part1 = struct {
    const Self = @This();

    bits: BitSet,
    count: usize = 0,
    last: u8 = 0,

    fn init(allocator: *Allocator) !Self {
        return Self{
            .bits = BitSet.init(allocator),
        };
    }

    fn deinit(self: *Self) void {
        self.bits.deinit();
    }

    fn read(self: *Self, block: []const u8) !void {
        for (block) |c| {
            switch (c) {
                '\n' => {
                    if (self.last == c) {
                        self.flush();
                    }
                },
                'a'...'z' => {
                    const i = @intCast(u64, c);
                    try self.bits.set(i, true);
                },
                else => {},
            }
            self.last = c;
        }
    }

    fn flush(self: *Self) void {
        self.count += self.bits.count();
        self.bits.zero();
    }
};

const Part2 = struct {
    const Self = @This();

    counts: [26]usize,
    lines: usize = 0,
    count: usize = 0,
    last: u8 = 0,

    fn init() Self {
        return Self{
            .counts = [1]usize{0} ** 26,
        };
    }

    fn deinit(self: *Self) void {
        self.bits.deinit();
    }

    fn read(self: *Self, block: []const u8) void {
        for (block) |c| {
            switch (c) {
                '\n' => {
                    if (self.last == c) {
                        self.flush();
                    } else {
                        self.lines += 1;
                    }
                },
                'a'...'z' => {
                    const i = @intCast(u64, c - 'a');
                    self.counts[i] += 1;
                },
                else => {},
            }
            self.last = c;
        }
    }

    fn flush(self: *Self) void {
        switch (self.last) {
            'a'...'z' => {
                self.lines += 1;
            },
            else => {},
        }

        for (self.counts) |c| {
            if (c == self.lines) {
                self.count += 1;
            }
        }

        self.lines = 0;
        std.mem.set(usize, &self.counts, 0);
    }
};

pub fn main() anyerror!void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();

    const alloc = &arena.allocator;

    var buf: [4000]u8 = undefined;

    var stream = io.bufferedReader(io.getStdIn().reader());
    var rd = stream.reader();
    var set = bits.BitSet.init(alloc);
    defer set.deinit();

    var pt1 = try Part1.init(alloc);
    defer pt1.deinit();

    var pt2 = Part2.init();

    while (try read(@TypeOf(rd), &rd, &buf)) |block| {
        try pt1.read(block);
        pt2.read(block);
    }
    pt1.flush();
    pt2.flush();

    std.log.info("Count 1 = {}", .{pt1.count});
    std.log.info("Count 2 = {}", .{pt2.count});
}

fn read(comptime Reader: type, reader: *Reader, buf: []u8) !?[]u8 {
    const n = try reader.read(buf);
    if (n == 0) return null;
    return buf[0..n];
}
