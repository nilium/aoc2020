const std = @import("std");
const io = std.io;
const File = std.fs.File;
const Reader = File.Reader;
const Allocator = std.mem.Allocator;
const expect = std.testing.expect;
const math = std.math;

const alloc = std.heap.c_allocator;

const Record = struct {
    const Self = @This();

    min: usize,
    max: usize,
    char: u8,
    text: []const u8,

    pub fn validCount(self: Self) bool {
        const char = self.char;
        var n: usize = 0;
        for (self.text) |c| {
            if (c == char) n += 1;
        }
        return n >= self.min and n <= self.max;
    }

    pub fn validPositional(self: Self) bool {
        var n: usize = 0;
        const r = self.min - 1;
        const s = self.max - 1;
        const text = self.text;
        const char = self.char;
        return text.len > math.max(r, s) and text[r] != text[s] and (text[r] == char or text[s] == char);
    }
};

const RecordError = error{
    MissingMin,
    MissingMax,
    MissingChar,
    BadCharLen,
    MissingText,
};

fn parseRecord(line: []const u8) !Record {
    var rec: Record = undefined;
    var iter = std.mem.tokenize(line, "-: ");
    if (iter.next()) |minStr| {
        rec.min = try std.fmt.parseInt(usize, minStr, 10);
    } else {
        return RecordError.MissingMin;
    }
    if (iter.next()) |maxStr| {
        rec.max = try std.fmt.parseInt(usize, maxStr, 10);
    } else {
        return RecordError.MissingMax;
    }
    if (iter.next()) |char| {
        if (char.len != 1) {
            return RecordError.BadCharLen;
        }
        rec.char = char[0];
    } else {
        return RecordError.MissingChar;
    }
    if (iter.next()) |text| {
        rec.text = text;
    } else {
        return RecordError.MissingText;
    }
    return rec;
}

pub fn main() anyerror!void {
    var buf: [4000]u8 = undefined;
    const bufp = buf[0..];

    var stream = io.bufferedReader(io.getStdIn().reader());
    var rd = stream.reader();
    // var records = std.ArrayList(Record).init(alloc);
    // defer numbers.deinit();

    var validCount: usize = 0;
    var validPositional: usize = 0;
    while (try rd.readUntilDelimiterOrEof(bufp, '\n')) |line| {
        const rec = try parseRecord(line);
        if (rec.validCount()) {
            validCount += 1;
        }
        if (rec.validPositional()) {
            validPositional += 1;
        }
    }
    std.log.info("Valid by Count = {} Position = {}", .{ validCount, validPositional });
}
