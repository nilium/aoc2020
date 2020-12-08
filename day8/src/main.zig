const std = @import("std");
const io = std.io;
const Allocator = std.mem.Allocator;

pub fn main() anyerror!void {
    var buf: [4000]u8 = undefined;

    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();

    const alloc = &arena.allocator;

    var code = try Code.init(alloc);
    defer code.deinit();

    var stream = io.bufferedReader(io.getStdIn().reader());
    var rd = stream.reader();
    while (try rd.readUntilDelimiterOrEof(&buf, '\n')) |line| {
        try parseCode(line, &code, Code.append);
    }

    var vm = try VM.init(alloc, code.items());
    defer vm.deinit();

    // Part 1:
    while (vm.step() and vm.hits[vm.pc] != 1) {}
    std.log.info("Repeat(1) = {}", .{vm.accum});
    vm.reset();

    // Part 2 (sort of brute force):
    while (true) {
        const pc = vm.pc;
        const accum = vm.accum;

        // Update the instruction according to the rules: replace any jmp with
        // a nop and any nop with a jmp to find the faulty instruction.
        var c = &code.code.items[vm.pc];
        const orig = c.*;
        c.* = switch (c.*) {
            .nop => |n| .{ .jmp = n },
            .jmp => |n| .{ .nop = n },
            .acc => orig,
        };

        // Test if modifying the instruction at the PC causes the program to
        // terminate.
        while (vm.step() and vm.hits[vm.pc] != 1) {}
        if (vm.pc == vm.code.len) {
            // If the PC is after the end of the code, then the program exited
            // successfully.
            std.log.info("Patched instruction {} {} -> {}", .{ vm.pc + 1, orig, c.* });
            std.log.info("Final = {}", .{vm.accum});
            break;
        }

        c.* = orig;

        // Reset hit counters and put pc and accum back at their values up until
        // this run. Step over the instruction when we're done since we know the
        // program still loops.
        vm.reset();
        vm.pc = pc;
        vm.accum = accum;
        _ = vm.step();
    }
}

const Code = struct {
    const ArrayList = std.ArrayList(Op);

    code: ArrayList,

    pub fn init(allocator: *Allocator) !Code {
        return Code{
            .code = ArrayList.init(allocator),
        };
    }

    pub fn deinit(self: *Code) void {
        self.code.deinit();
    }

    fn items(self: Code) []const Op {
        return self.code.items;
    }

    fn append(self: *Code, op: Op) anyerror!void {
        try self.code.append(op);
    }
};

const Op = union(enum) {
    acc: i32,
    jmp: i32,
    nop: i32,
};

const ParseError = error{
    InvalidInstr,
    MissingArg,
};

pub fn parseCode(data: []const u8, ctx: anytype, next: fn (@TypeOf(ctx), Op) anyerror!void) !void {
    var iter = std.mem.tokenize(data, " \n");
    const eql = std.mem.eql;
    while (iter.next()) |tok| {
        var n: i32 = undefined;
        if (iter.next()) |num| {
            n = try std.fmt.parseInt(i32, num, 10);
        } else {
            return ParseError.MissingArg;
        }
        if (eql(u8, "acc", tok)) {
            try next(ctx, .{ .acc = n });
        } else if (eql(u8, "jmp", tok)) {
            try next(ctx, .{ .jmp = n });
        } else if (eql(u8, "nop", tok)) {
            try next(ctx, .{ .nop = n });
        } else {
            return ParseError.InvalidInstr;
        }
    }
}

const VM = struct {
    allocator: *Allocator,
    pc: usize = 0,
    code: []const Op,
    hits: []usize,
    accum: i64 = 0,

    const Error = error{InvalidPC};

    pub fn init(allocator: *Allocator, code: []const Op) !VM {
        var self = VM{
            .allocator = allocator,
            .code = code,
            .hits = try allocator.alloc(usize, code.len),
        };
        for (self.hits) |*h| h.* = 0;
        return self;
    }

    pub fn deinit(self: *VM) void {
        self.allocator.free(self.hits);
    }

    pub fn reset(self: *VM) void {
        self.pc = 0;
        self.accum = 0;
        for (self.hits) |*h| h.* = 0;
    }

    pub fn step(self: *VM) bool {
        if (self.pc == self.code.len) {
            return false;
        }

        self.hits[self.pc] += 1;

        switch (self.code[self.pc]) {
            .acc => |num| self.accum += num,
            .jmp => |rel| {
                @setRuntimeSafety(false);
                self.pc = @intCast(usize, @intCast(i64, self.pc) + rel);
                return self.pc != self.code.len;
            },
            .nop => {},
        }

        self.pc += 1;

        return self.pc != self.code.len;
    }
};

test "VM loop test" {
    var code = try Code.init(std.testing.allocator);
    defer code.deinit();

    try parseCode(
        @embedFile("sample"),
        &code,
        Code.append,
    );

    var vm = try VM.init(std.testing.allocator, code.items());
    defer vm.deinit();

    while (vm.step() and vm.hits[vm.pc] == 0) {}

    std.testing.expectEqual(@intCast(i64, 5), vm.accum);
}
