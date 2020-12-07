const RuleSet = @import("./rules.zig").RuleSet;
const Rule = @import("./rules.zig").Rule;
const Attr = @import("./rules.zig").Attr;

pub const rules = RuleSet{
    .rules = &[_]Rule{
        Rule{
            .kind = 0, // light red
            .attrs = &[_]Attr{
                Attr{ .kind = 1, .n = 1 }, // bright white
                Attr{ .kind = 2, .n = 2 }, // muted yellow
            },
        },
        Rule{
            .kind = 1, // bright white
            .attrs = &[_]Attr{
                Attr{ .kind = 4, .n = 1 }, // shiny gold
            },
        },
        Rule{
            .kind = 2, // muted yellow
            .attrs = &[_]Attr{
                Attr{ .kind = 4, .n = 2 }, // shiny gold
                Attr{ .kind = 5, .n = 9 }, // faded blue
            },
        },
        Rule{
            .kind = 3, // dark orange
            .attrs = &[_]Attr{
                Attr{ .kind = 1, .n = 3 }, // bright white
                Attr{ .kind = 2, .n = 4 }, // muted yellow
            },
        },
        Rule{
            .kind = 4, // shiny gold
            .attrs = &[_]Attr{
                Attr{ .kind = 6, .n = 1 }, // dark olive
                Attr{ .kind = 7, .n = 2 }, // vibrant plum
            },
        },
        Rule{
            .kind = 5, // faded blue
            .attrs = &[_]Attr{},
        },
        Rule{
            .kind = 6, // dark olive
            .attrs = &[_]Attr{
                Attr{ .kind = 5, .n = 3 }, // faded blue
                Attr{ .kind = 8, .n = 4 }, // dotted black
            },
        },
        Rule{
            .kind = 7, // vibrant plum
            .attrs = &[_]Attr{
                Attr{ .kind = 5, .n = 5 }, // faded blue
                Attr{ .kind = 8, .n = 6 }, // dotted black
            },
        },
        Rule{
            .kind = 8, // dotted black
            .attrs = &[_]Attr{},
        },
    },
    .names = &[_][]const u8{
        "light red",
        "bright white",
        "muted yellow",
        "dark orange",
        "shiny gold",
        "faded blue",
        "dark olive",
        "vibrant plum",
        "dotted black",
    },
};
