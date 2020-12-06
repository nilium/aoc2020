const std = @import("std");
const io = std.io;
const Allocator = std.mem.Allocator;

pub fn main() anyerror!void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();

    const alloc = &arena.allocator;

    var buf: [4000]u8 = undefined;

    var stream = io.bufferedReader(io.getStdIn().reader());
    var rd = stream.reader();
    var lexer = Lexer.init(alloc);
    const readToken = TokenReader(@TypeOf(rd)).readToken;

    var valid: usize = 0;
    var seen: usize = 0;
    var fields = Fields{};
    while (try readToken(&lexer, rd)) |token| {
        switch (token) {
            .separator => {
                seen += 1;
                if (fields.valid()) valid += 1;
                fields = Fields{};
            },
            .word => |word| {
                _ = fields.setField(word);
            },
        }
    }
    std.log.notice("Seen = {} Valid = {}", .{ seen, valid });
}

// Lexer code that was more fun to write than the rest of this problem.

const Buffer = std.ArrayList(u8);

pub const Kind = enum {
    separator,
    word,
};

pub const Token = union(Kind) {
    separator: void,
    word: []const u8,
};

const Lexer = struct {
    const Self = @This();

    const State = enum {
        token,
        ws,
        nl,
        sep,
        word,
        end,
        eof,
        invalid,
    };

    pub const Error = error{
        UnshiftOverflow,
        InvalidState,
    };

    state: State = .token,
    pending: ?u8 = null,
    token: Buffer,
    chunk: []u8 = undefined,
    buf: [256]u8 = undefined,

    fn init(allocator: *Allocator) Self {
        var self = Self{
            .token = Buffer.init(allocator),
        };
        self.chunk = self.buf[0..0];
        return self;
    }

    fn unshift(self: *Self, c: u8) Error!void {
        if (self.pending != null) {
            return Error.UnshiftOverflow;
        }
        self.pending = c;
    }

    fn shift(self: *Self) ?u8 {
        if (self.pending) |c| {
            self.pending = null;
            return c;
        }
        if (self.chunk.len == 0) {
            return null;
        }
        const c = self.chunk[0];
        self.chunk = self.chunk[1..];
        return c;
    }

    fn lexChar(self: *Self, c: u8) !?Token {
        return switch (self.state) {
            .token => try self.lexToken(c),
            .ws => try self.lexSpace(c),
            .nl => try self.lexNL(c),
            .word => try self.lexWord(c),
            .sep => try self.lexSep(c),
            else => Error.InvalidState,
        };
    }

    fn lexToken(self: *Self, c: u8) !?Token {
        // Reset token buffer to 0 length. Never allocs.
        self.token.resize(0) catch unreachable;
        switch (c) {
            ' ' => self.state = .ws,
            '\n' => self.state = .nl,
            else => {
                try self.unshift(c);
                self.state = .word;
            },
        }
        return null;
    }

    fn lexSpace(self: *Self, c: u8) !?Token {
        if (c != ' ' and c != '\n') {
            self.state = .token;
            try self.unshift(c);
        }
        return null;
    }

    fn lexNL(self: *Self, c: u8) !?Token {
        switch (c) {
            '\n' => self.state = .sep,
            // If a line is just whitespace, treat it as a newline.
            ' ' => {},
            else => {
                try self.unshift(c);
                self.state = .token;
            },
        }
        return null;
    }

    fn lexSep(self: *Self, c: u8) !?Token {
        if (c == '\n') {
            return null;
        }
        try self.unshift(c);
        self.state = .token;
        return .separator;
    }

    fn lexWord(self: *Self, c: u8) !?Token {
        switch (c) {
            '\x00'...' ' => {
                self.state = .token;
                try self.unshift(c);
                return Token{ .word = self.token.items };
            },
            else => {
                try self.token.append(c);
                return null;
            },
        }
    }
};

// Lexer type tied to a given Reader type.
pub fn TokenReader(comptime Reader: type) type {
    return struct {
        const Self = @This();

        pub fn readToken(lex: *Lexer, reader: Reader) !?Token {
            // NOTE: There's a hack in here to account for producing a separator
            // at EOF followed by a null (to end a while(..) with the optional).
            // It'd probably be better to handle this by just returning an EOF
            // token but I got lazy.
            switch (lex.state) {
                .end => {
                    lex.state = .eof;
                    return .separator;
                },
                .eof => {
                    lex.state = .invalid;
                    return null;
                },
                else => {},
            }
            while (true) {
                while (lex.shift()) |c| {
                    if (try lex.lexChar(c)) |token| return token;
                }
                const nread = try reader.read(&lex.buf);
                if (nread == 0) {
                    switch (lex.state) {
                        .word => {
                            lex.state = .end;
                            return Token{ .word = lex.token.items };
                        },
                        else => {
                            lex.state = .eof;
                            return .separator;
                        },
                    }
                }
                lex.chunk = lex.buf[0..nread];
            }
        }
    };
}

