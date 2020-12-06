const std = @import("std");
// Based on <https://rosettacode.org/wiki/Combinations#Nim> because I don't
// remember this stuff off the top of my head.

pub fn Combination(comptime T: type, comptime size: usize) type {
    comptime {
        if (size == 0) {
            @compileError("size=0 not permitted for combinations");
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
    const expectEqual = std.testing.expectEqual;
    const expectEqualSlices = std.testing.expectEqualSlices;

    const C2 = Combination(i32, 2);

    comptime expectEqual(i32, C2.Type);
    comptime expectEqual(2, C2.Size);

    const data = &[_]C2.Type{ 4, 3, 2, 1 };
    const want = [_][2]C2.Type{
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
        expectEqualSlices(C2.Type, &pair, &wanted);
        i += 1;
    }

    expectEqual(want.len, i); // Expect that we get the desired number of results.
}
