const std = @import("std");

pub const Attr = struct {
    kind: usize = 0,
    n: usize = 0,
};

pub const RuleSet = struct {
    rules: []const Rule,
    names: []const []const u8,

    pub fn getID(self: RuleSet, name: []const u8) ?usize {
        for (self.names) |r, i|
            if (std.mem.eql(u8, r, name)) return i;
        return null;
    }

    pub fn countHolding(self: RuleSet, needle: usize) usize {
        var count: usize = 0;
        for (self.rules) |r| {
            if (self.contains(r, needle)) count += 1;
        }
        return count;
    }

    pub fn countContains(self: RuleSet, root: usize) usize {
        var count: usize = 1;
        if (self.getRule(root)) |r| {
            for (r.attrs) |a| {
                const n = self.countContains(a.kind) * a.n;
                count += n;
            }
        }
        return count;
    }

    pub fn getRule(self: RuleSet, id: usize) ?Rule {
        return for (self.rules) |r| {
            if (r.kind == id) break r;
        } else null;
    }

    pub fn contains(self: RuleSet, rule: Rule, needle: usize) bool {
        return for (rule.attrs) |a| {
            if (a.kind == needle) break true;
            if (self.getRule(a.kind)) |r| {
                if (self.contains(r, needle)) break true;
            }
        } else false;
    }
};

pub const Rule = struct {
    kind: usize = 0,
    attrs: []const Attr,
};
