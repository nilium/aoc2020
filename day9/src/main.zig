const std = @import("std");
const Combination = @import("nil").combination.Combination;

const Combo25 = Combination(usize, 2);

const Error = error{
    SecretNotFound,
    WeaknessNotFound,
};

const usizeAsc = std.sort.asc(usize);

pub fn main() anyerror!void {
    // I didn't really feel like writing code to parse this. I could've, but
    // I just didn't.
    const input = @import("./input.zig").Input;

    // Part 1 -- Find a window of numbers where the last number is not the sum
    // of a combination of two numbers before it.
    var secret: usize = undefined;
    {
        var i: usize = 0;
        const window: usize = 26;
        secret = search: while ((i + window) < input.len) : (i += 1) {
            const prefix = input[i .. i + window - 1];
            const sum = input[i + window - 1];
            var combo = Combo25.init(prefix);
            while (combo.next()) |p| {
                if (p[0] + p[1] == sum) {
                    continue :search;
                }
            } else break sum;
        } else return Error.SecretNotFound;
        std.log.info("Secret = {}", .{secret});
    }

    // Part 2 -- Find a sliding window of numbers that sums to part 1's number,
    // then sum the min and max of that window.
    {
        var window: usize = 2;
        var minmax = search: while (window < input.len) : (window += 1) {
            var i: usize = 0;
            while ((i + window) < input.len) : (i += 1) {
                const prefix = input[i .. i + window];
                var sum: usize = 0;
                for (prefix) |p| sum += p;
                if (sum == secret) {
                    const min = std.sort.min(usize, prefix, {}, usizeAsc).?;
                    const max = std.sort.max(usize, prefix, {}, usizeAsc).?;
                    break :search min + max;
                }
            }
        } else return Error.WeaknessNotFound;
        std.log.info("Sum = {}", .{minmax});
    }
}