// Awful field parsing functions.

const Fields = packed struct {
    const Self = @This();

    byr: u1 = 0, // Birth Year
    iyr: u1 = 0, // Issue Year
    eyr: u1 = 0, // Expiration Year
    hgt: u1 = 0, // Height
    hcl: u1 = 0, // Hair Color
    ecl: u1 = 0, // Eye Color
    pid: u1 = 0, // Passport ID
    cid: u1 = 0, // Country ID

    fn valid(self: Self) bool {
        return (self.byr & self.iyr & self.eyr & self.hgt & self.hcl & self.ecl & self.pid) == 1;
    }

    fn setField(self: *Self, text: []const u8) bool {
        if (text.len < 5 or text[3] != ':') return false;
        const head = text[0..3];
        const tail = text[4..];
        if (std.mem.eql(u8, head, "byr")) {
            if (!inYear(1920, 2002, tail)) return false;
            self.byr = 1;
        } else if (std.mem.eql(u8, head, "iyr")) {
            if (!inYear(2010, 2020, tail)) return false;
            self.iyr = 1;
        } else if (std.mem.eql(u8, head, "eyr")) {
            if (!inYear(2020, 2030, tail)) return false;
            self.eyr = 1;
        } else if (std.mem.eql(u8, head, "hgt")) {
            if (switch (height(tail) catch return false) {
                .cm => |cm| cm < 150 or 193 < cm,
                .in => |in| in < 59 or 76 < in,
            }) return false;
            self.hgt = 1;
        } else if (std.mem.eql(u8, head, "hcl")) {
            if (!isHex(tail)) return false;
            self.hcl = 1;
        } else if (std.mem.eql(u8, head, "ecl")) {
            if (!isHairColor(tail)) return false;
            self.ecl = 1;
        } else if (std.mem.eql(u8, head, "pid")) {
            if (tail.len != 9 or !isDigits(tail)) return false;
            self.pid = 1;
        } else if (std.mem.eql(u8, head, "cid")) {
            self.cid = 1;
        } else {
            return false;
        }
        return true;
    }
};

const HeightError = error{Invalid};
const Unit = enum { cm, in };
const Height = union(Unit) {
    cm: usize,
    in: usize,
};

fn height(text: []const u8) !Height {
    const n = text.len;
    if (n < 3) return HeightError.Invalid;
    const unit = text[n - 2 ..];
    const meas = text[0 .. n - 2];
    const i = try std.fmt.parseInt(usize, meas, 10);
    if (std.mem.eql(u8, unit, "cm")) {
        return Height{ .cm = i };
    } else if (std.mem.eql(u8, unit, "in")) {
        return Height{ .in = i };
    }
    return HeightError.Invalid;
}

fn inYear(comptime min: u16, comptime max: u16, in: []const u8) bool {
    if (in.len != 4) return false;
    const i = std.fmt.parseInt(u16, in, 10) catch return false;
    return min <= i and i <= max;
}

fn isHexDigit(c: u8) bool {
    return switch (c) {
        'a'...'f', 'A'...'F', '0'...'9' => true,
        else => false,
    };
}

fn isHex(text: []const u8) bool {
    return text.len == 7 and
        text[0] == '#' and
        for (text[1..]) |c| {
        if (!isHexDigit(c)) break false;
    } else true;
}

const hairColors = [_][]const u8{
    "amb", "blu", "brn", "gry", "grn", "hzl", "oth",
};

fn isHairColor(text: []const u8) bool {
    for (hairColors) |col| if (std.mem.eql(u8, text, col)) return true;
    return false;
}

fn isDigits(text: []const u8) bool {
    for (text) |c| {
        switch (c) {
            '0'...'9' => {},
            else => return false,
        }
    }
    return true;
}

fn hasPrefix(slice: []const u8, prefix: []const u8) bool {
    if (slice.len < prefix.len) return false;
    return std.mem.eql(u8, slice[0..prefix.len], prefix);
}
