const std = @import("std");
const io = std.io;
const Allocator = std.mem.Allocator;
const File = std.fs.File;

const ascI64 = std.sort.asc(i64);

fn closeFile(f: *File) void {
    f.close();
}

fn closeNop(f: *File) void {}

pub fn main() anyerror!void {
    const stdout = io.getStdOut().writer();

    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();

    const alloc = &arena.allocator;

    var args = std.process.args();
    _ = args.skip(); // skip arg0

    var numbers = std.ArrayList(i64).init(alloc);
    defer numbers.deinit();
    try numbers.append(0); // This line here factors into why part 2 was harder than it needed to be.

    // Read input file.
    {
        var buf: [4000]u8 = undefined;
        var file: File = undefined;
        var close = closeFile;
        if (args.nextPosix()) |path| {
            const cwd = std.fs.cwd();
            file = try cwd.openFile(path, .{});
        } else {
            file = io.getStdIn();
            close = closeNop;
        }
        defer close(&file);

        var stream = io.bufferedReader(file.reader());
        var rd = stream.reader();
        while (try rd.readUntilDelimiterOrEof(&buf, '\n')) |line| {
            const i = try std.fmt.parseInt(i64, line, 10);
            try numbers.append(i);
        }

        std.sort.sort(i64, numbers.items, {}, ascI64);
    }

    // Part 1:
    {
        const counts = differences(numbers.items);
        try stdout.print("Ones = {} Threes = {} Product = {}\n", .{
            counts.ones,
            counts.threes,
            counts.ones * counts.threes,
        });
    }

    // Part 2, or: I don't like this part.
    //
    // This has added commentary because I think it's a fun problem once it's
    // explained, but I made some dumb mistakes in writing the answer out.
    //
    // First, the tribonacci sequence is not my idea, I am not that smart and
    // I was going to reuse the Combination iterator I wrote previously for
    // this. Someone on reddit, bless them, mentioned that the number of
    // combinations for a run of numbers in this sequence lines up with the
    // tribonacci sequence. If you write this out by hand, it makes sense, but
    // is not a dot I would've connected on my own and especially not at 10pm
    // after a long day of debugging things.
    //
    // Seconds, if you look up where I first add the number zero to the list of
    // numbers, that wasn't there until the very end. This threw off the count
    // by a factor of two. This is because the first run of numbers was counted
    // incorrectly as {1,2,3} insted of {0,1,2,3}, so its factor was trib(3)
    // instead of trib(4).
    {
        const data = numbers.items;
        const count = combinations(data);
        try stdout.print("Count = {}\n", .{count});
    }
}

const Counter = struct {
    ones: usize = 0,
    threes: usize = 0,
};

fn differences(data: []const i64) Counter {
    var c = Counter{};

    var last: i64 = 0;
    for (data) |i| {
        const delta = i - last;
        last = i;
        switch (delta) {
            0 => {},
            1 => c.ones += 1,
            3 => c.threes += 1,
            else => {
                std.debug.warn("Unreachable code with delta {}", .{delta});
                unreachable;
            },
        }
    }

    return c;
}

test "part 1 example" {
    var sampleData = [_]i64{
        0,
        16,
        10,
        15,
        5,
        1,
        11,
        7,
        19,
        6,
        12,
        4,
    };

    std.sort.sort(i64, &sampleData, {}, ascI64);
    const counts = differences(&sampleData);

    // Part 1
    std.testing.expectEqual(@as(usize, 7), counts.ones);
    // +1 to account for the fact that we're not modifying the sample data in
    // the test to include max+3.
    std.testing.expectEqual(@as(usize, 5), counts.threes + 1);

    // Part 2
    std.testing.expectEqual(@as(i64, 8), combinations(&sampleData));
}

test "part 1 longer example" {
    var sampleData = [_]i64{
        0, // Implied 0 made explicit.
        28,
        33,
        18,
        42,
        31,
        14,
        46,
        20,
        48,
        47,
        24,
        23,
        49,
        45,
        19,
        38,
        39,
        11,
        1,
        32,
        25,
        35,
        8,
        17,
        7,
        9,
        4,
        2,
        34,
        10,
        3,
    };

    std.sort.sort(i64, &sampleData, {}, ascI64);
    const counts = differences(&sampleData);

    // Part 1
    std.testing.expectEqual(@as(usize, 22), counts.ones);
    std.testing.expectEqual(@as(usize, 10), counts.threes + 1);

    // Part 2
    std.testing.expectEqual(@as(i64, 19208), combinations(&sampleData));
}

fn trib(n: i64) i64 {
    if (n <= 0) return 0;
    switch (n) {
        1, 2 => return 1,
        else => {},
    }
    var c = [3]i64{ 0, 1, 1 };
    var i = n - 2;
    while (i > 0) : (i -= 1) {
        const sum = c[0] + c[1] + c[2];
        c[0] = c[1];
        c[1] = c[2];
        c[2] = sum;
    }
    return c[2];
}

test "tribonacci sequence" {
    const eq = std.testing.expectEqual;
    eq(@as(i64, 0), trib(0));
    eq(@as(i64, 1), trib(1));
    eq(@as(i64, 1), trib(2));
    eq(@as(i64, 2), trib(3));
    eq(@as(i64, 4), trib(4));
    eq(@as(i64, 7), trib(5));
    eq(@as(i64, 13), trib(6)); // NOTE: this never occurs in the dataset.
}

fn combinations(data: []const i64) i64 {
    var count: i64 = 1;
    var i: usize = 0;
    while (i < data.len - 1) {
        var j: usize = i + 1;
        while (j < data.len and data[j] == data[j - 1] + 1) : (j += 1) {}
        count *= trib(@intCast(i64, @truncate(u32, j - i)));
        i = j;
    }
    return count;
}
