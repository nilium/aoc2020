const RuleSet = @import("./rules.zig").RuleSet;
const Rule = @import("./rules.zig").Rule;
const Attr = @import("./rules.zig").Attr;

pub const rules = RuleSet{
    .rules = &[_]Rule{
        Rule{
            .kind = 0, // drab tan
            .attrs = &[_]Attr{
                Attr{ .kind = 1, .n = 4 }, // clear gold
            },
        },
        Rule{
            .kind = 1, // clear gold
            .attrs = &[_]Attr{
                Attr{ .kind = 92, .n = 1 }, // muted tomato
                Attr{ .kind = 116, .n = 3 }, // dull cyan
                Attr{ .kind = 410, .n = 3 }, // plaid brown
            },
        },
        Rule{
            .kind = 2, // vibrant lime
            .attrs = &[_]Attr{
                Attr{ .kind = 3, .n = 3 }, // faded gold
                Attr{ .kind = 4, .n = 3 }, // plaid aqua
                Attr{ .kind = 5, .n = 2 }, // clear black
            },
        },
        Rule{
            .kind = 3, // faded gold
            .attrs = &[_]Attr{
                Attr{ .kind = 42, .n = 4 }, // dull black
            },
        },
        Rule{
            .kind = 4, // plaid aqua
            .attrs = &[_]Attr{
                Attr{ .kind = 219, .n = 4 }, // faded turquoise
                Attr{ .kind = 400, .n = 3 }, // dark cyan
                Attr{ .kind = 435, .n = 4 }, // striped silver
                Attr{ .kind = 503, .n = 4 }, // shiny beige
            },
        },
        Rule{
            .kind = 5, // clear black
            .attrs = &[_]Attr{
                Attr{ .kind = 41, .n = 1 }, // plaid tomato
                Attr{ .kind = 243, .n = 2 }, // dull magenta
                Attr{ .kind = 503, .n = 5 }, // shiny beige
            },
        },
        Rule{
            .kind = 6, // pale lime
            .attrs = &[_]Attr{
                Attr{ .kind = 7, .n = 1 }, // dim salmon
                Attr{ .kind = 8, .n = 5 }, // faded salmon
                Attr{ .kind = 9, .n = 1 }, // dim turquoise
            },
        },
        Rule{
            .kind = 7, // dim salmon
            .attrs = &[_]Attr{
                Attr{ .kind = 67, .n = 4 }, // drab lime
                Attr{ .kind = 117, .n = 2 }, // drab black
                Attr{ .kind = 387, .n = 4 }, // light green
            },
        },
        Rule{
            .kind = 8, // faded salmon
            .attrs = &[_]Attr{
                Attr{ .kind = 87, .n = 5 }, // posh brown
            },
        },
        Rule{
            .kind = 9, // dim turquoise
            .attrs = &[_]Attr{
                Attr{ .kind = 42, .n = 2 }, // dull black
                Attr{ .kind = 305, .n = 3 }, // dull fuchsia
            },
        },
        Rule{
            .kind = 10, // dull gray
            .attrs = &[_]Attr{
                Attr{ .kind = 11, .n = 1 }, // striped gold
                Attr{ .kind = 12, .n = 1 }, // vibrant yellow
            },
        },
        Rule{
            .kind = 11, // striped gold
            .attrs = &[_]Attr{
                Attr{ .kind = 37, .n = 5 }, // vibrant cyan
                Attr{ .kind = 100, .n = 3 }, // clear blue
                Attr{ .kind = 110, .n = 1 }, // dull lime
            },
        },
        Rule{
            .kind = 12, // vibrant yellow
            .attrs = &[_]Attr{
                Attr{ .kind = 127, .n = 5 }, // dark red
                Attr{ .kind = 182, .n = 4 }, // shiny gold
                Attr{ .kind = 214, .n = 3 }, // light silver
                Attr{ .kind = 237, .n = 2 }, // faded yellow
            },
        },
        Rule{
            .kind = 13, // light fuchsia
            .attrs = &[_]Attr{
                Attr{ .kind = 14, .n = 4 }, // light lavender
                Attr{ .kind = 15, .n = 5 }, // faded olive
                Attr{ .kind = 16, .n = 4 }, // plaid cyan
                Attr{ .kind = 17, .n = 1 }, // striped tomato
            },
        },
        Rule{
            .kind = 14, // light lavender
            .attrs = &[_]Attr{
                Attr{ .kind = 75, .n = 3 }, // dark maroon
                Attr{ .kind = 128, .n = 4 }, // shiny lime
                Attr{ .kind = 153, .n = 2 }, // bright maroon
                Attr{ .kind = 214, .n = 1 }, // light silver
            },
        },
        Rule{
            .kind = 15, // faded olive
            .attrs = &[_]Attr{
                Attr{ .kind = 32, .n = 2 }, // dotted silver
                Attr{ .kind = 33, .n = 4 }, // clear gray
            },
        },
        Rule{
            .kind = 16, // plaid cyan
            .attrs = &[_]Attr{
                Attr{ .kind = 413, .n = 3 }, // muted yellow
            },
        },
        Rule{
            .kind = 17, // striped tomato
            .attrs = &[_]Attr{
                Attr{ .kind = 166, .n = 2 }, // drab bronze
                Attr{ .kind = 168, .n = 2 }, // drab chartreuse
                Attr{ .kind = 250, .n = 5 }, // posh lavender
                Attr{ .kind = 360, .n = 2 }, // dark teal
            },
        },
        Rule{
            .kind = 18, // drab gold
            .attrs = &[_]Attr{
                Attr{ .kind = 19, .n = 1 }, // clear teal
            },
        },
        Rule{
            .kind = 19, // clear teal
            .attrs = &[_]Attr{
                Attr{ .kind = 125, .n = 2 }, // light turquoise
                Attr{ .kind = 235, .n = 1 }, // striped white
            },
        },
        Rule{
            .kind = 20, // dim red
            .attrs = &[_]Attr{
                Attr{ .kind = 21, .n = 2 }, // dull teal
            },
        },
        Rule{
            .kind = 21, // dull teal
            .attrs = &[_]Attr{
                Attr{ .kind = 340, .n = 4 }, // dotted gold
                Attr{ .kind = 463, .n = 4 }, // faded maroon
            },
        },
        Rule{
            .kind = 22, // striped orange
            .attrs = &[_]Attr{
                Attr{ .kind = 23, .n = 1 }, // bright fuchsia
                Attr{ .kind = 24, .n = 3 }, // plaid chartreuse
                Attr{ .kind = 25, .n = 4 }, // dark silver
                Attr{ .kind = 26, .n = 5 }, // dim maroon
            },
        },
        Rule{
            .kind = 23, // bright fuchsia
            .attrs = &[_]Attr{
                Attr{ .kind = 143, .n = 5 }, // vibrant bronze
                Attr{ .kind = 156, .n = 3 }, // shiny chartreuse
            },
        },
        Rule{
            .kind = 24, // plaid chartreuse
            .attrs = &[_]Attr{
                Attr{ .kind = 61, .n = 1 }, // wavy yellow
                Attr{ .kind = 151, .n = 3 }, // mirrored olive
            },
        },
        Rule{
            .kind = 25, // dark silver
            .attrs = &[_]Attr{
                Attr{ .kind = 12, .n = 3 }, // vibrant yellow
                Attr{ .kind = 134, .n = 2 }, // posh gray
                Attr{ .kind = 182, .n = 2 }, // shiny gold
                Attr{ .kind = 270, .n = 4 }, // clear cyan
            },
        },
        Rule{
            .kind = 26, // dim maroon
            .attrs = &[_]Attr{
                Attr{ .kind = 101, .n = 1 }, // mirrored fuchsia
                Attr{ .kind = 193, .n = 3 }, // pale salmon
                Attr{ .kind = 272, .n = 3 }, // dim coral
                Attr{ .kind = 325, .n = 4 }, // drab red
            },
        },
        Rule{
            .kind = 27, // shiny violet
            .attrs = &[_]Attr{
                Attr{ .kind = 28, .n = 1 }, // clear orange
                Attr{ .kind = 29, .n = 4 }, // muted olive
                Attr{ .kind = 30, .n = 4 }, // dark chartreuse
                Attr{ .kind = 31, .n = 4 }, // shiny indigo
            },
        },
        Rule{
            .kind = 28, // clear orange
            .attrs = &[_]Attr{
                Attr{ .kind = 116, .n = 3 }, // dull cyan
                Attr{ .kind = 250, .n = 1 }, // posh lavender
                Attr{ .kind = 267, .n = 5 }, // posh plum
            },
        },
        Rule{
            .kind = 29, // muted olive
            .attrs = &[_]Attr{
                Attr{ .kind = 87, .n = 1 }, // posh brown
                Attr{ .kind = 100, .n = 4 }, // clear blue
                Attr{ .kind = 141, .n = 2 }, // striped chartreuse
                Attr{ .kind = 250, .n = 1 }, // posh lavender
            },
        },
        Rule{
            .kind = 30, // dark chartreuse
            .attrs = &[_]Attr{
                Attr{ .kind = 14, .n = 1 }, // light lavender
                Attr{ .kind = 75, .n = 2 }, // dark maroon
                Attr{ .kind = 117, .n = 1 }, // drab black
                Attr{ .kind = 540, .n = 1 }, // dim blue
            },
        },
        Rule{
            .kind = 31, // shiny indigo
            .attrs = &[_]Attr{
                Attr{ .kind = 19, .n = 4 }, // clear teal
                Attr{ .kind = 252, .n = 4 }, // vibrant purple
                Attr{ .kind = 317, .n = 1 }, // pale teal
                Attr{ .kind = 410, .n = 3 }, // plaid brown
            },
        },
        Rule{
            .kind = 32, // dotted silver
            .attrs = &[_]Attr{
                Attr{ .kind = 40, .n = 3 }, // dull orange
            },
        },
        Rule{
            .kind = 33, // clear gray
            .attrs = &[_]Attr{
                Attr{ .kind = 116, .n = 2 }, // dull cyan
                Attr{ .kind = 140, .n = 3 }, // muted gold
                Attr{ .kind = 153, .n = 3 }, // bright maroon
                Attr{ .kind = 194, .n = 1 }, // bright red
            },
        },
        Rule{
            .kind = 34, // dotted lime
            .attrs = &[_]Attr{
                Attr{ .kind = 22, .n = 1 }, // striped orange
                Attr{ .kind = 35, .n = 1 }, // dark turquoise
                Attr{ .kind = 36, .n = 2 }, // shiny teal
                Attr{ .kind = 37, .n = 2 }, // vibrant cyan
            },
        },
        Rule{
            .kind = 35, // dark turquoise
            .attrs = &[_]Attr{
                Attr{ .kind = 59, .n = 1 }, // dotted violet
            },
        },
        Rule{
            .kind = 36, // shiny teal
            .attrs = &[_]Attr{
                Attr{ .kind = 140, .n = 4 }, // muted gold
                Attr{ .kind = 141, .n = 3 }, // striped chartreuse
            },
        },
        Rule{
            .kind = 37, // vibrant cyan
            .attrs = &[_]Attr{},
        },
        Rule{
            .kind = 38, // drab magenta
            .attrs = &[_]Attr{
                Attr{ .kind = 39, .n = 4 }, // bright yellow
                Attr{ .kind = 40, .n = 5 }, // dull orange
                Attr{ .kind = 41, .n = 5 }, // plaid tomato
            },
        },
        Rule{
            .kind = 39, // bright yellow
            .attrs = &[_]Attr{
                Attr{ .kind = 177, .n = 5 }, // posh white
                Attr{ .kind = 390, .n = 1 }, // pale beige
                Attr{ .kind = 488, .n = 3 }, // dim lime
            },
        },
        Rule{
            .kind = 40, // dull orange
            .attrs = &[_]Attr{
                Attr{ .kind = 8, .n = 4 }, // faded salmon
                Attr{ .kind = 92, .n = 5 }, // muted tomato
                Attr{ .kind = 110, .n = 5 }, // dull lime
                Attr{ .kind = 344, .n = 5 }, // bright chartreuse
            },
        },
        Rule{
            .kind = 41, // plaid tomato
            .attrs = &[_]Attr{
                Attr{ .kind = 118, .n = 3 }, // dark green
            },
        },
        Rule{
            .kind = 42, // dull black
            .attrs = &[_]Attr{
                Attr{ .kind = 43, .n = 4 }, // light olive
            },
        },
        Rule{
            .kind = 43, // light olive
            .attrs = &[_]Attr{
                Attr{ .kind = 100, .n = 4 }, // clear blue
                Attr{ .kind = 186, .n = 1 }, // clear purple
            },
        },
        Rule{
            .kind = 44, // posh turquoise
            .attrs = &[_]Attr{
                Attr{ .kind = 45, .n = 1 }, // muted salmon
                Attr{ .kind = 46, .n = 1 }, // muted black
                Attr{ .kind = 47, .n = 5 }, // shiny turquoise
            },
        },
        Rule{
            .kind = 45, // muted salmon
            .attrs = &[_]Attr{
                Attr{ .kind = 357, .n = 1 }, // vibrant indigo
            },
        },
        Rule{
            .kind = 46, // muted black
            .attrs = &[_]Attr{
                Attr{ .kind = 24, .n = 5 }, // plaid chartreuse
                Attr{ .kind = 106, .n = 2 }, // wavy beige
                Attr{ .kind = 319, .n = 3 }, // light magenta
            },
        },
        Rule{
            .kind = 47, // shiny turquoise
            .attrs = &[_]Attr{
                Attr{ .kind = 236, .n = 4 }, // faded teal
            },
        },
        Rule{
            .kind = 48, // muted purple
            .attrs = &[_]Attr{
                Attr{ .kind = 49, .n = 5 }, // dotted red
            },
        },
        Rule{
            .kind = 49, // dotted red
            .attrs = &[_]Attr{
                Attr{ .kind = 29, .n = 5 }, // muted olive
                Attr{ .kind = 249, .n = 3 }, // bright tomato
                Attr{ .kind = 250, .n = 1 }, // posh lavender
                Attr{ .kind = 463, .n = 2 }, // faded maroon
            },
        },
        Rule{
            .kind = 50, // striped black
            .attrs = &[_]Attr{
                Attr{ .kind = 35, .n = 3 }, // dark turquoise
                Attr{ .kind = 51, .n = 1 }, // striped fuchsia
                Attr{ .kind = 52, .n = 4 }, // drab indigo
            },
        },
        Rule{
            .kind = 51, // striped fuchsia
            .attrs = &[_]Attr{
                Attr{ .kind = 116, .n = 5 }, // dull cyan
                Attr{ .kind = 129, .n = 2 }, // posh black
                Attr{ .kind = 143, .n = 2 }, // vibrant bronze
                Attr{ .kind = 250, .n = 4 }, // posh lavender
            },
        },
        Rule{
            .kind = 52, // drab indigo
            .attrs = &[_]Attr{
                Attr{ .kind = 97, .n = 4 }, // light beige
            },
        },
        Rule{
            .kind = 53, // drab brown
            .attrs = &[_]Attr{
                Attr{ .kind = 33, .n = 3 }, // clear gray
                Attr{ .kind = 54, .n = 1 }, // light gray
                Attr{ .kind = 55, .n = 1 }, // dull coral
            },
        },
        Rule{
            .kind = 54, // light gray
            .attrs = &[_]Attr{
                Attr{ .kind = 3, .n = 1 }, // faded gold
                Attr{ .kind = 78, .n = 3 }, // dark plum
                Attr{ .kind = 86, .n = 2 }, // vibrant silver
            },
        },
        Rule{
            .kind = 55, // dull coral
            .attrs = &[_]Attr{
                Attr{ .kind = 45, .n = 4 }, // muted salmon
                Attr{ .kind = 352, .n = 1 }, // bright gray
                Attr{ .kind = 438, .n = 1 }, // bright tan
            },
        },
        Rule{
            .kind = 56, // pale purple
            .attrs = &[_]Attr{
                Attr{ .kind = 57, .n = 5 }, // mirrored black
                Attr{ .kind = 58, .n = 4 }, // wavy crimson
            },
        },
        Rule{
            .kind = 57, // mirrored black
            .attrs = &[_]Attr{
                Attr{ .kind = 397, .n = 1 }, // mirrored turquoise
                Attr{ .kind = 482, .n = 3 }, // light white
                Attr{ .kind = 486, .n = 1 }, // muted magenta
                Attr{ .kind = 546, .n = 4 }, // bright plum
            },
        },
        Rule{
            .kind = 58, // wavy crimson
            .attrs = &[_]Attr{
                Attr{ .kind = 102, .n = 5 }, // muted beige
                Attr{ .kind = 103, .n = 2 }, // dark olive
            },
        },
        Rule{
            .kind = 59, // dotted violet
            .attrs = &[_]Attr{
                Attr{ .kind = 214, .n = 4 }, // light silver
            },
        },
        Rule{
            .kind = 60, // clear lavender
            .attrs = &[_]Attr{
                Attr{ .kind = 8, .n = 2 }, // faded salmon
                Attr{ .kind = 43, .n = 1 }, // light olive
                Attr{ .kind = 61, .n = 4 }, // wavy yellow
                Attr{ .kind = 62, .n = 4 }, // plaid red
            },
        },
        Rule{
            .kind = 61, // wavy yellow
            .attrs = &[_]Attr{
                Attr{ .kind = 237, .n = 5 }, // faded yellow
                Attr{ .kind = 250, .n = 2 }, // posh lavender
            },
        },
        Rule{
            .kind = 62, // plaid red
            .attrs = &[_]Attr{
                Attr{ .kind = 48, .n = 2 }, // muted purple
                Attr{ .kind = 126, .n = 3 }, // mirrored chartreuse
                Attr{ .kind = 217, .n = 2 }, // pale olive
            },
        },
        Rule{
            .kind = 63, // bright coral
            .attrs = &[_]Attr{
                Attr{ .kind = 64, .n = 2 }, // bright brown
            },
        },
        Rule{
            .kind = 64, // bright brown
            .attrs = &[_]Attr{
                Attr{ .kind = 132, .n = 4 }, // shiny orange
                Attr{ .kind = 235, .n = 3 }, // striped white
            },
        },
        Rule{
            .kind = 65, // posh coral
            .attrs = &[_]Attr{
                Attr{ .kind = 21, .n = 4 }, // dull teal
                Attr{ .kind = 66, .n = 4 }, // bright aqua
            },
        },
        Rule{
            .kind = 66, // bright aqua
            .attrs = &[_]Attr{
                Attr{ .kind = 59, .n = 5 }, // dotted violet
                Attr{ .kind = 194, .n = 4 }, // bright red
                Attr{ .kind = 438, .n = 5 }, // bright tan
            },
        },
        Rule{
            .kind = 67, // drab lime
            .attrs = &[_]Attr{
                Attr{ .kind = 68, .n = 4 }, // striped tan
                Attr{ .kind = 69, .n = 4 }, // muted violet
            },
        },
        Rule{
            .kind = 68, // striped tan
            .attrs = &[_]Attr{
                Attr{ .kind = 75, .n = 4 }, // dark maroon
                Attr{ .kind = 151, .n = 5 }, // mirrored olive
            },
        },
        Rule{
            .kind = 69, // muted violet
            .attrs = &[_]Attr{
                Attr{ .kind = 45, .n = 3 }, // muted salmon
                Attr{ .kind = 127, .n = 1 }, // dark red
                Attr{ .kind = 257, .n = 1 }, // clear tomato
            },
        },
        Rule{
            .kind = 70, // striped brown
            .attrs = &[_]Attr{
                Attr{ .kind = 28, .n = 4 }, // clear orange
                Attr{ .kind = 71, .n = 1 }, // dark lime
            },
        },
        Rule{
            .kind = 71, // dark lime
            .attrs = &[_]Attr{
                Attr{ .kind = 155, .n = 3 }, // wavy brown
            },
        },
        Rule{
            .kind = 72, // wavy bronze
            .attrs = &[_]Attr{
                Attr{ .kind = 65, .n = 2 }, // posh coral
                Attr{ .kind = 73, .n = 3 }, // mirrored silver
            },
        },
        Rule{
            .kind = 73, // mirrored silver
            .attrs = &[_]Attr{
                Attr{ .kind = 41, .n = 4 }, // plaid tomato
                Attr{ .kind = 142, .n = 5 }, // dotted salmon
            },
        },
        Rule{
            .kind = 74, // dim black
            .attrs = &[_]Attr{
                Attr{ .kind = 75, .n = 1 }, // dark maroon
                Attr{ .kind = 76, .n = 4 }, // muted lavender
                Attr{ .kind = 77, .n = 3 }, // bright cyan
                Attr{ .kind = 78, .n = 3 }, // dark plum
            },
        },
        Rule{
            .kind = 75, // dark maroon
            .attrs = &[_]Attr{
                Attr{ .kind = 141, .n = 2 }, // striped chartreuse
                Attr{ .kind = 153, .n = 5 }, // bright maroon
                Attr{ .kind = 249, .n = 2 }, // bright tomato
            },
        },
        Rule{
            .kind = 76, // muted lavender
            .attrs = &[_]Attr{
                Attr{ .kind = 87, .n = 5 }, // posh brown
                Attr{ .kind = 100, .n = 3 }, // clear blue
                Attr{ .kind = 144, .n = 3 }, // striped blue
            },
        },
        Rule{
            .kind = 77, // bright cyan
            .attrs = &[_]Attr{
                Attr{ .kind = 1, .n = 2 }, // clear gold
                Attr{ .kind = 64, .n = 3 }, // bright brown
                Attr{ .kind = 235, .n = 4 }, // striped white
                Attr{ .kind = 377, .n = 3 }, // dark yellow
            },
        },
        Rule{
            .kind = 78, // dark plum
            .attrs = &[_]Attr{
                Attr{ .kind = 92, .n = 2 }, // muted tomato
                Attr{ .kind = 141, .n = 4 }, // striped chartreuse
                Attr{ .kind = 182, .n = 3 }, // shiny gold
            },
        },
        Rule{
            .kind = 79, // posh yellow
            .attrs = &[_]Attr{
                Attr{ .kind = 41, .n = 3 }, // plaid tomato
                Attr{ .kind = 80, .n = 4 }, // dull plum
                Attr{ .kind = 81, .n = 5 }, // shiny blue
            },
        },
        Rule{
            .kind = 80, // dull plum
            .attrs = &[_]Attr{
                Attr{ .kind = 51, .n = 4 }, // striped fuchsia
                Attr{ .kind = 318, .n = 2 }, // light coral
                Attr{ .kind = 364, .n = 3 }, // dark violet
                Attr{ .kind = 403, .n = 4 }, // mirrored cyan
            },
        },
        Rule{
            .kind = 81, // shiny blue
            .attrs = &[_]Attr{
                Attr{ .kind = 237, .n = 4 }, // faded yellow
                Attr{ .kind = 438, .n = 5 }, // bright tan
            },
        },
        Rule{
            .kind = 82, // pale violet
            .attrs = &[_]Attr{
                Attr{ .kind = 62, .n = 1 }, // plaid red
                Attr{ .kind = 83, .n = 2 }, // posh fuchsia
            },
        },
        Rule{
            .kind = 83, // posh fuchsia
            .attrs = &[_]Attr{
                Attr{ .kind = 134, .n = 5 }, // posh gray
            },
        },
        Rule{
            .kind = 84, // mirrored bronze
            .attrs = &[_]Attr{
                Attr{ .kind = 85, .n = 4 }, // striped lavender
            },
        },
        Rule{
            .kind = 85, // striped lavender
            .attrs = &[_]Attr{
                Attr{ .kind = 33, .n = 4 }, // clear gray
                Attr{ .kind = 152, .n = 5 }, // drab beige
                Attr{ .kind = 251, .n = 1 }, // striped bronze
                Attr{ .kind = 254, .n = 3 }, // muted teal
            },
        },
        Rule{
            .kind = 86, // vibrant silver
            .attrs = &[_]Attr{
                Attr{ .kind = 32, .n = 4 }, // dotted silver
                Attr{ .kind = 87, .n = 4 }, // posh brown
                Attr{ .kind = 88, .n = 4 }, // clear indigo
                Attr{ .kind = 89, .n = 5 }, // drab lavender
            },
        },
        Rule{
            .kind = 87, // posh brown
            .attrs = &[_]Attr{
                Attr{ .kind = 116, .n = 3 }, // dull cyan
            },
        },
        Rule{
            .kind = 88, // clear indigo
            .attrs = &[_]Attr{
                Attr{ .kind = 177, .n = 1 }, // posh white
                Attr{ .kind = 197, .n = 5 }, // drab plum
            },
        },
        Rule{
            .kind = 89, // drab lavender
            .attrs = &[_]Attr{
                Attr{ .kind = 334, .n = 3 }, // pale maroon
            },
        },
        Rule{
            .kind = 90, // dark brown
            .attrs = &[_]Attr{
                Attr{ .kind = 69, .n = 1 }, // muted violet
                Attr{ .kind = 91, .n = 1 }, // mirrored plum
                Attr{ .kind = 92, .n = 3 }, // muted tomato
            },
        },
        Rule{
            .kind = 91, // mirrored plum
            .attrs = &[_]Attr{
                Attr{ .kind = 35, .n = 1 }, // dark turquoise
                Attr{ .kind = 289, .n = 1 }, // plaid black
            },
        },
        Rule{
            .kind = 92, // muted tomato
            .attrs = &[_]Attr{
                Attr{ .kind = 100, .n = 5 }, // clear blue
                Attr{ .kind = 101, .n = 5 }, // mirrored fuchsia
            },
        },
        Rule{
            .kind = 93, // wavy green
            .attrs = &[_]Attr{
                Attr{ .kind = 94, .n = 2 }, // posh bronze
                Attr{ .kind = 95, .n = 3 }, // dull purple
                Attr{ .kind = 96, .n = 1 }, // wavy red
            },
        },
        Rule{
            .kind = 94, // posh bronze
            .attrs = &[_]Attr{
                Attr{ .kind = 51, .n = 1 }, // striped fuchsia
                Attr{ .kind = 142, .n = 5 }, // dotted salmon
                Attr{ .kind = 251, .n = 3 }, // striped bronze
            },
        },
        Rule{
            .kind = 95, // dull purple
            .attrs = &[_]Attr{
                Attr{ .kind = 140, .n = 4 }, // muted gold
                Attr{ .kind = 264, .n = 2 }, // faded beige
            },
        },
        Rule{
            .kind = 96, // wavy red
            .attrs = &[_]Attr{
                Attr{ .kind = 14, .n = 4 }, // light lavender
                Attr{ .kind = 152, .n = 5 }, // drab beige
            },
        },
        Rule{
            .kind = 97, // light beige
            .attrs = &[_]Attr{
                Attr{ .kind = 98, .n = 3 }, // light maroon
                Attr{ .kind = 99, .n = 3 }, // vibrant orange
                Attr{ .kind = 100, .n = 4 }, // clear blue
                Attr{ .kind = 101, .n = 3 }, // mirrored fuchsia
            },
        },
        Rule{
            .kind = 98, // light maroon
            .attrs = &[_]Attr{
                Attr{ .kind = 126, .n = 4 }, // mirrored chartreuse
                Attr{ .kind = 146, .n = 1 }, // faded magenta
            },
        },
        Rule{
            .kind = 99, // vibrant orange
            .attrs = &[_]Attr{
                Attr{ .kind = 31, .n = 3 }, // shiny indigo
                Attr{ .kind = 68, .n = 4 }, // striped tan
                Attr{ .kind = 249, .n = 2 }, // bright tomato
                Attr{ .kind = 266, .n = 2 }, // dotted turquoise
            },
        },
        Rule{
            .kind = 100, // clear blue
            .attrs = &[_]Attr{},
        },
        Rule{
            .kind = 101, // mirrored fuchsia
            .attrs = &[_]Attr{
                Attr{ .kind = 33, .n = 3 }, // clear gray
            },
        },
        Rule{
            .kind = 102, // muted beige
            .attrs = &[_]Attr{
                Attr{ .kind = 14, .n = 2 }, // light lavender
                Attr{ .kind = 185, .n = 1 }, // vibrant violet
                Attr{ .kind = 246, .n = 4 }, // wavy maroon
            },
        },
        Rule{
            .kind = 103, // dark olive
            .attrs = &[_]Attr{
                Attr{ .kind = 140, .n = 4 }, // muted gold
                Attr{ .kind = 156, .n = 1 }, // shiny chartreuse
            },
        },
        Rule{
            .kind = 104, // clear tan
            .attrs = &[_]Attr{
                Attr{ .kind = 61, .n = 1 }, // wavy yellow
            },
        },
        Rule{
            .kind = 105, // posh lime
            .attrs = &[_]Attr{
                Attr{ .kind = 106, .n = 3 }, // wavy beige
            },
        },
        Rule{
            .kind = 106, // wavy beige
            .attrs = &[_]Attr{
                Attr{ .kind = 45, .n = 4 }, // muted salmon
                Attr{ .kind = 248, .n = 4 }, // plaid yellow
                Attr{ .kind = 312, .n = 1 }, // dark bronze
            },
        },
        Rule{
            .kind = 107, // pale blue
            .attrs = &[_]Attr{
                Attr{ .kind = 88, .n = 4 }, // clear indigo
                Attr{ .kind = 108, .n = 5 }, // dull aqua
                Attr{ .kind = 109, .n = 4 }, // pale crimson
                Attr{ .kind = 110, .n = 3 }, // dull lime
            },
        },
        Rule{
            .kind = 108, // dull aqua
            .attrs = &[_]Attr{
                Attr{ .kind = 14, .n = 2 }, // light lavender
                Attr{ .kind = 95, .n = 4 }, // dull purple
            },
        },
        Rule{
            .kind = 109, // pale crimson
            .attrs = &[_]Attr{
                Attr{ .kind = 126, .n = 5 }, // mirrored chartreuse
            },
        },
        Rule{
            .kind = 110, // dull lime
            .attrs = &[_]Attr{
                Attr{ .kind = 37, .n = 3 }, // vibrant cyan
                Attr{ .kind = 59, .n = 2 }, // dotted violet
            },
        },
        Rule{
            .kind = 111, // wavy silver
            .attrs = &[_]Attr{
                Attr{ .kind = 112, .n = 1 }, // pale cyan
            },
        },
        Rule{
            .kind = 112, // pale cyan
            .attrs = &[_]Attr{
                Attr{ .kind = 103, .n = 1 }, // dark olive
                Attr{ .kind = 441, .n = 3 }, // muted white
            },
        },
        Rule{
            .kind = 113, // striped beige
            .attrs = &[_]Attr{
                Attr{ .kind = 33, .n = 1 }, // clear gray
                Attr{ .kind = 114, .n = 4 }, // dim plum
            },
        },
        Rule{
            .kind = 114, // dim plum
            .attrs = &[_]Attr{
                Attr{ .kind = 137, .n = 4 }, // plaid plum
                Attr{ .kind = 161, .n = 5 }, // light salmon
                Attr{ .kind = 519, .n = 2 }, // posh crimson
            },
        },
        Rule{
            .kind = 115, // dim gold
            .attrs = &[_]Attr{
                Attr{ .kind = 116, .n = 3 }, // dull cyan
                Attr{ .kind = 117, .n = 3 }, // drab black
                Attr{ .kind = 118, .n = 4 }, // dark green
            },
        },
        Rule{
            .kind = 116, // dull cyan
            .attrs = &[_]Attr{},
        },
        Rule{
            .kind = 117, // drab black
            .attrs = &[_]Attr{
                Attr{ .kind = 201, .n = 1 }, // vibrant black
            },
        },
        Rule{
            .kind = 118, // dark green
            .attrs = &[_]Attr{
                Attr{ .kind = 51, .n = 3 }, // striped fuchsia
                Attr{ .kind = 129, .n = 1 }, // posh black
            },
        },
        Rule{
            .kind = 119, // vibrant teal
            .attrs = &[_]Attr{
                Attr{ .kind = 120, .n = 5 }, // clear green
                Attr{ .kind = 121, .n = 4 }, // light violet
                Attr{ .kind = 122, .n = 2 }, // bright beige
            },
        },
        Rule{
            .kind = 120, // clear green
            .attrs = &[_]Attr{
                Attr{ .kind = 183, .n = 4 }, // dim orange
                Attr{ .kind = 279, .n = 2 }, // faded aqua
                Attr{ .kind = 280, .n = 3 }, // vibrant olive
            },
        },
        Rule{
            .kind = 121, // light violet
            .attrs = &[_]Attr{
                Attr{ .kind = 17, .n = 2 }, // striped tomato
                Attr{ .kind = 328, .n = 3 }, // muted red
                Attr{ .kind = 480, .n = 4 }, // clear magenta
                Attr{ .kind = 491, .n = 1 }, // mirrored beige
            },
        },
        Rule{
            .kind = 122, // bright beige
            .attrs = &[_]Attr{
                Attr{ .kind = 302, .n = 3 }, // posh magenta
                Attr{ .kind = 321, .n = 2 }, // clear yellow
                Attr{ .kind = 583, .n = 1 }, // faded plum
            },
        },
        Rule{
            .kind = 123, // light tan
            .attrs = &[_]Attr{
                Attr{ .kind = 124, .n = 5 }, // pale red
                Attr{ .kind = 125, .n = 3 }, // light turquoise
                Attr{ .kind = 126, .n = 2 }, // mirrored chartreuse
            },
        },
        Rule{
            .kind = 124, // pale red
            .attrs = &[_]Attr{
                Attr{ .kind = 129, .n = 3 }, // posh black
                Attr{ .kind = 143, .n = 2 }, // vibrant bronze
                Attr{ .kind = 249, .n = 4 }, // bright tomato
            },
        },
        Rule{
            .kind = 125, // light turquoise
            .attrs = &[_]Attr{
                Attr{ .kind = 127, .n = 4 }, // dark red
                Attr{ .kind = 143, .n = 1 }, // vibrant bronze
                Attr{ .kind = 177, .n = 5 }, // posh white
            },
        },
        Rule{
            .kind = 126, // mirrored chartreuse
            .attrs = &[_]Attr{
                Attr{ .kind = 35, .n = 3 }, // dark turquoise
                Attr{ .kind = 289, .n = 5 }, // plaid black
                Attr{ .kind = 435, .n = 4 }, // striped silver
                Attr{ .kind = 442, .n = 2 }, // posh maroon
            },
        },
        Rule{
            .kind = 127, // dark red
            .attrs = &[_]Attr{
                Attr{ .kind = 100, .n = 3 }, // clear blue
                Attr{ .kind = 128, .n = 5 }, // shiny lime
                Attr{ .kind = 129, .n = 1 }, // posh black
            },
        },
        Rule{
            .kind = 128, // shiny lime
            .attrs = &[_]Attr{},
        },
        Rule{
            .kind = 129, // posh black
            .attrs = &[_]Attr{},
        },
        Rule{
            .kind = 130, // posh salmon
            .attrs = &[_]Attr{
                Attr{ .kind = 35, .n = 5 }, // dark turquoise
                Attr{ .kind = 86, .n = 1 }, // vibrant silver
                Attr{ .kind = 131, .n = 1 }, // plaid salmon
                Attr{ .kind = 132, .n = 1 }, // shiny orange
            },
        },
        Rule{
            .kind = 131, // plaid salmon
            .attrs = &[_]Attr{
                Attr{ .kind = 36, .n = 3 }, // shiny teal
            },
        },
        Rule{
            .kind = 132, // shiny orange
            .attrs = &[_]Attr{
                Attr{ .kind = 37, .n = 3 }, // vibrant cyan
                Attr{ .kind = 68, .n = 2 }, // striped tan
                Attr{ .kind = 96, .n = 1 }, // wavy red
                Attr{ .kind = 344, .n = 3 }, // bright chartreuse
            },
        },
        Rule{
            .kind = 133, // mirrored yellow
            .attrs = &[_]Attr{
                Attr{ .kind = 90, .n = 1 }, // dark brown
                Attr{ .kind = 134, .n = 5 }, // posh gray
                Attr{ .kind = 135, .n = 1 }, // shiny silver
            },
        },
        Rule{
            .kind = 134, // posh gray
            .attrs = &[_]Attr{
                Attr{ .kind = 194, .n = 3 }, // bright red
                Attr{ .kind = 463, .n = 3 }, // faded maroon
            },
        },
        Rule{
            .kind = 135, // shiny silver
            .attrs = &[_]Attr{
                Attr{ .kind = 80, .n = 3 }, // dull plum
                Attr{ .kind = 251, .n = 4 }, // striped bronze
                Attr{ .kind = 299, .n = 4 }, // posh tomato
                Attr{ .kind = 357, .n = 5 }, // vibrant indigo
            },
        },
        Rule{
            .kind = 136, // dark fuchsia
            .attrs = &[_]Attr{
                Attr{ .kind = 137, .n = 1 }, // plaid plum
            },
        },
        Rule{
            .kind = 137, // plaid plum
            .attrs = &[_]Attr{
                Attr{ .kind = 161, .n = 1 }, // light salmon
                Attr{ .kind = 162, .n = 2 }, // shiny brown
                Attr{ .kind = 237, .n = 5 }, // faded yellow
            },
        },
        Rule{
            .kind = 138, // bright bronze
            .attrs = &[_]Attr{
                Attr{ .kind = 35, .n = 4 }, // dark turquoise
            },
        },
        Rule{
            .kind = 139, // posh silver
            .attrs = &[_]Attr{
                Attr{ .kind = 108, .n = 3 }, // dull aqua
                Attr{ .kind = 134, .n = 3 }, // posh gray
                Attr{ .kind = 140, .n = 1 }, // muted gold
                Attr{ .kind = 141, .n = 2 }, // striped chartreuse
            },
        },
        Rule{
            .kind = 140, // muted gold
            .attrs = &[_]Attr{},
        },
        Rule{
            .kind = 141, // striped chartreuse
            .attrs = &[_]Attr{
                Attr{ .kind = 37, .n = 1 }, // vibrant cyan
                Attr{ .kind = 129, .n = 4 }, // posh black
                Attr{ .kind = 344, .n = 2 }, // bright chartreuse
            },
        },
        Rule{
            .kind = 142, // dotted salmon
            .attrs = &[_]Attr{
                Attr{ .kind = 51, .n = 4 }, // striped fuchsia
                Attr{ .kind = 143, .n = 2 }, // vibrant bronze
                Attr{ .kind = 144, .n = 3 }, // striped blue
            },
        },
        Rule{
            .kind = 143, // vibrant bronze
            .attrs = &[_]Attr{
                Attr{ .kind = 100, .n = 5 }, // clear blue
            },
        },
        Rule{
            .kind = 144, // striped blue
            .attrs = &[_]Attr{
                Attr{ .kind = 37, .n = 4 }, // vibrant cyan
                Attr{ .kind = 110, .n = 2 }, // dull lime
                Attr{ .kind = 141, .n = 3 }, // striped chartreuse
                Attr{ .kind = 438, .n = 4 }, // bright tan
            },
        },
        Rule{
            .kind = 145, // dark orange
            .attrs = &[_]Attr{
                Attr{ .kind = 146, .n = 5 }, // faded magenta
            },
        },
        Rule{
            .kind = 146, // faded magenta
            .attrs = &[_]Attr{
                Attr{ .kind = 182, .n = 2 }, // shiny gold
                Attr{ .kind = 208, .n = 2 }, // mirrored lavender
                Attr{ .kind = 357, .n = 4 }, // vibrant indigo
            },
        },
        Rule{
            .kind = 147, // bright silver
            .attrs = &[_]Attr{
                Attr{ .kind = 148, .n = 5 }, // drab silver
            },
        },
        Rule{
            .kind = 148, // drab silver
            .attrs = &[_]Attr{
                Attr{ .kind = 261, .n = 2 }, // plaid lime
                Attr{ .kind = 544, .n = 2 }, // plaid white
            },
        },
        Rule{
            .kind = 149, // posh orange
            .attrs = &[_]Attr{
                Attr{ .kind = 123, .n = 5 }, // light tan
                Attr{ .kind = 150, .n = 4 }, // plaid tan
            },
        },
        Rule{
            .kind = 150, // plaid tan
            .attrs = &[_]Attr{
                Attr{ .kind = 30, .n = 4 }, // dark chartreuse
                Attr{ .kind = 106, .n = 1 }, // wavy beige
            },
        },
        Rule{
            .kind = 151, // mirrored olive
            .attrs = &[_]Attr{
                Attr{ .kind = 116, .n = 4 }, // dull cyan
                Attr{ .kind = 129, .n = 4 }, // posh black
                Attr{ .kind = 141, .n = 2 }, // striped chartreuse
            },
        },
        Rule{
            .kind = 152, // drab beige
            .attrs = &[_]Attr{
                Attr{ .kind = 118, .n = 2 }, // dark green
                Attr{ .kind = 153, .n = 2 }, // bright maroon
            },
        },
        Rule{
            .kind = 153, // bright maroon
            .attrs = &[_]Attr{},
        },
        Rule{
            .kind = 154, // muted bronze
            .attrs = &[_]Attr{
                Attr{ .kind = 88, .n = 2 }, // clear indigo
                Attr{ .kind = 120, .n = 1 }, // clear green
            },
        },
        Rule{
            .kind = 155, // wavy brown
            .attrs = &[_]Attr{
                Attr{ .kind = 87, .n = 4 }, // posh brown
                Attr{ .kind = 208, .n = 4 }, // mirrored lavender
                Attr{ .kind = 519, .n = 3 }, // posh crimson
            },
        },
        Rule{
            .kind = 156, // shiny chartreuse
            .attrs = &[_]Attr{
                Attr{ .kind = 100, .n = 1 }, // clear blue
                Attr{ .kind = 129, .n = 5 }, // posh black
            },
        },
        Rule{
            .kind = 157, // dull white
            .attrs = &[_]Attr{
                Attr{ .kind = 98, .n = 1 }, // light maroon
                Attr{ .kind = 158, .n = 2 }, // muted crimson
            },
        },
        Rule{
            .kind = 158, // muted crimson
            .attrs = &[_]Attr{
                Attr{ .kind = 197, .n = 5 }, // drab plum
            },
        },
        Rule{
            .kind = 159, // shiny gray
            .attrs = &[_]Attr{
                Attr{ .kind = 22, .n = 1 }, // striped orange
                Attr{ .kind = 26, .n = 2 }, // dim maroon
            },
        },
        Rule{
            .kind = 160, // dotted orange
            .attrs = &[_]Attr{
                Attr{ .kind = 21, .n = 1 }, // dull teal
                Attr{ .kind = 45, .n = 4 }, // muted salmon
                Attr{ .kind = 161, .n = 1 }, // light salmon
                Attr{ .kind = 162, .n = 4 }, // shiny brown
            },
        },
        Rule{
            .kind = 161, // light salmon
            .attrs = &[_]Attr{
                Attr{ .kind = 45, .n = 2 }, // muted salmon
                Attr{ .kind = 87, .n = 3 }, // posh brown
            },
        },
        Rule{
            .kind = 162, // shiny brown
            .attrs = &[_]Attr{
                Attr{ .kind = 277, .n = 2 }, // dull green
                Attr{ .kind = 278, .n = 3 }, // wavy lime
            },
        },
        Rule{
            .kind = 163, // clear olive
            .attrs = &[_]Attr{
                Attr{ .kind = 164, .n = 3 }, // mirrored tan
                Attr{ .kind = 165, .n = 5 }, // pale tan
            },
        },
        Rule{
            .kind = 164, // mirrored tan
            .attrs = &[_]Attr{
                Attr{ .kind = 8, .n = 3 }, // faded salmon
                Attr{ .kind = 87, .n = 2 }, // posh brown
                Attr{ .kind = 127, .n = 3 }, // dark red
            },
        },
        Rule{
            .kind = 165, // pale tan
            .attrs = &[_]Attr{
                Attr{ .kind = 217, .n = 1 }, // pale olive
                Attr{ .kind = 245, .n = 4 }, // mirrored teal
            },
        },
        Rule{
            .kind = 166, // drab bronze
            .attrs = &[_]Attr{
                Attr{ .kind = 118, .n = 1 }, // dark green
                Attr{ .kind = 167, .n = 1 }, // drab teal
            },
        },
        Rule{
            .kind = 167, // drab teal
            .attrs = &[_]Attr{
                Attr{ .kind = 23, .n = 4 }, // bright fuchsia
            },
        },
        Rule{
            .kind = 168, // drab chartreuse
            .attrs = &[_]Attr{
                Attr{ .kind = 169, .n = 4 }, // dim beige
            },
        },
        Rule{
            .kind = 169, // dim beige
            .attrs = &[_]Attr{
                Attr{ .kind = 135, .n = 2 }, // shiny silver
                Attr{ .kind = 308, .n = 3 }, // vibrant maroon
                Attr{ .kind = 346, .n = 4 }, // faded lavender
            },
        },
        Rule{
            .kind = 170, // faded cyan
            .attrs = &[_]Attr{
                Attr{ .kind = 1, .n = 5 }, // clear gold
            },
        },
        Rule{
            .kind = 171, // plaid fuchsia
            .attrs = &[_]Attr{
                Attr{ .kind = 172, .n = 2 }, // pale yellow
            },
        },
        Rule{
            .kind = 172, // pale yellow
            .attrs = &[_]Attr{
                Attr{ .kind = 19, .n = 1 }, // clear teal
                Attr{ .kind = 94, .n = 2 }, // posh bronze
                Attr{ .kind = 197, .n = 4 }, // drab plum
                Attr{ .kind = 381, .n = 4 }, // faded purple
            },
        },
        Rule{
            .kind = 173, // light gold
            .attrs = &[_]Attr{
                Attr{ .kind = 8, .n = 2 }, // faded salmon
                Attr{ .kind = 112, .n = 5 }, // pale cyan
                Attr{ .kind = 174, .n = 1 }, // posh olive
                Attr{ .kind = 175, .n = 5 }, // pale tomato
            },
        },
        Rule{
            .kind = 174, // posh olive
            .attrs = &[_]Attr{
                Attr{ .kind = 33, .n = 3 }, // clear gray
                Attr{ .kind = 208, .n = 5 }, // mirrored lavender
            },
        },
        Rule{
            .kind = 175, // pale tomato
            .attrs = &[_]Attr{
                Attr{ .kind = 101, .n = 1 }, // mirrored fuchsia
            },
        },
        Rule{
            .kind = 176, // pale bronze
            .attrs = &[_]Attr{
                Attr{ .kind = 177, .n = 2 }, // posh white
            },
        },
        Rule{
            .kind = 177, // posh white
            .attrs = &[_]Attr{
                Attr{ .kind = 336, .n = 5 }, // vibrant gold
            },
        },
        Rule{
            .kind = 178, // shiny coral
            .attrs = &[_]Attr{
                Attr{ .kind = 179, .n = 2 }, // plaid crimson
                Attr{ .kind = 180, .n = 1 }, // clear turquoise
            },
        },
        Rule{
            .kind = 179, // plaid crimson
            .attrs = &[_]Attr{
                Attr{ .kind = 220, .n = 4 }, // pale chartreuse
                Attr{ .kind = 357, .n = 3 }, // vibrant indigo
            },
        },
        Rule{
            .kind = 180, // clear turquoise
            .attrs = &[_]Attr{
                Attr{ .kind = 68, .n = 3 }, // striped tan
                Attr{ .kind = 164, .n = 2 }, // mirrored tan
                Attr{ .kind = 289, .n = 4 }, // plaid black
            },
        },
        Rule{
            .kind = 181, // vibrant green
            .attrs = &[_]Attr{
                Attr{ .kind = 24, .n = 3 }, // plaid chartreuse
                Attr{ .kind = 182, .n = 4 }, // shiny gold
                Attr{ .kind = 183, .n = 2 }, // dim orange
                Attr{ .kind = 184, .n = 4 }, // dark tomato
            },
        },
        Rule{
            .kind = 182, // shiny gold
            .attrs = &[_]Attr{
                Attr{ .kind = 29, .n = 1 }, // muted olive
                Attr{ .kind = 49, .n = 5 }, // dotted red
                Attr{ .kind = 197, .n = 1 }, // drab plum
            },
        },
        Rule{
            .kind = 183, // dim orange
            .attrs = &[_]Attr{
                Attr{ .kind = 264, .n = 1 }, // faded beige
            },
        },
        Rule{
            .kind = 184, // dark tomato
            .attrs = &[_]Attr{
                Attr{ .kind = 140, .n = 4 }, // muted gold
                Attr{ .kind = 182, .n = 3 }, // shiny gold
                Attr{ .kind = 194, .n = 3 }, // bright red
            },
        },
        Rule{
            .kind = 185, // vibrant violet
            .attrs = &[_]Attr{
                Attr{ .kind = 66, .n = 5 }, // bright aqua
                Attr{ .kind = 186, .n = 5 }, // clear purple
            },
        },
        Rule{
            .kind = 186, // clear purple
            .attrs = &[_]Attr{
                Attr{ .kind = 156, .n = 1 }, // shiny chartreuse
            },
        },
        Rule{
            .kind = 187, // muted fuchsia
            .attrs = &[_]Attr{
                Attr{ .kind = 39, .n = 2 }, // bright yellow
            },
        },
        Rule{
            .kind = 188, // bright olive
            .attrs = &[_]Attr{
                Attr{ .kind = 4, .n = 5 }, // plaid aqua
                Attr{ .kind = 42, .n = 5 }, // dull black
                Attr{ .kind = 189, .n = 5 }, // bright gold
                Attr{ .kind = 190, .n = 1 }, // mirrored indigo
            },
        },
        Rule{
            .kind = 189, // bright gold
            .attrs = &[_]Attr{
                Attr{ .kind = 102, .n = 1 }, // muted beige
                Attr{ .kind = 303, .n = 4 }, // pale green
                Attr{ .kind = 361, .n = 2 }, // faded indigo
                Attr{ .kind = 362, .n = 5 }, // mirrored orange
            },
        },
        Rule{
            .kind = 190, // mirrored indigo
            .attrs = &[_]Attr{
                Attr{ .kind = 373, .n = 3 }, // dim crimson
            },
        },
        Rule{
            .kind = 191, // mirrored maroon
            .attrs = &[_]Attr{
                Attr{ .kind = 192, .n = 2 }, // dull chartreuse
            },
        },
        Rule{
            .kind = 192, // dull chartreuse
            .attrs = &[_]Attr{
                Attr{ .kind = 129, .n = 5 }, // posh black
                Attr{ .kind = 246, .n = 5 }, // wavy maroon
                Attr{ .kind = 358, .n = 1 }, // shiny purple
                Attr{ .kind = 438, .n = 2 }, // bright tan
            },
        },
        Rule{
            .kind = 193, // pale salmon
            .attrs = &[_]Attr{
                Attr{ .kind = 45, .n = 1 }, // muted salmon
                Attr{ .kind = 140, .n = 1 }, // muted gold
                Attr{ .kind = 164, .n = 5 }, // mirrored tan
                Attr{ .kind = 194, .n = 5 }, // bright red
            },
        },
        Rule{
            .kind = 194, // bright red
            .attrs = &[_]Attr{},
        },
        Rule{
            .kind = 195, // faded brown
            .attrs = &[_]Attr{
                Attr{ .kind = 25, .n = 2 }, // dark silver
                Attr{ .kind = 29, .n = 2 }, // muted olive
                Attr{ .kind = 40, .n = 5 }, // dull orange
                Attr{ .kind = 41, .n = 3 }, // plaid tomato
            },
        },
        Rule{
            .kind = 196, // dark lavender
            .attrs = &[_]Attr{
                Attr{ .kind = 115, .n = 1 }, // dim gold
                Attr{ .kind = 184, .n = 4 }, // dark tomato
                Attr{ .kind = 197, .n = 2 }, // drab plum
                Attr{ .kind = 198, .n = 3 }, // vibrant gray
            },
        },
        Rule{
            .kind = 197, // drab plum
            .attrs = &[_]Attr{
                Attr{ .kind = 29, .n = 1 }, // muted olive
                Attr{ .kind = 68, .n = 1 }, // striped tan
                Attr{ .kind = 143, .n = 5 }, // vibrant bronze
            },
        },
        Rule{
            .kind = 198, // vibrant gray
            .attrs = &[_]Attr{
                Attr{ .kind = 12, .n = 3 }, // vibrant yellow
                Attr{ .kind = 19, .n = 2 }, // clear teal
            },
        },
        Rule{
            .kind = 199, // plaid coral
            .attrs = &[_]Attr{
                Attr{ .kind = 8, .n = 2 }, // faded salmon
                Attr{ .kind = 200, .n = 3 }, // striped turquoise
            },
        },
        Rule{
            .kind = 200, // striped turquoise
            .attrs = &[_]Attr{
                Attr{ .kind = 116, .n = 5 }, // dull cyan
                Attr{ .kind = 139, .n = 5 }, // posh silver
                Attr{ .kind = 210, .n = 2 }, // faded violet
                Attr{ .kind = 239, .n = 4 }, // bright violet
            },
        },
        Rule{
            .kind = 201, // vibrant black
            .attrs = &[_]Attr{
                Attr{ .kind = 439, .n = 2 }, // mirrored green
            },
        },
        Rule{
            .kind = 202, // shiny black
            .attrs = &[_]Attr{
                Attr{ .kind = 134, .n = 3 }, // posh gray
                Attr{ .kind = 203, .n = 3 }, // shiny olive
                Attr{ .kind = 204, .n = 4 }, // dull violet
                Attr{ .kind = 205, .n = 4 }, // vibrant plum
            },
        },
        Rule{
            .kind = 203, // shiny olive
            .attrs = &[_]Attr{
                Attr{ .kind = 285, .n = 1 }, // plaid beige
            },
        },
        Rule{
            .kind = 204, // dull violet
            .attrs = &[_]Attr{
                Attr{ .kind = 201, .n = 1 }, // vibrant black
            },
        },
        Rule{
            .kind = 205, // vibrant plum
            .attrs = &[_]Attr{
                Attr{ .kind = 179, .n = 4 }, // plaid crimson
                Attr{ .kind = 219, .n = 3 }, // faded turquoise
            },
        },
        Rule{
            .kind = 206, // muted plum
            .attrs = &[_]Attr{
                Attr{ .kind = 78, .n = 1 }, // dark plum
                Attr{ .kind = 162, .n = 1 }, // shiny brown
                Attr{ .kind = 175, .n = 5 }, // pale tomato
                Attr{ .kind = 204, .n = 4 }, // dull violet
            },
        },
        Rule{
            .kind = 207, // shiny lavender
            .attrs = &[_]Attr{
                Attr{ .kind = 208, .n = 4 }, // mirrored lavender
            },
        },
        Rule{
            .kind = 208, // mirrored lavender
            .attrs = &[_]Attr{
                Attr{ .kind = 153, .n = 5 }, // bright maroon
                Attr{ .kind = 197, .n = 4 }, // drab plum
                Attr{ .kind = 210, .n = 1 }, // faded violet
                Attr{ .kind = 251, .n = 5 }, // striped bronze
            },
        },
        Rule{
            .kind = 209, // mirrored blue
            .attrs = &[_]Attr{
                Attr{ .kind = 210, .n = 1 }, // faded violet
                Attr{ .kind = 211, .n = 2 }, // plaid olive
            },
        },
        Rule{
            .kind = 210, // faded violet
            .attrs = &[_]Attr{
                Attr{ .kind = 68, .n = 1 }, // striped tan
            },
        },
        Rule{
            .kind = 211, // plaid olive
            .attrs = &[_]Attr{
                Attr{ .kind = 23, .n = 1 }, // bright fuchsia
                Attr{ .kind = 95, .n = 5 }, // dull purple
                Attr{ .kind = 101, .n = 1 }, // mirrored fuchsia
            },
        },
        Rule{
            .kind = 212, // dotted aqua
            .attrs = &[_]Attr{
                Attr{ .kind = 213, .n = 3 }, // shiny yellow
            },
        },
        Rule{
            .kind = 213, // shiny yellow
            .attrs = &[_]Attr{
                Attr{ .kind = 86, .n = 4 }, // vibrant silver
                Attr{ .kind = 115, .n = 4 }, // dim gold
                Attr{ .kind = 377, .n = 1 }, // dark yellow
            },
        },
        Rule{
            .kind = 214, // light silver
            .attrs = &[_]Attr{},
        },
        Rule{
            .kind = 215, // bright orange
            .attrs = &[_]Attr{
                Attr{ .kind = 11, .n = 3 }, // striped gold
                Attr{ .kind = 59, .n = 5 }, // dotted violet
            },
        },
        Rule{
            .kind = 216, // dim indigo
            .attrs = &[_]Attr{
                Attr{ .kind = 87, .n = 5 }, // posh brown
                Attr{ .kind = 217, .n = 1 }, // pale olive
                Attr{ .kind = 218, .n = 1 }, // light indigo
            },
        },
        Rule{
            .kind = 217, // pale olive
            .attrs = &[_]Attr{
                Attr{ .kind = 75, .n = 4 }, // dark maroon
                Attr{ .kind = 363, .n = 1 }, // clear red
            },
        },
        Rule{
            .kind = 218, // light indigo
            .attrs = &[_]Attr{
                Attr{ .kind = 74, .n = 3 }, // dim black
                Attr{ .kind = 146, .n = 4 }, // faded magenta
                Attr{ .kind = 345, .n = 2 }, // dim purple
            },
        },
        Rule{
            .kind = 219, // faded turquoise
            .attrs = &[_]Attr{
                Attr{ .kind = 43, .n = 4 }, // light olive
                Attr{ .kind = 220, .n = 3 }, // pale chartreuse
            },
        },
        Rule{
            .kind = 220, // pale chartreuse
            .attrs = &[_]Attr{
                Attr{ .kind = 340, .n = 4 }, // dotted gold
                Attr{ .kind = 396, .n = 4 }, // faded crimson
                Attr{ .kind = 519, .n = 4 }, // posh crimson
            },
        },
        Rule{
            .kind = 221, // wavy teal
            .attrs = &[_]Attr{
                Attr{ .kind = 222, .n = 3 }, // clear brown
                Attr{ .kind = 223, .n = 3 }, // dark beige
            },
        },
        Rule{
            .kind = 222, // clear brown
            .attrs = &[_]Attr{
                Attr{ .kind = 29, .n = 2 }, // muted olive
                Attr{ .kind = 260, .n = 5 }, // plaid gold
            },
        },
        Rule{
            .kind = 223, // dark beige
            .attrs = &[_]Attr{
                Attr{ .kind = 108, .n = 2 }, // dull aqua
                Attr{ .kind = 271, .n = 2 }, // drab blue
            },
        },
        Rule{
            .kind = 224, // dotted bronze
            .attrs = &[_]Attr{
                Attr{ .kind = 155, .n = 1 }, // wavy brown
            },
        },
        Rule{
            .kind = 225, // posh purple
            .attrs = &[_]Attr{
                Attr{ .kind = 31, .n = 2 }, // shiny indigo
                Attr{ .kind = 153, .n = 5 }, // bright maroon
                Attr{ .kind = 226, .n = 1 }, // clear silver
            },
        },
        Rule{
            .kind = 226, // clear silver
            .attrs = &[_]Attr{
                Attr{ .kind = 200, .n = 2 }, // striped turquoise
            },
        },
        Rule{
            .kind = 227, // mirrored crimson
            .attrs = &[_]Attr{
                Attr{ .kind = 76, .n = 4 }, // muted lavender
                Attr{ .kind = 151, .n = 2 }, // mirrored olive
                Attr{ .kind = 220, .n = 3 }, // pale chartreuse
                Attr{ .kind = 228, .n = 4 }, // plaid bronze
            },
        },
        Rule{
            .kind = 228, // plaid bronze
            .attrs = &[_]Attr{
                Attr{ .kind = 93, .n = 1 }, // wavy green
                Attr{ .kind = 297, .n = 5 }, // bright blue
                Attr{ .kind = 480, .n = 3 }, // clear magenta
            },
        },
        Rule{
            .kind = 229, // wavy fuchsia
            .attrs = &[_]Attr{
                Attr{ .kind = 109, .n = 2 }, // pale crimson
                Attr{ .kind = 197, .n = 2 }, // drab plum
                Attr{ .kind = 230, .n = 1 }, // plaid magenta
                Attr{ .kind = 231, .n = 1 }, // drab aqua
            },
        },
        Rule{
            .kind = 230, // plaid magenta
            .attrs = &[_]Attr{
                Attr{ .kind = 264, .n = 2 }, // faded beige
                Attr{ .kind = 351, .n = 2 }, // vibrant coral
                Attr{ .kind = 387, .n = 2 }, // light green
                Attr{ .kind = 523, .n = 1 }, // dim teal
            },
        },
        Rule{
            .kind = 231, // drab aqua
            .attrs = &[_]Attr{
                Attr{ .kind = 77, .n = 5 }, // bright cyan
                Attr{ .kind = 106, .n = 1 }, // wavy beige
                Attr{ .kind = 441, .n = 1 }, // muted white
            },
        },
        Rule{
            .kind = 232, // striped yellow
            .attrs = &[_]Attr{
                Attr{ .kind = 233, .n = 4 }, // dark coral
                Attr{ .kind = 234, .n = 5 }, // dim silver
            },
        },
        Rule{
            .kind = 233, // dark coral
            .attrs = &[_]Attr{
                Attr{ .kind = 88, .n = 3 }, // clear indigo
                Attr{ .kind = 116, .n = 5 }, // dull cyan
                Attr{ .kind = 236, .n = 5 }, // faded teal
            },
        },
        Rule{
            .kind = 234, // dim silver
            .attrs = &[_]Attr{
                Attr{ .kind = 12, .n = 1 }, // vibrant yellow
                Attr{ .kind = 257, .n = 1 }, // clear tomato
            },
        },
        Rule{
            .kind = 235, // striped white
            .attrs = &[_]Attr{
                Attr{ .kind = 12, .n = 3 }, // vibrant yellow
                Attr{ .kind = 129, .n = 2 }, // posh black
                Attr{ .kind = 236, .n = 4 }, // faded teal
                Attr{ .kind = 237, .n = 1 }, // faded yellow
            },
        },
        Rule{
            .kind = 236, // faded teal
            .attrs = &[_]Attr{
                Attr{ .kind = 36, .n = 5 }, // shiny teal
                Attr{ .kind = 66, .n = 4 }, // bright aqua
                Attr{ .kind = 194, .n = 2 }, // bright red
                Attr{ .kind = 268, .n = 2 }, // dotted beige
            },
        },
        Rule{
            .kind = 237, // faded yellow
            .attrs = &[_]Attr{
                Attr{ .kind = 23, .n = 5 }, // bright fuchsia
                Attr{ .kind = 129, .n = 4 }, // posh black
                Attr{ .kind = 344, .n = 2 }, // bright chartreuse
            },
        },
        Rule{
            .kind = 238, // faded blue
            .attrs = &[_]Attr{
                Attr{ .kind = 45, .n = 4 }, // muted salmon
                Attr{ .kind = 88, .n = 5 }, // clear indigo
                Attr{ .kind = 239, .n = 3 }, // bright violet
                Attr{ .kind = 240, .n = 4 }, // dark purple
            },
        },
        Rule{
            .kind = 239, // bright violet
            .attrs = &[_]Attr{
                Attr{ .kind = 92, .n = 1 }, // muted tomato
                Attr{ .kind = 128, .n = 1 }, // shiny lime
            },
        },
        Rule{
            .kind = 240, // dark purple
            .attrs = &[_]Attr{
                Attr{ .kind = 51, .n = 4 }, // striped fuchsia
                Attr{ .kind = 156, .n = 2 }, // shiny chartreuse
                Attr{ .kind = 214, .n = 5 }, // light silver
                Attr{ .kind = 270, .n = 5 }, // clear cyan
            },
        },
        Rule{
            .kind = 241, // dim aqua
            .attrs = &[_]Attr{
                Attr{ .kind = 62, .n = 5 }, // plaid red
                Attr{ .kind = 134, .n = 4 }, // posh gray
                Attr{ .kind = 242, .n = 1 }, // clear bronze
                Attr{ .kind = 243, .n = 4 }, // dull magenta
            },
        },
        Rule{
            .kind = 242, // clear bronze
            .attrs = &[_]Attr{
                Attr{ .kind = 33, .n = 3 }, // clear gray
                Attr{ .kind = 169, .n = 1 }, // dim beige
            },
        },
        Rule{
            .kind = 243, // dull magenta
            .attrs = &[_]Attr{
                Attr{ .kind = 192, .n = 2 }, // dull chartreuse
                Attr{ .kind = 522, .n = 5 }, // vibrant beige
            },
        },
        Rule{
            .kind = 244, // shiny magenta
            .attrs = &[_]Attr{
                Attr{ .kind = 245, .n = 2 }, // mirrored teal
            },
        },
        Rule{
            .kind = 245, // mirrored teal
            .attrs = &[_]Attr{
                Attr{ .kind = 131, .n = 3 }, // plaid salmon
                Attr{ .kind = 410, .n = 5 }, // plaid brown
            },
        },
        Rule{
            .kind = 246, // wavy maroon
            .attrs = &[_]Attr{
                Attr{ .kind = 116, .n = 1 }, // dull cyan
                Attr{ .kind = 125, .n = 2 }, // light turquoise
                Attr{ .kind = 232, .n = 2 }, // striped yellow
            },
        },
        Rule{
            .kind = 247, // plaid teal
            .attrs = &[_]Attr{
                Attr{ .kind = 43, .n = 5 }, // light olive
                Attr{ .kind = 181, .n = 2 }, // vibrant green
                Attr{ .kind = 248, .n = 4 }, // plaid yellow
            },
        },
        Rule{
            .kind = 248, // plaid yellow
            .attrs = &[_]Attr{
                Attr{ .kind = 185, .n = 1 }, // vibrant violet
                Attr{ .kind = 351, .n = 3 }, // vibrant coral
                Attr{ .kind = 403, .n = 5 }, // mirrored cyan
                Attr{ .kind = 499, .n = 5 }, // dim cyan
            },
        },
        Rule{
            .kind = 249, // bright tomato
            .attrs = &[_]Attr{
                Attr{ .kind = 100, .n = 3 }, // clear blue
                Attr{ .kind = 128, .n = 5 }, // shiny lime
                Attr{ .kind = 153, .n = 3 }, // bright maroon
                Attr{ .kind = 250, .n = 5 }, // posh lavender
            },
        },
        Rule{
            .kind = 250, // posh lavender
            .attrs = &[_]Attr{
                Attr{ .kind = 128, .n = 2 }, // shiny lime
                Attr{ .kind = 194, .n = 3 }, // bright red
                Attr{ .kind = 344, .n = 2 }, // bright chartreuse
            },
        },
        Rule{
            .kind = 251, // striped bronze
            .attrs = &[_]Attr{
                Attr{ .kind = 14, .n = 2 }, // light lavender
                Attr{ .kind = 29, .n = 5 }, // muted olive
                Attr{ .kind = 127, .n = 5 }, // dark red
                Attr{ .kind = 134, .n = 4 }, // posh gray
            },
        },
        Rule{
            .kind = 252, // vibrant purple
            .attrs = &[_]Attr{
                Attr{ .kind = 61, .n = 4 }, // wavy yellow
                Attr{ .kind = 80, .n = 1 }, // dull plum
            },
        },
        Rule{
            .kind = 253, // posh aqua
            .attrs = &[_]Attr{
                Attr{ .kind = 175, .n = 3 }, // pale tomato
                Attr{ .kind = 247, .n = 2 }, // plaid teal
                Attr{ .kind = 254, .n = 4 }, // muted teal
            },
        },
        Rule{
            .kind = 254, // muted teal
            .attrs = &[_]Attr{
                Attr{ .kind = 40, .n = 5 }, // dull orange
                Attr{ .kind = 140, .n = 2 }, // muted gold
                Attr{ .kind = 141, .n = 4 }, // striped chartreuse
                Attr{ .kind = 439, .n = 1 }, // mirrored green
            },
        },
        Rule{
            .kind = 255, // faded fuchsia
            .attrs = &[_]Attr{
                Attr{ .kind = 18, .n = 5 }, // drab gold
                Attr{ .kind = 196, .n = 3 }, // dark lavender
                Attr{ .kind = 256, .n = 4 }, // plaid green
            },
        },
        Rule{
            .kind = 256, // plaid green
            .attrs = &[_]Attr{
                Attr{ .kind = 14, .n = 5 }, // light lavender
                Attr{ .kind = 137, .n = 4 }, // plaid plum
                Attr{ .kind = 267, .n = 3 }, // posh plum
                Attr{ .kind = 281, .n = 5 }, // mirrored violet
            },
        },
        Rule{
            .kind = 257, // clear tomato
            .attrs = &[_]Attr{
                Attr{ .kind = 251, .n = 2 }, // striped bronze
            },
        },
        Rule{
            .kind = 258, // dim olive
            .attrs = &[_]Attr{
                Attr{ .kind = 114, .n = 4 }, // dim plum
                Attr{ .kind = 259, .n = 2 }, // clear violet
                Attr{ .kind = 260, .n = 3 }, // plaid gold
                Attr{ .kind = 261, .n = 3 }, // plaid lime
            },
        },
        Rule{
            .kind = 259, // clear violet
            .attrs = &[_]Attr{
                Attr{ .kind = 150, .n = 1 }, // plaid tan
                Attr{ .kind = 161, .n = 2 }, // light salmon
            },
        },
        Rule{
            .kind = 260, // plaid gold
            .attrs = &[_]Attr{
                Attr{ .kind = 193, .n = 1 }, // pale salmon
                Attr{ .kind = 285, .n = 4 }, // plaid beige
            },
        },
        Rule{
            .kind = 261, // plaid lime
            .attrs = &[_]Attr{
                Attr{ .kind = 179, .n = 5 }, // plaid crimson
                Attr{ .kind = 312, .n = 5 }, // dark bronze
            },
        },
        Rule{
            .kind = 262, // striped teal
            .attrs = &[_]Attr{
                Attr{ .kind = 263, .n = 2 }, // bright lavender
                Attr{ .kind = 264, .n = 5 }, // faded beige
                Attr{ .kind = 265, .n = 5 }, // clear beige
                Attr{ .kind = 266, .n = 4 }, // dotted turquoise
            },
        },
        Rule{
            .kind = 263, // bright lavender
            .attrs = &[_]Attr{
                Attr{ .kind = 441, .n = 1 }, // muted white
            },
        },
        Rule{
            .kind = 264, // faded beige
            .attrs = &[_]Attr{
                Attr{ .kind = 23, .n = 1 }, // bright fuchsia
                Attr{ .kind = 29, .n = 5 }, // muted olive
                Attr{ .kind = 153, .n = 4 }, // bright maroon
            },
        },
        Rule{
            .kind = 265, // clear beige
            .attrs = &[_]Attr{
                Attr{ .kind = 194, .n = 5 }, // bright red
            },
        },
        Rule{
            .kind = 266, // dotted turquoise
            .attrs = &[_]Attr{
                Attr{ .kind = 23, .n = 2 }, // bright fuchsia
                Attr{ .kind = 186, .n = 1 }, // clear purple
            },
        },
        Rule{
            .kind = 267, // posh plum
            .attrs = &[_]Attr{
                Attr{ .kind = 64, .n = 3 }, // bright brown
            },
        },
        Rule{
            .kind = 268, // dotted beige
            .attrs = &[_]Attr{
                Attr{ .kind = 29, .n = 5 }, // muted olive
                Attr{ .kind = 37, .n = 2 }, // vibrant cyan
                Attr{ .kind = 125, .n = 4 }, // light turquoise
            },
        },
        Rule{
            .kind = 269, // striped indigo
            .attrs = &[_]Attr{
                Attr{ .kind = 33, .n = 3 }, // clear gray
                Attr{ .kind = 211, .n = 4 }, // plaid olive
                Attr{ .kind = 261, .n = 3 }, // plaid lime
                Attr{ .kind = 270, .n = 5 }, // clear cyan
            },
        },
        Rule{
            .kind = 270, // clear cyan
            .attrs = &[_]Attr{
                Attr{ .kind = 29, .n = 5 }, // muted olive
                Attr{ .kind = 118, .n = 1 }, // dark green
                Attr{ .kind = 153, .n = 3 }, // bright maroon
                Attr{ .kind = 358, .n = 3 }, // shiny purple
            },
        },
        Rule{
            .kind = 271, // drab blue
            .attrs = &[_]Attr{
                Attr{ .kind = 272, .n = 2 }, // dim coral
                Attr{ .kind = 273, .n = 4 }, // plaid purple
            },
        },
        Rule{
            .kind = 272, // dim coral
            .attrs = &[_]Attr{
                Attr{ .kind = 235, .n = 2 }, // striped white
            },
        },
        Rule{
            .kind = 273, // plaid purple
            .attrs = &[_]Attr{
                Attr{ .kind = 59, .n = 4 }, // dotted violet
                Attr{ .kind = 441, .n = 1 }, // muted white
            },
        },
        Rule{
            .kind = 274, // vibrant red
            .attrs = &[_]Attr{
                Attr{ .kind = 194, .n = 2 }, // bright red
                Attr{ .kind = 275, .n = 2 }, // pale gray
                Attr{ .kind = 276, .n = 4 }, // wavy tomato
            },
        },
        Rule{
            .kind = 275, // pale gray
            .attrs = &[_]Attr{
                Attr{ .kind = 30, .n = 5 }, // dark chartreuse
                Attr{ .kind = 68, .n = 2 }, // striped tan
                Attr{ .kind = 336, .n = 3 }, // vibrant gold
                Attr{ .kind = 395, .n = 4 }, // vibrant brown
            },
        },
        Rule{
            .kind = 276, // wavy tomato
            .attrs = &[_]Attr{
                Attr{ .kind = 0, .n = 1 }, // drab tan
                Attr{ .kind = 101, .n = 3 }, // mirrored fuchsia
                Attr{ .kind = 153, .n = 1 }, // bright maroon
            },
        },
        Rule{
            .kind = 277, // dull green
            .attrs = &[_]Attr{
                Attr{ .kind = 151, .n = 4 }, // mirrored olive
                Attr{ .kind = 325, .n = 3 }, // drab red
                Attr{ .kind = 410, .n = 3 }, // plaid brown
                Attr{ .kind = 487, .n = 4 }, // muted turquoise
            },
        },
        Rule{
            .kind = 278, // wavy lime
            .attrs = &[_]Attr{
                Attr{ .kind = 64, .n = 2 }, // bright brown
                Attr{ .kind = 103, .n = 1 }, // dark olive
                Attr{ .kind = 194, .n = 5 }, // bright red
            },
        },
        Rule{
            .kind = 279, // faded aqua
            .attrs = &[_]Attr{
                Attr{ .kind = 32, .n = 2 }, // dotted silver
                Attr{ .kind = 66, .n = 3 }, // bright aqua
                Attr{ .kind = 152, .n = 2 }, // drab beige
                Attr{ .kind = 197, .n = 3 }, // drab plum
            },
        },
        Rule{
            .kind = 280, // vibrant olive
            .attrs = &[_]Attr{
                Attr{ .kind = 336, .n = 4 }, // vibrant gold
            },
        },
        Rule{
            .kind = 281, // mirrored violet
            .attrs = &[_]Attr{
                Attr{ .kind = 278, .n = 5 }, // wavy lime
                Attr{ .kind = 282, .n = 1 }, // wavy chartreuse
            },
        },
        Rule{
            .kind = 282, // wavy chartreuse
            .attrs = &[_]Attr{
                Attr{ .kind = 32, .n = 4 }, // dotted silver
                Attr{ .kind = 174, .n = 5 }, // posh olive
                Attr{ .kind = 325, .n = 3 }, // drab red
            },
        },
        Rule{
            .kind = 283, // light brown
            .attrs = &[_]Attr{
                Attr{ .kind = 196, .n = 5 }, // dark lavender
            },
        },
        Rule{
            .kind = 284, // plaid blue
            .attrs = &[_]Attr{
                Attr{ .kind = 285, .n = 3 }, // plaid beige
                Attr{ .kind = 286, .n = 5 }, // dotted teal
            },
        },
        Rule{
            .kind = 285, // plaid beige
            .attrs = &[_]Attr{
                Attr{ .kind = 482, .n = 2 }, // light white
            },
        },
        Rule{
            .kind = 286, // dotted teal
            .attrs = &[_]Attr{
                Attr{ .kind = 156, .n = 5 }, // shiny chartreuse
            },
        },
        Rule{
            .kind = 287, // dim green
            .attrs = &[_]Attr{
                Attr{ .kind = 54, .n = 1 }, // light gray
                Attr{ .kind = 288, .n = 5 }, // bright green
            },
        },
        Rule{
            .kind = 288, // bright green
            .attrs = &[_]Attr{
                Attr{ .kind = 24, .n = 3 }, // plaid chartreuse
                Attr{ .kind = 183, .n = 5 }, // dim orange
                Attr{ .kind = 243, .n = 4 }, // dull magenta
            },
        },
        Rule{
            .kind = 289, // plaid black
            .attrs = &[_]Attr{
                Attr{ .kind = 23, .n = 4 }, // bright fuchsia
                Attr{ .kind = 118, .n = 5 }, // dark green
                Attr{ .kind = 128, .n = 2 }, // shiny lime
            },
        },
        Rule{
            .kind = 290, // dull salmon
            .attrs = &[_]Attr{
                Attr{ .kind = 291, .n = 3 }, // faded lime
                Attr{ .kind = 292, .n = 1 }, // striped gray
                Attr{ .kind = 293, .n = 3 }, // dull gold
            },
        },
        Rule{
            .kind = 291, // faded lime
            .attrs = &[_]Attr{
                Attr{ .kind = 345, .n = 1 }, // dim purple
                Attr{ .kind = 395, .n = 2 }, // vibrant brown
            },
        },
        Rule{
            .kind = 292, // striped gray
            .attrs = &[_]Attr{
                Attr{ .kind = 41, .n = 3 }, // plaid tomato
            },
        },
        Rule{
            .kind = 293, // dull gold
            .attrs = &[_]Attr{
                Attr{ .kind = 160, .n = 2 }, // dotted orange
                Attr{ .kind = 315, .n = 4 }, // pale gold
                Attr{ .kind = 423, .n = 5 }, // light yellow
            },
        },
        Rule{
            .kind = 294, // wavy plum
            .attrs = &[_]Attr{
                Attr{ .kind = 175, .n = 3 }, // pale tomato
                Attr{ .kind = 295, .n = 4 }, // shiny green
                Attr{ .kind = 296, .n = 2 }, // dull crimson
            },
        },
        Rule{
            .kind = 295, // shiny green
            .attrs = &[_]Attr{
                Attr{ .kind = 236, .n = 1 }, // faded teal
                Attr{ .kind = 276, .n = 4 }, // wavy tomato
                Attr{ .kind = 335, .n = 2 }, // striped crimson
                Attr{ .kind = 470, .n = 3 }, // muted maroon
            },
        },
        Rule{
            .kind = 296, // dull crimson
            .attrs = &[_]Attr{
                Attr{ .kind = 178, .n = 3 }, // shiny coral
                Attr{ .kind = 268, .n = 4 }, // dotted beige
                Attr{ .kind = 272, .n = 5 }, // dim coral
                Attr{ .kind = 398, .n = 2 }, // faded tomato
            },
        },
        Rule{
            .kind = 297, // bright blue
            .attrs = &[_]Attr{
                Attr{ .kind = 117, .n = 5 }, // drab black
                Attr{ .kind = 298, .n = 5 }, // dull lavender
            },
        },
        Rule{
            .kind = 298, // dull lavender
            .attrs = &[_]Attr{
                Attr{ .kind = 193, .n = 4 }, // pale salmon
                Attr{ .kind = 466, .n = 4 }, // mirrored brown
            },
        },
        Rule{
            .kind = 299, // posh tomato
            .attrs = &[_]Attr{
                Attr{ .kind = 66, .n = 4 }, // bright aqua
                Attr{ .kind = 180, .n = 4 }, // clear turquoise
                Attr{ .kind = 300, .n = 2 }, // dim chartreuse
            },
        },
        Rule{
            .kind = 300, // dim chartreuse
            .attrs = &[_]Attr{
                Attr{ .kind = 151, .n = 2 }, // mirrored olive
                Attr{ .kind = 182, .n = 3 }, // shiny gold
            },
        },
        Rule{
            .kind = 301, // dotted lavender
            .attrs = &[_]Attr{
                Attr{ .kind = 96, .n = 4 }, // wavy red
            },
        },
        Rule{
            .kind = 302, // posh magenta
            .attrs = &[_]Attr{
                Attr{ .kind = 43, .n = 3 }, // light olive
            },
        },
        Rule{
            .kind = 303, // pale green
            .attrs = &[_]Attr{
                Attr{ .kind = 109, .n = 3 }, // pale crimson
                Attr{ .kind = 276, .n = 3 }, // wavy tomato
                Attr{ .kind = 304, .n = 4 }, // plaid indigo
            },
        },
        Rule{
            .kind = 304, // plaid indigo
            .attrs = &[_]Attr{
                Attr{ .kind = 59, .n = 1 }, // dotted violet
                Attr{ .kind = 151, .n = 1 }, // mirrored olive
                Attr{ .kind = 164, .n = 3 }, // mirrored tan
                Attr{ .kind = 200, .n = 1 }, // striped turquoise
            },
        },
        Rule{
            .kind = 305, // dull fuchsia
            .attrs = &[_]Attr{
                Attr{ .kind = 1, .n = 2 }, // clear gold
            },
        },
        Rule{
            .kind = 306, // light plum
            .attrs = &[_]Attr{
                Attr{ .kind = 78, .n = 5 }, // dark plum
                Attr{ .kind = 235, .n = 1 }, // striped white
            },
        },
        Rule{
            .kind = 307, // dotted olive
            .attrs = &[_]Attr{
                Attr{ .kind = 308, .n = 5 }, // vibrant maroon
            },
        },
        Rule{
            .kind = 308, // vibrant maroon
            .attrs = &[_]Attr{
                Attr{ .kind = 1, .n = 1 }, // clear gold
                Attr{ .kind = 347, .n = 3 }, // bright purple
            },
        },
        Rule{
            .kind = 309, // dim yellow
            .attrs = &[_]Attr{
                Attr{ .kind = 277, .n = 2 }, // dull green
            },
        },
        Rule{
            .kind = 310, // bright indigo
            .attrs = &[_]Attr{
                Attr{ .kind = 161, .n = 4 }, // light salmon
                Attr{ .kind = 173, .n = 3 }, // light gold
                Attr{ .kind = 211, .n = 4 }, // plaid olive
                Attr{ .kind = 311, .n = 3 }, // wavy lavender
            },
        },
        Rule{
            .kind = 311, // wavy lavender
            .attrs = &[_]Attr{
                Attr{ .kind = 100, .n = 4 }, // clear blue
                Attr{ .kind = 115, .n = 1 }, // dim gold
                Attr{ .kind = 146, .n = 3 }, // faded magenta
                Attr{ .kind = 179, .n = 1 }, // plaid crimson
            },
        },
        Rule{
            .kind = 312, // dark bronze
            .attrs = &[_]Attr{
                Attr{ .kind = 37, .n = 1 }, // vibrant cyan
                Attr{ .kind = 156, .n = 4 }, // shiny chartreuse
                Attr{ .kind = 413, .n = 1 }, // muted yellow
                Attr{ .kind = 502, .n = 1 }, // pale white
            },
        },
        Rule{
            .kind = 313, // striped aqua
            .attrs = &[_]Attr{
                Attr{ .kind = 25, .n = 1 }, // dark silver
                Attr{ .kind = 103, .n = 5 }, // dark olive
                Attr{ .kind = 314, .n = 4 }, // dull tomato
                Attr{ .kind = 315, .n = 5 }, // pale gold
            },
        },
        Rule{
            .kind = 314, // dull tomato
            .attrs = &[_]Attr{
                Attr{ .kind = 76, .n = 2 }, // muted lavender
                Attr{ .kind = 98, .n = 2 }, // light maroon
                Attr{ .kind = 195, .n = 1 }, // faded brown
                Attr{ .kind = 328, .n = 1 }, // muted red
            },
        },
        Rule{
            .kind = 315, // pale gold
            .attrs = &[_]Attr{
                Attr{ .kind = 161, .n = 5 }, // light salmon
                Attr{ .kind = 197, .n = 3 }, // drab plum
            },
        },
        Rule{
            .kind = 316, // dull maroon
            .attrs = &[_]Attr{
                Attr{ .kind = 317, .n = 2 }, // pale teal
                Attr{ .kind = 318, .n = 5 }, // light coral
                Attr{ .kind = 319, .n = 4 }, // light magenta
            },
        },
        Rule{
            .kind = 317, // pale teal
            .attrs = &[_]Attr{
                Attr{ .kind = 66, .n = 5 }, // bright aqua
                Attr{ .kind = 100, .n = 4 }, // clear blue
                Attr{ .kind = 125, .n = 3 }, // light turquoise
                Attr{ .kind = 358, .n = 3 }, // shiny purple
            },
        },
        Rule{
            .kind = 318, // light coral
            .attrs = &[_]Attr{
                Attr{ .kind = 152, .n = 5 }, // drab beige
                Attr{ .kind = 186, .n = 4 }, // clear purple
            },
        },
        Rule{
            .kind = 319, // light magenta
            .attrs = &[_]Attr{
                Attr{ .kind = 59, .n = 5 }, // dotted violet
                Attr{ .kind = 194, .n = 3 }, // bright red
                Attr{ .kind = 396, .n = 2 }, // faded crimson
                Attr{ .kind = 397, .n = 5 }, // mirrored turquoise
            },
        },
        Rule{
            .kind = 320, // muted tan
            .attrs = &[_]Attr{
                Attr{ .kind = 114, .n = 2 }, // dim plum
                Attr{ .kind = 304, .n = 4 }, // plaid indigo
                Attr{ .kind = 321, .n = 2 }, // clear yellow
                Attr{ .kind = 322, .n = 2 }, // dotted crimson
            },
        },
        Rule{
            .kind = 321, // clear yellow
            .attrs = &[_]Attr{
                Attr{ .kind = 28, .n = 2 }, // clear orange
            },
        },
        Rule{
            .kind = 322, // dotted crimson
            .attrs = &[_]Attr{
                Attr{ .kind = 11, .n = 3 }, // striped gold
                Attr{ .kind = 377, .n = 3 }, // dark yellow
            },
        },
        Rule{
            .kind = 323, // dull beige
            .attrs = &[_]Attr{
                Attr{ .kind = 70, .n = 1 }, // striped brown
                Attr{ .kind = 79, .n = 3 }, // posh yellow
                Attr{ .kind = 93, .n = 4 }, // wavy green
                Attr{ .kind = 324, .n = 3 }, // posh cyan
            },
        },
        Rule{
            .kind = 324, // posh cyan
            .attrs = &[_]Attr{
                Attr{ .kind = 233, .n = 5 }, // dark coral
                Attr{ .kind = 237, .n = 1 }, // faded yellow
            },
        },
        Rule{
            .kind = 325, // drab red
            .attrs = &[_]Attr{
                Attr{ .kind = 87, .n = 2 }, // posh brown
                Attr{ .kind = 278, .n = 2 }, // wavy lime
            },
        },
        Rule{
            .kind = 326, // drab gray
            .attrs = &[_]Attr{
                Attr{ .kind = 133, .n = 1 }, // mirrored yellow
                Attr{ .kind = 327, .n = 2 }, // plaid turquoise
            },
        },
        Rule{
            .kind = 327, // plaid turquoise
            .attrs = &[_]Attr{
                Attr{ .kind = 92, .n = 5 }, // muted tomato
                Attr{ .kind = 347, .n = 1 }, // bright purple
            },
        },
        Rule{
            .kind = 328, // muted red
            .attrs = &[_]Attr{
                Attr{ .kind = 80, .n = 5 }, // dull plum
                Attr{ .kind = 135, .n = 1 }, // shiny silver
                Attr{ .kind = 329, .n = 2 }, // pale coral
            },
        },
        Rule{
            .kind = 329, // pale coral
            .attrs = &[_]Attr{
                Attr{ .kind = 49, .n = 4 }, // dotted red
                Attr{ .kind = 131, .n = 1 }, // plaid salmon
            },
        },
        Rule{
            .kind = 330, // drab green
            .attrs = &[_]Attr{
                Attr{ .kind = 100, .n = 5 }, // clear blue
                Attr{ .kind = 162, .n = 4 }, // shiny brown
                Attr{ .kind = 232, .n = 3 }, // striped yellow
            },
        },
        Rule{
            .kind = 331, // dim gray
            .attrs = &[_]Attr{
                Attr{ .kind = 114, .n = 1 }, // dim plum
                Attr{ .kind = 246, .n = 5 }, // wavy maroon
                Attr{ .kind = 332, .n = 3 }, // light tomato
            },
        },
        Rule{
            .kind = 332, // light tomato
            .attrs = &[_]Attr{
                Attr{ .kind = 75, .n = 4 }, // dark maroon
                Attr{ .kind = 124, .n = 2 }, // pale red
                Attr{ .kind = 127, .n = 4 }, // dark red
            },
        },
        Rule{
            .kind = 333, // dark white
            .attrs = &[_]Attr{
                Attr{ .kind = 283, .n = 3 }, // light brown
            },
        },
        Rule{
            .kind = 334, // pale maroon
            .attrs = &[_]Attr{
                Attr{ .kind = 33, .n = 2 }, // clear gray
                Attr{ .kind = 125, .n = 4 }, // light turquoise
                Attr{ .kind = 143, .n = 5 }, // vibrant bronze
                Attr{ .kind = 438, .n = 4 }, // bright tan
            },
        },
        Rule{
            .kind = 335, // striped crimson
            .attrs = &[_]Attr{
                Attr{ .kind = 318, .n = 5 }, // light coral
            },
        },
        Rule{
            .kind = 336, // vibrant gold
            .attrs = &[_]Attr{
                Attr{ .kind = 40, .n = 4 }, // dull orange
                Attr{ .kind = 51, .n = 2 }, // striped fuchsia
                Attr{ .kind = 144, .n = 2 }, // striped blue
            },
        },
        Rule{
            .kind = 337, // muted lime
            .attrs = &[_]Attr{
                Attr{ .kind = 102, .n = 1 }, // muted beige
                Attr{ .kind = 338, .n = 4 }, // drab cyan
            },
        },
        Rule{
            .kind = 338, // drab cyan
            .attrs = &[_]Attr{
                Attr{ .kind = 96, .n = 5 }, // wavy red
                Attr{ .kind = 100, .n = 5 }, // clear blue
                Attr{ .kind = 438, .n = 4 }, // bright tan
            },
        },
        Rule{
            .kind = 339, // drab purple
            .attrs = &[_]Attr{
                Attr{ .kind = 340, .n = 4 }, // dotted gold
            },
        },
        Rule{
            .kind = 340, // dotted gold
            .attrs = &[_]Attr{
                Attr{ .kind = 61, .n = 1 }, // wavy yellow
                Attr{ .kind = 103, .n = 4 }, // dark olive
            },
        },
        Rule{
            .kind = 341, // dotted green
            .attrs = &[_]Attr{
                Attr{ .kind = 342, .n = 1 }, // wavy blue
            },
        },
        Rule{
            .kind = 342, // wavy blue
            .attrs = &[_]Attr{
                Attr{ .kind = 61, .n = 4 }, // wavy yellow
            },
        },
        Rule{
            .kind = 343, // bright black
            .attrs = &[_]Attr{
                Attr{ .kind = 186, .n = 1 }, // clear purple
                Attr{ .kind = 282, .n = 4 }, // wavy chartreuse
            },
        },
        Rule{
            .kind = 344, // bright chartreuse
            .attrs = &[_]Attr{},
        },
        Rule{
            .kind = 345, // dim purple
            .attrs = &[_]Attr{
                Attr{ .kind = 66, .n = 3 }, // bright aqua
                Attr{ .kind = 101, .n = 4 }, // mirrored fuchsia
                Attr{ .kind = 299, .n = 5 }, // posh tomato
                Attr{ .kind = 346, .n = 2 }, // faded lavender
            },
        },
        Rule{
            .kind = 346, // faded lavender
            .attrs = &[_]Attr{
                Attr{ .kind = 128, .n = 5 }, // shiny lime
            },
        },
        Rule{
            .kind = 347, // bright purple
            .attrs = &[_]Attr{
                Attr{ .kind = 103, .n = 1 }, // dark olive
                Attr{ .kind = 210, .n = 1 }, // faded violet
                Attr{ .kind = 403, .n = 4 }, // mirrored cyan
            },
        },
        Rule{
            .kind = 348, // pale fuchsia
            .attrs = &[_]Attr{
                Attr{ .kind = 349, .n = 2 }, // dark magenta
            },
        },
        Rule{
            .kind = 349, // dark magenta
            .attrs = &[_]Attr{
                Attr{ .kind = 125, .n = 1 }, // light turquoise
                Attr{ .kind = 410, .n = 4 }, // plaid brown
            },
        },
        Rule{
            .kind = 350, // bright salmon
            .attrs = &[_]Attr{
                Attr{ .kind = 106, .n = 4 }, // wavy beige
                Attr{ .kind = 351, .n = 2 }, // vibrant coral
                Attr{ .kind = 352, .n = 3 }, // bright gray
                Attr{ .kind = 353, .n = 1 }, // faded green
            },
        },
        Rule{
            .kind = 351, // vibrant coral
            .attrs = &[_]Attr{
                Attr{ .kind = 22, .n = 1 }, // striped orange
                Attr{ .kind = 47, .n = 3 }, // shiny turquoise
            },
        },
        Rule{
            .kind = 352, // bright gray
            .attrs = &[_]Attr{
                Attr{ .kind = 59, .n = 3 }, // dotted violet
                Attr{ .kind = 95, .n = 1 }, // dull purple
                Attr{ .kind = 192, .n = 2 }, // dull chartreuse
            },
        },
        Rule{
            .kind = 353, // faded green
            .attrs = &[_]Attr{
                Attr{ .kind = 177, .n = 1 }, // posh white
                Attr{ .kind = 322, .n = 1 }, // dotted crimson
            },
        },
        Rule{
            .kind = 354, // bright magenta
            .attrs = &[_]Attr{
                Attr{ .kind = 51, .n = 1 }, // striped fuchsia
                Attr{ .kind = 191, .n = 1 }, // mirrored maroon
                Attr{ .kind = 355, .n = 3 }, // vibrant crimson
            },
        },
        Rule{
            .kind = 355, // vibrant crimson
            .attrs = &[_]Attr{
                Attr{ .kind = 99, .n = 4 }, // vibrant orange
                Attr{ .kind = 449, .n = 4 }, // shiny plum
            },
        },
        Rule{
            .kind = 356, // striped red
            .attrs = &[_]Attr{
                Attr{ .kind = 233, .n = 3 }, // dark coral
                Attr{ .kind = 289, .n = 3 }, // plaid black
                Attr{ .kind = 357, .n = 4 }, // vibrant indigo
            },
        },
        Rule{
            .kind = 357, // vibrant indigo
            .attrs = &[_]Attr{
                Attr{ .kind = 23, .n = 3 }, // bright fuchsia
                Attr{ .kind = 66, .n = 3 }, // bright aqua
                Attr{ .kind = 140, .n = 2 }, // muted gold
                Attr{ .kind = 194, .n = 1 }, // bright red
            },
        },
        Rule{
            .kind = 358, // shiny purple
            .attrs = &[_]Attr{
                Attr{ .kind = 75, .n = 5 }, // dark maroon
                Attr{ .kind = 100, .n = 1 }, // clear blue
                Attr{ .kind = 141, .n = 4 }, // striped chartreuse
            },
        },
        Rule{
            .kind = 359, // muted gray
            .attrs = &[_]Attr{
                Attr{ .kind = 62, .n = 4 }, // plaid red
                Attr{ .kind = 351, .n = 3 }, // vibrant coral
                Attr{ .kind = 360, .n = 4 }, // dark teal
            },
        },
        Rule{
            .kind = 360, // dark teal
            .attrs = &[_]Attr{
                Attr{ .kind = 47, .n = 4 }, // shiny turquoise
                Attr{ .kind = 353, .n = 5 }, // faded green
            },
        },
        Rule{
            .kind = 361, // faded indigo
            .attrs = &[_]Attr{
                Attr{ .kind = 526, .n = 1 }, // dull brown
            },
        },
        Rule{
            .kind = 362, // mirrored orange
            .attrs = &[_]Attr{
                Attr{ .kind = 92, .n = 4 }, // muted tomato
            },
        },
        Rule{
            .kind = 363, // clear red
            .attrs = &[_]Attr{
                Attr{ .kind = 41, .n = 3 }, // plaid tomato
                Attr{ .kind = 364, .n = 2 }, // dark violet
            },
        },
        Rule{
            .kind = 364, // dark violet
            .attrs = &[_]Attr{
                Attr{ .kind = 11, .n = 3 }, // striped gold
                Attr{ .kind = 143, .n = 1 }, // vibrant bronze
                Attr{ .kind = 194, .n = 4 }, // bright red
            },
        },
        Rule{
            .kind = 365, // striped purple
            .attrs = &[_]Attr{
                Attr{ .kind = 250, .n = 3 }, // posh lavender
            },
        },
        Rule{
            .kind = 366, // plaid violet
            .attrs = &[_]Attr{
                Attr{ .kind = 367, .n = 5 }, // mirrored gold
            },
        },
        Rule{
            .kind = 367, // mirrored gold
            .attrs = &[_]Attr{
                Attr{ .kind = 145, .n = 2 }, // dark orange
            },
        },
        Rule{
            .kind = 368, // shiny crimson
            .attrs = &[_]Attr{
                Attr{ .kind = 343, .n = 4 }, // bright black
                Attr{ .kind = 369, .n = 2 }, // wavy purple
                Attr{ .kind = 370, .n = 1 }, // dark crimson
            },
        },
        Rule{
            .kind = 369, // wavy purple
            .attrs = &[_]Attr{
                Attr{ .kind = 15, .n = 3 }, // faded olive
                Attr{ .kind = 115, .n = 5 }, // dim gold
                Attr{ .kind = 395, .n = 2 }, // vibrant brown
                Attr{ .kind = 526, .n = 1 }, // dull brown
            },
        },
        Rule{
            .kind = 370, // dark crimson
            .attrs = &[_]Attr{
                Attr{ .kind = 201, .n = 2 }, // vibrant black
                Attr{ .kind = 259, .n = 4 }, // clear violet
                Attr{ .kind = 357, .n = 2 }, // vibrant indigo
            },
        },
        Rule{
            .kind = 371, // posh gold
            .attrs = &[_]Attr{
                Attr{ .kind = 372, .n = 4 }, // dull yellow
            },
        },
        Rule{
            .kind = 372, // dull yellow
            .attrs = &[_]Attr{
                Attr{ .kind = 135, .n = 4 }, // shiny silver
                Attr{ .kind = 208, .n = 1 }, // mirrored lavender
                Attr{ .kind = 298, .n = 2 }, // dull lavender
                Attr{ .kind = 442, .n = 2 }, // posh maroon
            },
        },
        Rule{
            .kind = 373, // dim crimson
            .attrs = &[_]Attr{
                Attr{ .kind = 374, .n = 3 }, // drab white
            },
        },
        Rule{
            .kind = 374, // drab white
            .attrs = &[_]Attr{
                Attr{ .kind = 213, .n = 5 }, // shiny yellow
            },
        },
        Rule{
            .kind = 375, // posh red
            .attrs = &[_]Attr{
                Attr{ .kind = 277, .n = 3 }, // dull green
                Attr{ .kind = 356, .n = 1 }, // striped red
            },
        },
        Rule{
            .kind = 376, // drab turquoise
            .attrs = &[_]Attr{
                Attr{ .kind = 40, .n = 3 }, // dull orange
                Attr{ .kind = 265, .n = 5 }, // clear beige
                Attr{ .kind = 295, .n = 3 }, // shiny green
                Attr{ .kind = 377, .n = 5 }, // dark yellow
            },
        },
        Rule{
            .kind = 377, // dark yellow
            .attrs = &[_]Attr{
                Attr{ .kind = 110, .n = 3 }, // dull lime
                Attr{ .kind = 152, .n = 4 }, // drab beige
                Attr{ .kind = 182, .n = 4 }, // shiny gold
                Attr{ .kind = 410, .n = 1 }, // plaid brown
            },
        },
        Rule{
            .kind = 378, // light bronze
            .attrs = &[_]Attr{
                Attr{ .kind = 183, .n = 1 }, // dim orange
                Attr{ .kind = 193, .n = 2 }, // pale salmon
                Attr{ .kind = 230, .n = 3 }, // plaid magenta
                Attr{ .kind = 379, .n = 2 }, // vibrant blue
            },
        },
        Rule{
            .kind = 379, // vibrant blue
            .attrs = &[_]Attr{
                Attr{ .kind = 148, .n = 2 }, // drab silver
                Attr{ .kind = 213, .n = 5 }, // shiny yellow
                Attr{ .kind = 291, .n = 1 }, // faded lime
                Attr{ .kind = 412, .n = 1 }, // faded black
            },
        },
        Rule{
            .kind = 380, // dotted cyan
            .attrs = &[_]Attr{
                Attr{ .kind = 381, .n = 1 }, // faded purple
                Attr{ .kind = 382, .n = 4 }, // drab crimson
            },
        },
        Rule{
            .kind = 381, // faded purple
            .attrs = &[_]Attr{
                Attr{ .kind = 106, .n = 3 }, // wavy beige
                Attr{ .kind = 135, .n = 5 }, // shiny silver
            },
        },
        Rule{
            .kind = 382, // drab crimson
            .attrs = &[_]Attr{
                Attr{ .kind = 123, .n = 1 }, // light tan
                Attr{ .kind = 277, .n = 3 }, // dull green
                Attr{ .kind = 342, .n = 1 }, // wavy blue
            },
        },
        Rule{
            .kind = 383, // drab fuchsia
            .attrs = &[_]Attr{
                Attr{ .kind = 131, .n = 4 }, // plaid salmon
            },
        },
        Rule{
            .kind = 384, // clear maroon
            .attrs = &[_]Attr{
                Attr{ .kind = 103, .n = 1 }, // dark olive
                Attr{ .kind = 385, .n = 4 }, // dotted white
                Attr{ .kind = 386, .n = 1 }, // dull red
            },
        },
        Rule{
            .kind = 385, // dotted white
            .attrs = &[_]Attr{
                Attr{ .kind = 87, .n = 2 }, // posh brown
            },
        },
        Rule{
            .kind = 386, // dull red
            .attrs = &[_]Attr{
                Attr{ .kind = 91, .n = 4 }, // mirrored plum
                Attr{ .kind = 342, .n = 5 }, // wavy blue
                Attr{ .kind = 387, .n = 3 }, // light green
                Attr{ .kind = 554, .n = 3 }, // mirrored purple
            },
        },
        Rule{
            .kind = 387, // light green
            .attrs = &[_]Attr{
                Attr{ .kind = 308, .n = 5 }, // vibrant maroon
                Attr{ .kind = 402, .n = 3 }, // muted indigo
            },
        },
        Rule{
            .kind = 388, // wavy aqua
            .attrs = &[_]Attr{
                Attr{ .kind = 179, .n = 4 }, // plaid crimson
                Attr{ .kind = 389, .n = 5 }, // dull tan
            },
        },
        Rule{
            .kind = 389, // dull tan
            .attrs = &[_]Attr{
                Attr{ .kind = 143, .n = 1 }, // vibrant bronze
                Attr{ .kind = 322, .n = 3 }, // dotted crimson
                Attr{ .kind = 374, .n = 1 }, // drab white
            },
        },
        Rule{
            .kind = 390, // pale beige
            .attrs = &[_]Attr{
                Attr{ .kind = 113, .n = 5 }, // striped beige
                Attr{ .kind = 346, .n = 2 }, // faded lavender
                Attr{ .kind = 391, .n = 1 }, // light teal
            },
        },
        Rule{
            .kind = 391, // light teal
            .attrs = &[_]Attr{
                Attr{ .kind = 196, .n = 5 }, // dark lavender
            },
        },
        Rule{
            .kind = 392, // light aqua
            .attrs = &[_]Attr{
                Attr{ .kind = 237, .n = 3 }, // faded yellow
            },
        },
        Rule{
            .kind = 393, // dim tan
            .attrs = &[_]Attr{
                Attr{ .kind = 277, .n = 1 }, // dull green
                Attr{ .kind = 333, .n = 5 }, // dark white
                Attr{ .kind = 394, .n = 5 }, // light orange
            },
        },
        Rule{
            .kind = 394, // light orange
            .attrs = &[_]Attr{
                Attr{ .kind = 115, .n = 1 }, // dim gold
                Attr{ .kind = 446, .n = 2 }, // dark gold
            },
        },
        Rule{
            .kind = 395, // vibrant brown
            .attrs = &[_]Attr{
                Attr{ .kind = 41, .n = 2 }, // plaid tomato
            },
        },
        Rule{
            .kind = 396, // faded crimson
            .attrs = &[_]Attr{
                Attr{ .kind = 153, .n = 5 }, // bright maroon
            },
        },
        Rule{
            .kind = 397, // mirrored turquoise
            .attrs = &[_]Attr{
                Attr{ .kind = 25, .n = 4 }, // dark silver
                Attr{ .kind = 77, .n = 4 }, // bright cyan
                Attr{ .kind = 125, .n = 1 }, // light turquoise
                Attr{ .kind = 318, .n = 3 }, // light coral
            },
        },
        Rule{
            .kind = 398, // faded tomato
            .attrs = &[_]Attr{
                Attr{ .kind = 106, .n = 2 }, // wavy beige
            },
        },
        Rule{
            .kind = 399, // wavy black
            .attrs = &[_]Attr{
                Attr{ .kind = 363, .n = 3 }, // clear red
                Attr{ .kind = 400, .n = 3 }, // dark cyan
            },
        },
        Rule{
            .kind = 400, // dark cyan
            .attrs = &[_]Attr{
                Attr{ .kind = 264, .n = 4 }, // faded beige
            },
        },
        Rule{
            .kind = 401, // dim brown
            .attrs = &[_]Attr{
                Attr{ .kind = 236, .n = 4 }, // faded teal
            },
        },
        Rule{
            .kind = 402, // muted indigo
            .attrs = &[_]Attr{
                Attr{ .kind = 8, .n = 5 }, // faded salmon
                Attr{ .kind = 91, .n = 1 }, // mirrored plum
                Attr{ .kind = 275, .n = 5 }, // pale gray
            },
        },
        Rule{
            .kind = 403, // mirrored cyan
            .attrs = &[_]Attr{
                Attr{ .kind = 23, .n = 3 }, // bright fuchsia
                Attr{ .kind = 68, .n = 4 }, // striped tan
                Attr{ .kind = 236, .n = 5 }, // faded teal
                Attr{ .kind = 251, .n = 3 }, // striped bronze
            },
        },
        Rule{
            .kind = 404, // vibrant tan
            .attrs = &[_]Attr{
                Attr{ .kind = 234, .n = 1 }, // dim silver
                Attr{ .kind = 405, .n = 2 }, // clear white
            },
        },
        Rule{
            .kind = 405, // clear white
            .attrs = &[_]Attr{
                Attr{ .kind = 15, .n = 4 }, // faded olive
            },
        },
        Rule{
            .kind = 406, // shiny white
            .attrs = &[_]Attr{
                Attr{ .kind = 0, .n = 1 }, // drab tan
                Attr{ .kind = 3, .n = 2 }, // faded gold
                Attr{ .kind = 224, .n = 1 }, // dotted bronze
            },
        },
        Rule{
            .kind = 407, // drab orange
            .attrs = &[_]Attr{
                Attr{ .kind = 193, .n = 3 }, // pale salmon
                Attr{ .kind = 310, .n = 3 }, // bright indigo
            },
        },
        Rule{
            .kind = 408, // striped green
            .attrs = &[_]Attr{
                Attr{ .kind = 249, .n = 2 }, // bright tomato
                Attr{ .kind = 334, .n = 4 }, // pale maroon
                Attr{ .kind = 409, .n = 4 }, // muted brown
            },
        },
        Rule{
            .kind = 409, // muted brown
            .attrs = &[_]Attr{
                Attr{ .kind = 196, .n = 2 }, // dark lavender
                Attr{ .kind = 300, .n = 2 }, // dim chartreuse
            },
        },
        Rule{
            .kind = 410, // plaid brown
            .attrs = &[_]Attr{
                Attr{ .kind = 68, .n = 5 }, // striped tan
                Attr{ .kind = 75, .n = 2 }, // dark maroon
                Attr{ .kind = 110, .n = 3 }, // dull lime
                Attr{ .kind = 300, .n = 4 }, // dim chartreuse
            },
        },
        Rule{
            .kind = 411, // drab yellow
            .attrs = &[_]Attr{
                Attr{ .kind = 91, .n = 1 }, // mirrored plum
                Attr{ .kind = 256, .n = 1 }, // plaid green
                Attr{ .kind = 412, .n = 5 }, // faded black
            },
        },
        Rule{
            .kind = 412, // faded black
            .attrs = &[_]Attr{
                Attr{ .kind = 279, .n = 1 }, // faded aqua
                Attr{ .kind = 352, .n = 3 }, // bright gray
            },
        },
        Rule{
            .kind = 413, // muted yellow
            .attrs = &[_]Attr{
                Attr{ .kind = 25, .n = 3 }, // dark silver
                Attr{ .kind = 125, .n = 4 }, // light turquoise
                Attr{ .kind = 128, .n = 2 }, // shiny lime
                Attr{ .kind = 235, .n = 2 }, // striped white
            },
        },
        Rule{
            .kind = 414, // dark aqua
            .attrs = &[_]Attr{
                Attr{ .kind = 415, .n = 4 }, // dull blue
                Attr{ .kind = 416, .n = 5 }, // mirrored white
            },
        },
        Rule{
            .kind = 415, // dull blue
            .attrs = &[_]Attr{
                Attr{ .kind = 32, .n = 1 }, // dotted silver
                Attr{ .kind = 45, .n = 3 }, // muted salmon
                Attr{ .kind = 236, .n = 2 }, // faded teal
                Attr{ .kind = 522, .n = 2 }, // vibrant beige
            },
        },
        Rule{
            .kind = 416, // mirrored white
            .attrs = &[_]Attr{
                Attr{ .kind = 64, .n = 4 }, // bright brown
                Attr{ .kind = 435, .n = 2 }, // striped silver
            },
        },
        Rule{
            .kind = 417, // muted blue
            .attrs = &[_]Attr{
                Attr{ .kind = 101, .n = 3 }, // mirrored fuchsia
            },
        },
        Rule{
            .kind = 418, // muted coral
            .attrs = &[_]Attr{
                Attr{ .kind = 58, .n = 2 }, // wavy crimson
                Attr{ .kind = 302, .n = 5 }, // posh magenta
                Attr{ .kind = 395, .n = 4 }, // vibrant brown
                Attr{ .kind = 419, .n = 1 }, // pale plum
            },
        },
        Rule{
            .kind = 419, // pale plum
            .attrs = &[_]Attr{
                Attr{ .kind = 0, .n = 1 }, // drab tan
                Attr{ .kind = 179, .n = 3 }, // plaid crimson
                Attr{ .kind = 245, .n = 5 }, // mirrored teal
            },
        },
        Rule{
            .kind = 420, // muted green
            .attrs = &[_]Attr{
                Attr{ .kind = 109, .n = 4 }, // pale crimson
                Attr{ .kind = 159, .n = 4 }, // shiny gray
                Attr{ .kind = 232, .n = 4 }, // striped yellow
                Attr{ .kind = 350, .n = 1 }, // bright salmon
            },
        },
        Rule{
            .kind = 421, // dim violet
            .attrs = &[_]Attr{
                Attr{ .kind = 204, .n = 3 }, // dull violet
                Attr{ .kind = 422, .n = 4 }, // faded tan
                Attr{ .kind = 423, .n = 1 }, // light yellow
            },
        },
        Rule{
            .kind = 422, // faded tan
            .attrs = &[_]Attr{
                Attr{ .kind = 77, .n = 3 }, // bright cyan
                Attr{ .kind = 152, .n = 4 }, // drab beige
                Attr{ .kind = 200, .n = 3 }, // striped turquoise
                Attr{ .kind = 276, .n = 1 }, // wavy tomato
            },
        },
        Rule{
            .kind = 423, // light yellow
            .attrs = &[_]Attr{
                Attr{ .kind = 1, .n = 4 }, // clear gold
                Attr{ .kind = 49, .n = 1 }, // dotted red
                Attr{ .kind = 110, .n = 3 }, // dull lime
                Attr{ .kind = 510, .n = 3 }, // pale turquoise
            },
        },
        Rule{
            .kind = 424, // clear fuchsia
            .attrs = &[_]Attr{
                Attr{ .kind = 197, .n = 2 }, // drab plum
            },
        },
        Rule{
            .kind = 425, // posh violet
            .attrs = &[_]Attr{
                Attr{ .kind = 192, .n = 5 }, // dull chartreuse
                Attr{ .kind = 318, .n = 2 }, // light coral
                Attr{ .kind = 403, .n = 5 }, // mirrored cyan
            },
        },
        Rule{
            .kind = 426, // dotted fuchsia
            .attrs = &[_]Attr{
                Attr{ .kind = 111, .n = 3 }, // wavy silver
                Attr{ .kind = 335, .n = 5 }, // striped crimson
                Attr{ .kind = 404, .n = 2 }, // vibrant tan
            },
        },
        Rule{
            .kind = 427, // dotted plum
            .attrs = &[_]Attr{
                Attr{ .kind = 54, .n = 2 }, // light gray
                Attr{ .kind = 175, .n = 2 }, // pale tomato
                Attr{ .kind = 296, .n = 5 }, // dull crimson
                Attr{ .kind = 428, .n = 2 }, // posh green
            },
        },
        Rule{
            .kind = 428, // posh green
            .attrs = &[_]Attr{
                Attr{ .kind = 26, .n = 5 }, // dim maroon
                Attr{ .kind = 208, .n = 5 }, // mirrored lavender
                Attr{ .kind = 311, .n = 1 }, // wavy lavender
                Attr{ .kind = 462, .n = 2 }, // faded gray
            },
        },
        Rule{
            .kind = 429, // vibrant magenta
            .attrs = &[_]Attr{
                Attr{ .kind = 268, .n = 4 }, // dotted beige
            },
        },
        Rule{
            .kind = 430, // drab maroon
            .attrs = &[_]Attr{
                Attr{ .kind = 116, .n = 1 }, // dull cyan
                Attr{ .kind = 431, .n = 1 }, // drab coral
                Attr{ .kind = 432, .n = 1 }, // dotted tan
            },
        },
        Rule{
            .kind = 431, // drab coral
            .attrs = &[_]Attr{
                Attr{ .kind = 11, .n = 4 }, // striped gold
                Attr{ .kind = 200, .n = 5 }, // striped turquoise
                Attr{ .kind = 397, .n = 4 }, // mirrored turquoise
                Attr{ .kind = 435, .n = 5 }, // striped silver
            },
        },
        Rule{
            .kind = 432, // dotted tan
            .attrs = &[_]Attr{
                Attr{ .kind = 48, .n = 1 }, // muted purple
                Attr{ .kind = 89, .n = 3 }, // drab lavender
                Attr{ .kind = 312, .n = 1 }, // dark bronze
                Attr{ .kind = 357, .n = 5 }, // vibrant indigo
            },
        },
        Rule{
            .kind = 433, // striped cyan
            .attrs = &[_]Attr{
                Attr{ .kind = 182, .n = 4 }, // shiny gold
                Attr{ .kind = 335, .n = 5 }, // striped crimson
                Attr{ .kind = 356, .n = 5 }, // striped red
            },
        },
        Rule{
            .kind = 434, // pale silver
            .attrs = &[_]Attr{
                Attr{ .kind = 274, .n = 5 }, // vibrant red
                Attr{ .kind = 363, .n = 4 }, // clear red
            },
        },
        Rule{
            .kind = 435, // striped silver
            .attrs = &[_]Attr{
                Attr{ .kind = 83, .n = 5 }, // posh fuchsia
                Attr{ .kind = 170, .n = 4 }, // faded cyan
            },
        },
        Rule{
            .kind = 436, // vibrant chartreuse
            .attrs = &[_]Attr{
                Attr{ .kind = 135, .n = 1 }, // shiny silver
                Attr{ .kind = 292, .n = 5 }, // striped gray
                Attr{ .kind = 437, .n = 1 }, // bright turquoise
            },
        },
        Rule{
            .kind = 437, // bright turquoise
            .attrs = &[_]Attr{
                Attr{ .kind = 166, .n = 5 }, // drab bronze
            },
        },
        Rule{
            .kind = 438, // bright tan
            .attrs = &[_]Attr{
                Attr{ .kind = 100, .n = 5 }, // clear blue
                Attr{ .kind = 127, .n = 2 }, // dark red
                Attr{ .kind = 153, .n = 3 }, // bright maroon
            },
        },
        Rule{
            .kind = 439, // mirrored green
            .attrs = &[_]Attr{
                Attr{ .kind = 96, .n = 5 }, // wavy red
                Attr{ .kind = 127, .n = 4 }, // dark red
                Attr{ .kind = 235, .n = 1 }, // striped white
                Attr{ .kind = 264, .n = 3 }, // faded beige
            },
        },
        Rule{
            .kind = 440, // dim white
            .attrs = &[_]Attr{
                Attr{ .kind = 11, .n = 3 }, // striped gold
                Attr{ .kind = 113, .n = 4 }, // striped beige
                Attr{ .kind = 417, .n = 2 }, // muted blue
                Attr{ .kind = 441, .n = 4 }, // muted white
            },
        },
        Rule{
            .kind = 441, // muted white
            .attrs = &[_]Attr{
                Attr{ .kind = 51, .n = 4 }, // striped fuchsia
            },
        },
        Rule{
            .kind = 442, // posh maroon
            .attrs = &[_]Attr{
                Attr{ .kind = 49, .n = 2 }, // dotted red
                Attr{ .kind = 322, .n = 5 }, // dotted crimson
            },
        },
        Rule{
            .kind = 443, // posh chartreuse
            .attrs = &[_]Attr{
                Attr{ .kind = 47, .n = 4 }, // shiny turquoise
                Attr{ .kind = 98, .n = 5 }, // light maroon
                Attr{ .kind = 134, .n = 5 }, // posh gray
                Attr{ .kind = 209, .n = 2 }, // mirrored blue
            },
        },
        Rule{
            .kind = 444, // pale lavender
            .attrs = &[_]Attr{
                Attr{ .kind = 10, .n = 1 }, // dull gray
                Attr{ .kind = 139, .n = 3 }, // posh silver
                Attr{ .kind = 414, .n = 3 }, // dark aqua
            },
        },
        Rule{
            .kind = 445, // light blue
            .attrs = &[_]Attr{
                Attr{ .kind = 101, .n = 2 }, // mirrored fuchsia
                Attr{ .kind = 139, .n = 1 }, // posh silver
                Attr{ .kind = 165, .n = 3 }, // pale tan
                Attr{ .kind = 430, .n = 4 }, // drab maroon
            },
        },
        Rule{
            .kind = 446, // dark gold
            .attrs = &[_]Attr{
                Attr{ .kind = 26, .n = 2 }, // dim maroon
                Attr{ .kind = 151, .n = 4 }, // mirrored olive
                Attr{ .kind = 174, .n = 1 }, // posh olive
                Attr{ .kind = 487, .n = 1 }, // muted turquoise
            },
        },
        Rule{
            .kind = 447, // shiny fuchsia
            .attrs = &[_]Attr{
                Attr{ .kind = 327, .n = 1 }, // plaid turquoise
                Attr{ .kind = 448, .n = 5 }, // muted orange
                Attr{ .kind = 449, .n = 2 }, // shiny plum
            },
        },
        Rule{
            .kind = 448, // muted orange
            .attrs = &[_]Attr{
                Attr{ .kind = 305, .n = 5 }, // dull fuchsia
            },
        },
        Rule{
            .kind = 449, // shiny plum
            .attrs = &[_]Attr{
                Attr{ .kind = 314, .n = 3 }, // dull tomato
            },
        },
        Rule{
            .kind = 450, // posh blue
            .attrs = &[_]Attr{
                Attr{ .kind = 302, .n = 5 }, // posh magenta
                Attr{ .kind = 451, .n = 1 }, // wavy magenta
            },
        },
        Rule{
            .kind = 451, // wavy magenta
            .attrs = &[_]Attr{
                Attr{ .kind = 64, .n = 5 }, // bright brown
                Attr{ .kind = 68, .n = 5 }, // striped tan
                Attr{ .kind = 402, .n = 1 }, // muted indigo
            },
        },
        Rule{
            .kind = 452, // striped salmon
            .attrs = &[_]Attr{
                Attr{ .kind = 178, .n = 5 }, // shiny coral
                Attr{ .kind = 184, .n = 1 }, // dark tomato
                Attr{ .kind = 453, .n = 5 }, // plaid silver
            },
        },
        Rule{
            .kind = 453, // plaid silver
            .attrs = &[_]Attr{
                Attr{ .kind = 93, .n = 2 }, // wavy green
                Attr{ .kind = 173, .n = 2 }, // light gold
                Attr{ .kind = 324, .n = 4 }, // posh cyan
            },
        },
        Rule{
            .kind = 454, // dim bronze
            .attrs = &[_]Attr{
                Attr{ .kind = 298, .n = 4 }, // dull lavender
            },
        },
        Rule{
            .kind = 455, // dim tomato
            .attrs = &[_]Attr{
                Attr{ .kind = 169, .n = 5 }, // dim beige
                Attr{ .kind = 456, .n = 5 }, // wavy indigo
                Attr{ .kind = 457, .n = 3 }, // wavy gold
            },
        },
        Rule{
            .kind = 456, // wavy indigo
            .attrs = &[_]Attr{
                Attr{ .kind = 104, .n = 1 }, // clear tan
                Attr{ .kind = 181, .n = 5 }, // vibrant green
            },
        },
        Rule{
            .kind = 457, // wavy gold
            .attrs = &[_]Attr{
                Attr{ .kind = 49, .n = 4 }, // dotted red
                Attr{ .kind = 197, .n = 3 }, // drab plum
                Attr{ .kind = 347, .n = 4 }, // bright purple
                Attr{ .kind = 496, .n = 5 }, // faded red
            },
        },
        Rule{
            .kind = 458, // vibrant white
            .attrs = &[_]Attr{
                Attr{ .kind = 139, .n = 2 }, // posh silver
                Attr{ .kind = 316, .n = 5 }, // dull maroon
                Attr{ .kind = 459, .n = 5 }, // dim magenta
            },
        },
        Rule{
            .kind = 459, // dim magenta
            .attrs = &[_]Attr{
                Attr{ .kind = 145, .n = 1 }, // dark orange
                Attr{ .kind = 514, .n = 2 }, // dark salmon
            },
        },
        Rule{
            .kind = 460, // dark blue
            .attrs = &[_]Attr{
                Attr{ .kind = 59, .n = 4 }, // dotted violet
                Attr{ .kind = 194, .n = 4 }, // bright red
                Attr{ .kind = 408, .n = 4 }, // striped green
            },
        },
        Rule{
            .kind = 461, // plaid gray
            .attrs = &[_]Attr{
                Attr{ .kind = 90, .n = 3 }, // dark brown
                Attr{ .kind = 462, .n = 4 }, // faded gray
            },
        },
        Rule{
            .kind = 462, // faded gray
            .attrs = &[_]Attr{
                Attr{ .kind = 66, .n = 1 }, // bright aqua
                Attr{ .kind = 114, .n = 5 }, // dim plum
            },
        },
        Rule{
            .kind = 463, // faded maroon
            .attrs = &[_]Attr{
                Attr{ .kind = 33, .n = 5 }, // clear gray
                Attr{ .kind = 110, .n = 5 }, // dull lime
                Attr{ .kind = 152, .n = 5 }, // drab beige
                Attr{ .kind = 289, .n = 1 }, // plaid black
            },
        },
        Rule{
            .kind = 464, // clear crimson
            .attrs = &[_]Attr{
                Attr{ .kind = 196, .n = 2 }, // dark lavender
                Attr{ .kind = 465, .n = 4 }, // muted aqua
            },
        },
        Rule{
            .kind = 465, // muted aqua
            .attrs = &[_]Attr{
                Attr{ .kind = 145, .n = 1 }, // dark orange
                Attr{ .kind = 192, .n = 4 }, // dull chartreuse
                Attr{ .kind = 198, .n = 5 }, // vibrant gray
                Attr{ .kind = 546, .n = 3 }, // bright plum
            },
        },
        Rule{
            .kind = 466, // mirrored brown
            .attrs = &[_]Attr{
                Attr{ .kind = 85, .n = 5 }, // striped lavender
                Attr{ .kind = 127, .n = 4 }, // dark red
                Attr{ .kind = 152, .n = 3 }, // drab beige
                Attr{ .kind = 195, .n = 4 }, // faded brown
            },
        },
        Rule{
            .kind = 467, // dotted purple
            .attrs = &[_]Attr{
                Attr{ .kind = 31, .n = 3 }, // shiny indigo
                Attr{ .kind = 135, .n = 5 }, // shiny silver
                Attr{ .kind = 416, .n = 2 }, // mirrored white
            },
        },
        Rule{
            .kind = 468, // dotted indigo
            .attrs = &[_]Attr{
                Attr{ .kind = 192, .n = 3 }, // dull chartreuse
                Attr{ .kind = 332, .n = 2 }, // light tomato
                Attr{ .kind = 352, .n = 3 }, // bright gray
                Attr{ .kind = 421, .n = 4 }, // dim violet
            },
        },
        Rule{
            .kind = 469, // wavy orange
            .attrs = &[_]Attr{
                Attr{ .kind = 145, .n = 5 }, // dark orange
                Attr{ .kind = 470, .n = 4 }, // muted maroon
                Attr{ .kind = 471, .n = 5 }, // clear salmon
            },
        },
        Rule{
            .kind = 470, // muted maroon
            .attrs = &[_]Attr{
                Attr{ .kind = 83, .n = 2 }, // posh fuchsia
                Attr{ .kind = 132, .n = 1 }, // shiny orange
                Attr{ .kind = 197, .n = 1 }, // drab plum
            },
        },
        Rule{
            .kind = 471, // clear salmon
            .attrs = &[_]Attr{
                Attr{ .kind = 528, .n = 3 }, // clear aqua
            },
        },
        Rule{
            .kind = 472, // wavy turquoise
            .attrs = &[_]Attr{
                Attr{ .kind = 140, .n = 4 }, // muted gold
            },
        },
        Rule{
            .kind = 473, // drab salmon
            .attrs = &[_]Attr{
                Attr{ .kind = 253, .n = 4 }, // posh aqua
                Attr{ .kind = 323, .n = 1 }, // dull beige
                Attr{ .kind = 474, .n = 4 }, // dotted yellow
            },
        },
        Rule{
            .kind = 474, // dotted yellow
            .attrs = &[_]Attr{
                Attr{ .kind = 153, .n = 3 }, // bright maroon
                Attr{ .kind = 230, .n = 2 }, // plaid magenta
                Attr{ .kind = 279, .n = 3 }, // faded aqua
                Attr{ .kind = 488, .n = 4 }, // dim lime
            },
        },
        Rule{
            .kind = 475, // mirrored aqua
            .attrs = &[_]Attr{
                Attr{ .kind = 174, .n = 4 }, // posh olive
                Attr{ .kind = 271, .n = 4 }, // drab blue
                Attr{ .kind = 476, .n = 5 }, // shiny bronze
            },
        },
        Rule{
            .kind = 476, // shiny bronze
            .attrs = &[_]Attr{
                Attr{ .kind = 45, .n = 4 }, // muted salmon
                Attr{ .kind = 73, .n = 3 }, // mirrored silver
                Attr{ .kind = 261, .n = 5 }, // plaid lime
                Attr{ .kind = 463, .n = 1 }, // faded maroon
            },
        },
        Rule{
            .kind = 477, // wavy tan
            .attrs = &[_]Attr{
                Attr{ .kind = 93, .n = 2 }, // wavy green
                Attr{ .kind = 195, .n = 5 }, // faded brown
            },
        },
        Rule{
            .kind = 478, // mirrored magenta
            .attrs = &[_]Attr{
                Attr{ .kind = 259, .n = 1 }, // clear violet
                Attr{ .kind = 289, .n = 1 }, // plaid black
            },
        },
        Rule{
            .kind = 479, // mirrored lime
            .attrs = &[_]Attr{
                Attr{ .kind = 262, .n = 5 }, // striped teal
                Attr{ .kind = 270, .n = 1 }, // clear cyan
                Attr{ .kind = 334, .n = 3 }, // pale maroon
            },
        },
        Rule{
            .kind = 480, // clear magenta
            .attrs = &[_]Attr{
                Attr{ .kind = 28, .n = 3 }, // clear orange
                Attr{ .kind = 137, .n = 1 }, // plaid plum
            },
        },
        Rule{
            .kind = 481, // light red
            .attrs = &[_]Attr{
                Attr{ .kind = 91, .n = 5 }, // mirrored plum
                Attr{ .kind = 198, .n = 5 }, // vibrant gray
                Attr{ .kind = 201, .n = 3 }, // vibrant black
            },
        },
        Rule{
            .kind = 482, // light white
            .attrs = &[_]Attr{
                Attr{ .kind = 152, .n = 2 }, // drab beige
            },
        },
        Rule{
            .kind = 483, // vibrant salmon
            .attrs = &[_]Attr{
                Attr{ .kind = 146, .n = 1 }, // faded magenta
                Attr{ .kind = 264, .n = 3 }, // faded beige
            },
        },
        Rule{
            .kind = 484, // dotted magenta
            .attrs = &[_]Attr{
                Attr{ .kind = 240, .n = 2 }, // dark purple
            },
        },
        Rule{
            .kind = 485, // striped violet
            .attrs = &[_]Attr{
                Attr{ .kind = 101, .n = 3 }, // mirrored fuchsia
                Attr{ .kind = 131, .n = 5 }, // plaid salmon
                Attr{ .kind = 396, .n = 2 }, // faded crimson
                Attr{ .kind = 403, .n = 4 }, // mirrored cyan
            },
        },
        Rule{
            .kind = 486, // muted magenta
            .attrs = &[_]Attr{
                Attr{ .kind = 151, .n = 5 }, // mirrored olive
                Attr{ .kind = 276, .n = 4 }, // wavy tomato
                Attr{ .kind = 289, .n = 2 }, // plaid black
                Attr{ .kind = 487, .n = 2 }, // muted turquoise
            },
        },
        Rule{
            .kind = 487, // muted turquoise
            .attrs = &[_]Attr{
                Attr{ .kind = 41, .n = 1 }, // plaid tomato
            },
        },
        Rule{
            .kind = 488, // dim lime
            .attrs = &[_]Attr{
                Attr{ .kind = 43, .n = 2 }, // light olive
                Attr{ .kind = 106, .n = 1 }, // wavy beige
            },
        },
        Rule{
            .kind = 489, // dotted maroon
            .attrs = &[_]Attr{
                Attr{ .kind = 181, .n = 3 }, // vibrant green
                Attr{ .kind = 490, .n = 2 }, // light purple
            },
        },
        Rule{
            .kind = 490, // light purple
            .attrs = &[_]Attr{
                Attr{ .kind = 81, .n = 4 }, // shiny blue
                Attr{ .kind = 141, .n = 5 }, // striped chartreuse
                Attr{ .kind = 278, .n = 4 }, // wavy lime
                Attr{ .kind = 387, .n = 3 }, // light green
            },
        },
        Rule{
            .kind = 491, // mirrored beige
            .attrs = &[_]Attr{
                Attr{ .kind = 250, .n = 1 }, // posh lavender
                Attr{ .kind = 321, .n = 4 }, // clear yellow
                Attr{ .kind = 362, .n = 3 }, // mirrored orange
            },
        },
        Rule{
            .kind = 492, // vibrant lavender
            .attrs = &[_]Attr{
                Attr{ .kind = 192, .n = 3 }, // dull chartreuse
                Attr{ .kind = 194, .n = 2 }, // bright red
            },
        },
        Rule{
            .kind = 493, // pale brown
            .attrs = &[_]Attr{
                Attr{ .kind = 96, .n = 5 }, // wavy red
                Attr{ .kind = 274, .n = 4 }, // vibrant red
            },
        },
        Rule{
            .kind = 494, // vibrant fuchsia
            .attrs = &[_]Attr{
                Attr{ .kind = 73, .n = 3 }, // mirrored silver
            },
        },
        Rule{
            .kind = 495, // dull silver
            .attrs = &[_]Attr{
                Attr{ .kind = 159, .n = 5 }, // shiny gray
            },
        },
        Rule{
            .kind = 496, // faded red
            .attrs = &[_]Attr{
                Attr{ .kind = 68, .n = 2 }, // striped tan
            },
        },
        Rule{
            .kind = 497, // faded coral
            .attrs = &[_]Attr{
                Attr{ .kind = 48, .n = 5 }, // muted purple
                Attr{ .kind = 144, .n = 1 }, // striped blue
                Attr{ .kind = 358, .n = 2 }, // shiny purple
            },
        },
        Rule{
            .kind = 498, // shiny cyan
            .attrs = &[_]Attr{
                Attr{ .kind = 126, .n = 4 }, // mirrored chartreuse
                Attr{ .kind = 183, .n = 2 }, // dim orange
                Attr{ .kind = 186, .n = 3 }, // clear purple
                Attr{ .kind = 360, .n = 1 }, // dark teal
            },
        },
        Rule{
            .kind = 499, // dim cyan
            .attrs = &[_]Attr{
                Attr{ .kind = 482, .n = 5 }, // light white
            },
        },
        Rule{
            .kind = 500, // dotted tomato
            .attrs = &[_]Attr{
                Attr{ .kind = 261, .n = 5 }, // plaid lime
                Attr{ .kind = 342, .n = 1 }, // wavy blue
                Attr{ .kind = 449, .n = 4 }, // shiny plum
            },
        },
        Rule{
            .kind = 501, // muted cyan
            .attrs = &[_]Attr{
                Attr{ .kind = 65, .n = 1 }, // posh coral
                Attr{ .kind = 153, .n = 2 }, // bright maroon
                Attr{ .kind = 378, .n = 3 }, // light bronze
                Attr{ .kind = 455, .n = 1 }, // dim tomato
            },
        },
        Rule{
            .kind = 502, // pale white
            .attrs = &[_]Attr{
                Attr{ .kind = 334, .n = 3 }, // pale maroon
            },
        },
        Rule{
            .kind = 503, // shiny beige
            .attrs = &[_]Attr{
                Attr{ .kind = 279, .n = 4 }, // faded aqua
            },
        },
        Rule{
            .kind = 504, // plaid maroon
            .attrs = &[_]Attr{
                Attr{ .kind = 107, .n = 3 }, // pale blue
                Attr{ .kind = 276, .n = 4 }, // wavy tomato
                Attr{ .kind = 505, .n = 2 }, // dotted coral
            },
        },
        Rule{
            .kind = 505, // dotted coral
            .attrs = &[_]Attr{
                Attr{ .kind = 146, .n = 2 }, // faded magenta
                Attr{ .kind = 222, .n = 1 }, // clear brown
                Attr{ .kind = 486, .n = 4 }, // muted magenta
            },
        },
        Rule{
            .kind = 506, // light cyan
            .attrs = &[_]Attr{
                Attr{ .kind = 451, .n = 1 }, // wavy magenta
                Attr{ .kind = 507, .n = 5 }, // shiny tomato
            },
        },
        Rule{
            .kind = 507, // shiny tomato
            .attrs = &[_]Attr{
                Attr{ .kind = 82, .n = 5 }, // pale violet
            },
        },
        Rule{
            .kind = 508, // faded silver
            .attrs = &[_]Attr{
                Attr{ .kind = 7, .n = 2 }, // dim salmon
                Attr{ .kind = 251, .n = 4 }, // striped bronze
                Attr{ .kind = 329, .n = 3 }, // pale coral
            },
        },
        Rule{
            .kind = 509, // posh tan
            .attrs = &[_]Attr{
                Attr{ .kind = 300, .n = 1 }, // dim chartreuse
                Attr{ .kind = 327, .n = 2 }, // plaid turquoise
                Attr{ .kind = 421, .n = 3 }, // dim violet
                Attr{ .kind = 510, .n = 4 }, // pale turquoise
            },
        },
        Rule{
            .kind = 510, // pale turquoise
            .attrs = &[_]Attr{
                Attr{ .kind = 127, .n = 2 }, // dark red
                Attr{ .kind = 272, .n = 4 }, // dim coral
                Attr{ .kind = 398, .n = 5 }, // faded tomato
                Attr{ .kind = 544, .n = 3 }, // plaid white
            },
        },
        Rule{
            .kind = 511, // muted silver
            .attrs = &[_]Attr{
                Attr{ .kind = 322, .n = 2 }, // dotted crimson
                Attr{ .kind = 409, .n = 3 }, // muted brown
            },
        },
        Rule{
            .kind = 512, // clear coral
            .attrs = &[_]Attr{
                Attr{ .kind = 33, .n = 2 }, // clear gray
                Attr{ .kind = 220, .n = 3 }, // pale chartreuse
                Attr{ .kind = 267, .n = 3 }, // posh plum
                Attr{ .kind = 402, .n = 4 }, // muted indigo
            },
        },
        Rule{
            .kind = 513, // shiny tan
            .attrs = &[_]Attr{
                Attr{ .kind = 43, .n = 1 }, // light olive
            },
        },
        Rule{
            .kind = 514, // dark salmon
            .attrs = &[_]Attr{
                Attr{ .kind = 21, .n = 2 }, // dull teal
                Attr{ .kind = 370, .n = 5 }, // dark crimson
                Attr{ .kind = 465, .n = 1 }, // muted aqua
            },
        },
        Rule{
            .kind = 515, // plaid orange
            .attrs = &[_]Attr{
                Attr{ .kind = 26, .n = 5 }, // dim maroon
                Attr{ .kind = 80, .n = 3 }, // dull plum
                Attr{ .kind = 463, .n = 2 }, // faded maroon
            },
        },
        Rule{
            .kind = 516, // dark indigo
            .attrs = &[_]Attr{
                Attr{ .kind = 97, .n = 4 }, // light beige
                Attr{ .kind = 257, .n = 1 }, // clear tomato
                Attr{ .kind = 365, .n = 5 }, // striped purple
            },
        },
        Rule{
            .kind = 517, // dotted brown
            .attrs = &[_]Attr{
                Attr{ .kind = 115, .n = 3 }, // dim gold
                Attr{ .kind = 168, .n = 3 }, // drab chartreuse
            },
        },
        Rule{
            .kind = 518, // wavy gray
            .attrs = &[_]Attr{
                Attr{ .kind = 0, .n = 2 }, // drab tan
            },
        },
        Rule{
            .kind = 519, // posh crimson
            .attrs = &[_]Attr{
                Attr{ .kind = 12, .n = 4 }, // vibrant yellow
                Attr{ .kind = 25, .n = 5 }, // dark silver
                Attr{ .kind = 134, .n = 1 }, // posh gray
            },
        },
        Rule{
            .kind = 520, // drab tomato
            .attrs = &[_]Attr{
                Attr{ .kind = 276, .n = 5 }, // wavy tomato
                Attr{ .kind = 371, .n = 5 }, // posh gold
            },
        },
        Rule{
            .kind = 521, // bright crimson
            .attrs = &[_]Attr{
                Attr{ .kind = 8, .n = 4 }, // faded salmon
            },
        },
        Rule{
            .kind = 522, // vibrant beige
            .attrs = &[_]Attr{
                Attr{ .kind = 249, .n = 1 }, // bright tomato
                Attr{ .kind = 325, .n = 2 }, // drab red
                Attr{ .kind = 403, .n = 4 }, // mirrored cyan
            },
        },
        Rule{
            .kind = 523, // dim teal
            .attrs = &[_]Attr{
                Attr{ .kind = 86, .n = 5 }, // vibrant silver
            },
        },
        Rule{
            .kind = 524, // striped olive
            .attrs = &[_]Attr{
                Attr{ .kind = 19, .n = 1 }, // clear teal
                Attr{ .kind = 421, .n = 5 }, // dim violet
            },
        },
        Rule{
            .kind = 525, // light black
            .attrs = &[_]Attr{
                Attr{ .kind = 107, .n = 2 }, // pale blue
                Attr{ .kind = 265, .n = 2 }, // clear beige
                Attr{ .kind = 491, .n = 5 }, // mirrored beige
            },
        },
        Rule{
            .kind = 526, // dull brown
            .attrs = &[_]Attr{
                Attr{ .kind = 239, .n = 4 }, // bright violet
                Attr{ .kind = 264, .n = 2 }, // faded beige
                Attr{ .kind = 299, .n = 4 }, // posh tomato
            },
        },
        Rule{
            .kind = 527, // shiny salmon
            .attrs = &[_]Attr{
                Attr{ .kind = 33, .n = 1 }, // clear gray
                Attr{ .kind = 173, .n = 3 }, // light gold
                Attr{ .kind = 439, .n = 2 }, // mirrored green
            },
        },
        Rule{
            .kind = 528, // clear aqua
            .attrs = &[_]Attr{
                Attr{ .kind = 141, .n = 5 }, // striped chartreuse
                Attr{ .kind = 176, .n = 1 }, // pale bronze
                Attr{ .kind = 332, .n = 1 }, // light tomato
            },
        },
        Rule{
            .kind = 529, // clear lime
            .attrs = &[_]Attr{
                Attr{ .kind = 196, .n = 5 }, // dark lavender
                Attr{ .kind = 317, .n = 2 }, // pale teal
                Attr{ .kind = 351, .n = 2 }, // vibrant coral
            },
        },
        Rule{
            .kind = 530, // dull indigo
            .attrs = &[_]Attr{
                Attr{ .kind = 8, .n = 1 }, // faded salmon
                Attr{ .kind = 37, .n = 3 }, // vibrant cyan
            },
        },
        Rule{
            .kind = 531, // shiny aqua
            .attrs = &[_]Attr{
                Attr{ .kind = 36, .n = 1 }, // shiny teal
                Attr{ .kind = 66, .n = 4 }, // bright aqua
                Attr{ .kind = 118, .n = 2 }, // dark green
                Attr{ .kind = 532, .n = 4 }, // wavy cyan
            },
        },
        Rule{
            .kind = 532, // wavy cyan
            .attrs = &[_]Attr{
                Attr{ .kind = 88, .n = 5 }, // clear indigo
                Attr{ .kind = 363, .n = 2 }, // clear red
            },
        },
        Rule{
            .kind = 533, // dull bronze
            .attrs = &[_]Attr{
                Attr{ .kind = 250, .n = 2 }, // posh lavender
                Attr{ .kind = 383, .n = 5 }, // drab fuchsia
                Attr{ .kind = 390, .n = 3 }, // pale beige
            },
        },
        Rule{
            .kind = 534, // striped coral
            .attrs = &[_]Attr{
                Attr{ .kind = 419, .n = 2 }, // pale plum
                Attr{ .kind = 470, .n = 5 }, // muted maroon
            },
        },
        Rule{
            .kind = 535, // vibrant tomato
            .attrs = &[_]Attr{
                Attr{ .kind = 67, .n = 4 }, // drab lime
                Attr{ .kind = 164, .n = 3 }, // mirrored tan
                Attr{ .kind = 272, .n = 3 }, // dim coral
            },
        },
        Rule{
            .kind = 536, // dotted chartreuse
            .attrs = &[_]Attr{
                Attr{ .kind = 20, .n = 4 }, // dim red
                Attr{ .kind = 152, .n = 3 }, // drab beige
                Attr{ .kind = 526, .n = 2 }, // dull brown
            },
        },
        Rule{
            .kind = 537, // dull turquoise
            .attrs = &[_]Attr{
                Attr{ .kind = 103, .n = 2 }, // dark olive
                Attr{ .kind = 180, .n = 3 }, // clear turquoise
                Attr{ .kind = 233, .n = 3 }, // dark coral
                Attr{ .kind = 358, .n = 3 }, // shiny purple
            },
        },
        Rule{
            .kind = 538, // plaid lavender
            .attrs = &[_]Attr{
                Attr{ .kind = 123, .n = 1 }, // light tan
                Attr{ .kind = 158, .n = 2 }, // muted crimson
                Attr{ .kind = 185, .n = 4 }, // vibrant violet
                Attr{ .kind = 435, .n = 3 }, // striped silver
            },
        },
        Rule{
            .kind = 539, // wavy white
            .attrs = &[_]Attr{
                Attr{ .kind = 9, .n = 3 }, // dim turquoise
            },
        },
        Rule{
            .kind = 540, // dim blue
            .attrs = &[_]Attr{
                Attr{ .kind = 153, .n = 3 }, // bright maroon
            },
        },
        Rule{
            .kind = 541, // shiny red
            .attrs = &[_]Attr{
                Attr{ .kind = 262, .n = 5 }, // striped teal
                Attr{ .kind = 364, .n = 1 }, // dark violet
                Attr{ .kind = 465, .n = 4 }, // muted aqua
            },
        },
        Rule{
            .kind = 542, // pale aqua
            .attrs = &[_]Attr{
                Attr{ .kind = 204, .n = 3 }, // dull violet
                Attr{ .kind = 360, .n = 3 }, // dark teal
            },
        },
        Rule{
            .kind = 543, // clear chartreuse
            .attrs = &[_]Attr{
                Attr{ .kind = 438, .n = 2 }, // bright tan
            },
        },
        Rule{
            .kind = 544, // plaid white
            .attrs = &[_]Attr{
                Attr{ .kind = 131, .n = 3 }, // plaid salmon
                Attr{ .kind = 289, .n = 4 }, // plaid black
                Attr{ .kind = 482, .n = 4 }, // light white
            },
        },
        Rule{
            .kind = 545, // dotted blue
            .attrs = &[_]Attr{
                Attr{ .kind = 263, .n = 4 }, // bright lavender
            },
        },
        Rule{
            .kind = 546, // bright plum
            .attrs = &[_]Attr{
                Attr{ .kind = 69, .n = 2 }, // muted violet
                Attr{ .kind = 103, .n = 3 }, // dark olive
                Attr{ .kind = 131, .n = 5 }, // plaid salmon
                Attr{ .kind = 240, .n = 1 }, // dark purple
            },
        },
        Rule{
            .kind = 547, // pale black
            .attrs = &[_]Attr{
                Attr{ .kind = 78, .n = 1 }, // dark plum
            },
        },
        Rule{
            .kind = 548, // striped magenta
            .attrs = &[_]Attr{
                Attr{ .kind = 174, .n = 2 }, // posh olive
                Attr{ .kind = 178, .n = 5 }, // shiny coral
                Attr{ .kind = 305, .n = 3 }, // dull fuchsia
                Attr{ .kind = 389, .n = 1 }, // dull tan
            },
        },
        Rule{
            .kind = 549, // light crimson
            .attrs = &[_]Attr{
                Attr{ .kind = 95, .n = 4 }, // dull purple
            },
        },
        Rule{
            .kind = 550, // dark tan
            .attrs = &[_]Attr{
                Attr{ .kind = 0, .n = 4 }, // drab tan
                Attr{ .kind = 118, .n = 4 }, // dark green
                Attr{ .kind = 162, .n = 1 }, // shiny brown
                Attr{ .kind = 271, .n = 3 }, // drab blue
            },
        },
        Rule{
            .kind = 551, // drab olive
            .attrs = &[_]Attr{
                Attr{ .kind = 12, .n = 5 }, // vibrant yellow
            },
        },
        Rule{
            .kind = 552, // wavy violet
            .attrs = &[_]Attr{
                Attr{ .kind = 178, .n = 5 }, // shiny coral
            },
        },
        Rule{
            .kind = 553, // faded white
            .attrs = &[_]Attr{
                Attr{ .kind = 119, .n = 4 }, // vibrant teal
                Attr{ .kind = 387, .n = 4 }, // light green
                Attr{ .kind = 399, .n = 5 }, // wavy black
            },
        },
        Rule{
            .kind = 554, // mirrored purple
            .attrs = &[_]Attr{
                Attr{ .kind = 120, .n = 2 }, // clear green
                Attr{ .kind = 330, .n = 5 }, // drab green
            },
        },
        Rule{
            .kind = 555, // mirrored gray
            .attrs = &[_]Attr{
                Attr{ .kind = 87, .n = 1 }, // posh brown
                Attr{ .kind = 374, .n = 3 }, // drab white
            },
        },
        Rule{
            .kind = 556, // dark gray
            .attrs = &[_]Attr{
                Attr{ .kind = 12, .n = 5 }, // vibrant yellow
                Attr{ .kind = 196, .n = 1 }, // dark lavender
                Attr{ .kind = 250, .n = 4 }, // posh lavender
                Attr{ .kind = 551, .n = 1 }, // drab olive
            },
        },
        Rule{
            .kind = 557, // pale indigo
            .attrs = &[_]Attr{
                Attr{ .kind = 73, .n = 4 }, // mirrored silver
            },
        },
        Rule{
            .kind = 558, // bright white
            .attrs = &[_]Attr{
                Attr{ .kind = 480, .n = 4 }, // clear magenta
            },
        },
        Rule{
            .kind = 559, // striped lime
            .attrs = &[_]Attr{
                Attr{ .kind = 394, .n = 1 }, // light orange
                Attr{ .kind = 488, .n = 3 }, // dim lime
            },
        },
        Rule{
            .kind = 560, // mirrored tomato
            .attrs = &[_]Attr{
                Attr{ .kind = 453, .n = 3 }, // plaid silver
            },
        },
        Rule{
            .kind = 561, // wavy coral
            .attrs = &[_]Attr{
                Attr{ .kind = 61, .n = 4 }, // wavy yellow
                Attr{ .kind = 553, .n = 4 }, // faded white
            },
        },
        Rule{
            .kind = 562, // dim fuchsia
            .attrs = &[_]Attr{
                Attr{ .kind = 220, .n = 3 }, // pale chartreuse
                Attr{ .kind = 282, .n = 2 }, // wavy chartreuse
                Attr{ .kind = 515, .n = 3 }, // plaid orange
            },
        },
        Rule{
            .kind = 563, // light lime
            .attrs = &[_]Attr{
                Attr{ .kind = 70, .n = 2 }, // striped brown
                Attr{ .kind = 288, .n = 5 }, // bright green
                Attr{ .kind = 328, .n = 3 }, // muted red
                Attr{ .kind = 519, .n = 1 }, // posh crimson
            },
        },
        Rule{
            .kind = 564, // mirrored red
            .attrs = &[_]Attr{
                Attr{ .kind = 9, .n = 5 }, // dim turquoise
                Attr{ .kind = 106, .n = 4 }, // wavy beige
            },
        },
        Rule{
            .kind = 565, // light chartreuse
            .attrs = &[_]Attr{
                Attr{ .kind = 61, .n = 4 }, // wavy yellow
                Attr{ .kind = 423, .n = 2 }, // light yellow
            },
        },
        Rule{
            .kind = 566, // wavy salmon
            .attrs = &[_]Attr{
                Attr{ .kind = 87, .n = 4 }, // posh brown
                Attr{ .kind = 283, .n = 1 }, // light brown
                Attr{ .kind = 307, .n = 3 }, // dotted olive
                Attr{ .kind = 394, .n = 5 }, // light orange
            },
        },
        Rule{
            .kind = 567, // faded chartreuse
            .attrs = &[_]Attr{
                Attr{ .kind = 73, .n = 4 }, // mirrored silver
                Attr{ .kind = 223, .n = 5 }, // dark beige
                Attr{ .kind = 438, .n = 4 }, // bright tan
                Attr{ .kind = 489, .n = 4 }, // dotted maroon
            },
        },
        Rule{
            .kind = 568, // posh beige
            .attrs = &[_]Attr{
                Attr{ .kind = 523, .n = 4 }, // dim teal
            },
        },
        Rule{
            .kind = 569, // vibrant aqua
            .attrs = &[_]Attr{
                Attr{ .kind = 46, .n = 1 }, // muted black
                Attr{ .kind = 444, .n = 5 }, // pale lavender
                Attr{ .kind = 499, .n = 3 }, // dim cyan
            },
        },
        Rule{
            .kind = 570, // wavy olive
            .attrs = &[_]Attr{
                Attr{ .kind = 147, .n = 2 }, // bright silver
                Attr{ .kind = 203, .n = 3 }, // shiny olive
            },
        },
        Rule{
            .kind = 571, // dotted gray
            .attrs = &[_]Attr{
                Attr{ .kind = 280, .n = 5 }, // vibrant olive
                Attr{ .kind = 383, .n = 4 }, // drab fuchsia
            },
        },
        Rule{
            .kind = 572, // mirrored salmon
            .attrs = &[_]Attr{
                Attr{ .kind = 357, .n = 5 }, // vibrant indigo
                Attr{ .kind = 361, .n = 5 }, // faded indigo
            },
        },
        Rule{
            .kind = 573, // faded orange
            .attrs = &[_]Attr{
                Attr{ .kind = 69, .n = 5 }, // muted violet
                Attr{ .kind = 70, .n = 5 }, // striped brown
            },
        },
        Rule{
            .kind = 574, // pale orange
            .attrs = &[_]Attr{
                Attr{ .kind = 198, .n = 4 }, // vibrant gray
            },
        },
        Rule{
            .kind = 575, // posh teal
            .attrs = &[_]Attr{
                Attr{ .kind = 142, .n = 4 }, // dotted salmon
                Attr{ .kind = 364, .n = 1 }, // dark violet
            },
        },
        Rule{
            .kind = 576, // bright teal
            .attrs = &[_]Attr{
                Attr{ .kind = 374, .n = 5 }, // drab white
            },
        },
        Rule{
            .kind = 577, // striped maroon
            .attrs = &[_]Attr{
                Attr{ .kind = 14, .n = 4 }, // light lavender
                Attr{ .kind = 525, .n = 2 }, // light black
                Attr{ .kind = 578, .n = 4 }, // drab violet
            },
        },
        Rule{
            .kind = 578, // drab violet
            .attrs = &[_]Attr{
                Attr{ .kind = 28, .n = 2 }, // clear orange
                Attr{ .kind = 126, .n = 2 }, // mirrored chartreuse
                Attr{ .kind = 264, .n = 1 }, // faded beige
                Attr{ .kind = 268, .n = 4 }, // dotted beige
            },
        },
        Rule{
            .kind = 579, // pale magenta
            .attrs = &[_]Attr{
                Attr{ .kind = 275, .n = 4 }, // pale gray
            },
        },
        Rule{
            .kind = 580, // shiny maroon
            .attrs = &[_]Attr{
                Attr{ .kind = 67, .n = 2 }, // drab lime
                Attr{ .kind = 192, .n = 2 }, // dull chartreuse
                Attr{ .kind = 522, .n = 2 }, // vibrant beige
                Attr{ .kind = 581, .n = 4 }, // vibrant turquoise
            },
        },
        Rule{
            .kind = 581, // vibrant turquoise
            .attrs = &[_]Attr{
                Attr{ .kind = 16, .n = 3 }, // plaid cyan
                Attr{ .kind = 279, .n = 3 }, // faded aqua
                Attr{ .kind = 421, .n = 3 }, // dim violet
                Attr{ .kind = 511, .n = 2 }, // muted silver
            },
        },
        Rule{
            .kind = 582, // dark black
            .attrs = &[_]Attr{
                Attr{ .kind = 58, .n = 1 }, // wavy crimson
                Attr{ .kind = 150, .n = 3 }, // plaid tan
                Attr{ .kind = 333, .n = 1 }, // dark white
                Attr{ .kind = 356, .n = 5 }, // striped red
            },
        },
        Rule{
            .kind = 583, // faded plum
            .attrs = &[_]Attr{
                Attr{ .kind = 151, .n = 5 }, // mirrored olive
                Attr{ .kind = 214, .n = 4 }, // light silver
            },
        },
        Rule{
            .kind = 584, // dotted black
            .attrs = &[_]Attr{
                Attr{ .kind = 29, .n = 1 }, // muted olive
            },
        },
        Rule{
            .kind = 585, // mirrored coral
            .attrs = &[_]Attr{
                Attr{ .kind = 239, .n = 4 }, // bright violet
                Attr{ .kind = 253, .n = 2 }, // posh aqua
                Attr{ .kind = 514, .n = 2 }, // dark salmon
            },
        },
        Rule{
            .kind = 586, // muted chartreuse
            .attrs = &[_]Attr{
                Attr{ .kind = 134, .n = 4 }, // posh gray
                Attr{ .kind = 339, .n = 5 }, // drab purple
            },
        },
        Rule{
            .kind = 587, // clear plum
            .attrs = &[_]Attr{
                Attr{ .kind = 115, .n = 3 }, // dim gold
                Attr{ .kind = 127, .n = 3 }, // dark red
                Attr{ .kind = 129, .n = 2 }, // posh black
                Attr{ .kind = 285, .n = 5 }, // plaid beige
            },
        },
        Rule{
            .kind = 588, // faded bronze
            .attrs = &[_]Attr{
                Attr{ .kind = 161, .n = 2 }, // light salmon
            },
        },
        Rule{
            .kind = 589, // bright lime
            .attrs = &[_]Attr{
                Attr{ .kind = 236, .n = 3 }, // faded teal
                Attr{ .kind = 396, .n = 1 }, // faded crimson
                Attr{ .kind = 505, .n = 5 }, // dotted coral
            },
        },
        Rule{
            .kind = 590, // dull olive
            .attrs = &[_]Attr{
                Attr{ .kind = 337, .n = 5 }, // muted lime
                Attr{ .kind = 377, .n = 3 }, // dark yellow
            },
        },
        Rule{
            .kind = 591, // posh indigo
            .attrs = &[_]Attr{
                Attr{ .kind = 473, .n = 5 }, // drab salmon
            },
        },
        Rule{
            .kind = 592, // striped plum
            .attrs = &[_]Attr{
                Attr{ .kind = 360, .n = 4 }, // dark teal
                Attr{ .kind = 440, .n = 5 }, // dim white
            },
        },
        Rule{
            .kind = 593, // dim lavender
            .attrs = &[_]Attr{
                Attr{ .kind = 246, .n = 3 }, // wavy maroon
                Attr{ .kind = 251, .n = 5 }, // striped bronze
            },
        },
    },
    .names = &[_][]const u8{
        "drab tan",
        "clear gold",
        "vibrant lime",
        "faded gold",
        "plaid aqua",
        "clear black",
        "pale lime",
        "dim salmon",
        "faded salmon",
        "dim turquoise",
        "dull gray",
        "striped gold",
        "vibrant yellow",
        "light fuchsia",
        "light lavender",
        "faded olive",
        "plaid cyan",
        "striped tomato",
        "drab gold",
        "clear teal",
        "dim red",
        "dull teal",
        "striped orange",
        "bright fuchsia",
        "plaid chartreuse",
        "dark silver",
        "dim maroon",
        "shiny violet",
        "clear orange",
        "muted olive",
        "dark chartreuse",
        "shiny indigo",
        "dotted silver",
        "clear gray",
        "dotted lime",
        "dark turquoise",
        "shiny teal",
        "vibrant cyan",
        "drab magenta",
        "bright yellow",
        "dull orange",
        "plaid tomato",
        "dull black",
        "light olive",
        "posh turquoise",
        "muted salmon",
        "muted black",
        "shiny turquoise",
        "muted purple",
        "dotted red",
        "striped black",
        "striped fuchsia",
        "drab indigo",
        "drab brown",
        "light gray",
        "dull coral",
        "pale purple",
        "mirrored black",
        "wavy crimson",
        "dotted violet",
        "clear lavender",
        "wavy yellow",
        "plaid red",
        "bright coral",
        "bright brown",
        "posh coral",
        "bright aqua",
        "drab lime",
        "striped tan",
        "muted violet",
        "striped brown",
        "dark lime",
        "wavy bronze",
        "mirrored silver",
        "dim black",
        "dark maroon",
        "muted lavender",
        "bright cyan",
        "dark plum",
        "posh yellow",
        "dull plum",
        "shiny blue",
        "pale violet",
        "posh fuchsia",
        "mirrored bronze",
        "striped lavender",
        "vibrant silver",
        "posh brown",
        "clear indigo",
        "drab lavender",
        "dark brown",
        "mirrored plum",
        "muted tomato",
        "wavy green",
        "posh bronze",
        "dull purple",
        "wavy red",
        "light beige",
        "light maroon",
        "vibrant orange",
        "clear blue",
        "mirrored fuchsia",
        "muted beige",
        "dark olive",
        "clear tan",
        "posh lime",
        "wavy beige",
        "pale blue",
        "dull aqua",
        "pale crimson",
        "dull lime",
        "wavy silver",
        "pale cyan",
        "striped beige",
        "dim plum",
        "dim gold",
        "dull cyan",
        "drab black",
        "dark green",
        "vibrant teal",
        "clear green",
        "light violet",
        "bright beige",
        "light tan",
        "pale red",
        "light turquoise",
        "mirrored chartreuse",
        "dark red",
        "shiny lime",
        "posh black",
        "posh salmon",
        "plaid salmon",
        "shiny orange",
        "mirrored yellow",
        "posh gray",
        "shiny silver",
        "dark fuchsia",
        "plaid plum",
        "bright bronze",
        "posh silver",
        "muted gold",
        "striped chartreuse",
        "dotted salmon",
        "vibrant bronze",
        "striped blue",
        "dark orange",
        "faded magenta",
        "bright silver",
        "drab silver",
        "posh orange",
        "plaid tan",
        "mirrored olive",
        "drab beige",
        "bright maroon",
        "muted bronze",
        "wavy brown",
        "shiny chartreuse",
        "dull white",
        "muted crimson",
        "shiny gray",
        "dotted orange",
        "light salmon",
        "shiny brown",
        "clear olive",
        "mirrored tan",
        "pale tan",
        "drab bronze",
        "drab teal",
        "drab chartreuse",
        "dim beige",
        "faded cyan",
        "plaid fuchsia",
        "pale yellow",
        "light gold",
        "posh olive",
        "pale tomato",
        "pale bronze",
        "posh white",
        "shiny coral",
        "plaid crimson",
        "clear turquoise",
        "vibrant green",
        "shiny gold",
        "dim orange",
        "dark tomato",
        "vibrant violet",
        "clear purple",
        "muted fuchsia",
        "bright olive",
        "bright gold",
        "mirrored indigo",
        "mirrored maroon",
        "dull chartreuse",
        "pale salmon",
        "bright red",
        "faded brown",
        "dark lavender",
        "drab plum",
        "vibrant gray",
        "plaid coral",
        "striped turquoise",
        "vibrant black",
        "shiny black",
        "shiny olive",
        "dull violet",
        "vibrant plum",
        "muted plum",
        "shiny lavender",
        "mirrored lavender",
        "mirrored blue",
        "faded violet",
        "plaid olive",
        "dotted aqua",
        "shiny yellow",
        "light silver",
        "bright orange",
        "dim indigo",
        "pale olive",
        "light indigo",
        "faded turquoise",
        "pale chartreuse",
        "wavy teal",
        "clear brown",
        "dark beige",
        "dotted bronze",
        "posh purple",
        "clear silver",
        "mirrored crimson",
        "plaid bronze",
        "wavy fuchsia",
        "plaid magenta",
        "drab aqua",
        "striped yellow",
        "dark coral",
        "dim silver",
        "striped white",
        "faded teal",
        "faded yellow",
        "faded blue",
        "bright violet",
        "dark purple",
        "dim aqua",
        "clear bronze",
        "dull magenta",
        "shiny magenta",
        "mirrored teal",
        "wavy maroon",
        "plaid teal",
        "plaid yellow",
        "bright tomato",
        "posh lavender",
        "striped bronze",
        "vibrant purple",
        "posh aqua",
        "muted teal",
        "faded fuchsia",
        "plaid green",
        "clear tomato",
        "dim olive",
        "clear violet",
        "plaid gold",
        "plaid lime",
        "striped teal",
        "bright lavender",
        "faded beige",
        "clear beige",
        "dotted turquoise",
        "posh plum",
        "dotted beige",
        "striped indigo",
        "clear cyan",
        "drab blue",
        "dim coral",
        "plaid purple",
        "vibrant red",
        "pale gray",
        "wavy tomato",
        "dull green",
        "wavy lime",
        "faded aqua",
        "vibrant olive",
        "mirrored violet",
        "wavy chartreuse",
        "light brown",
        "plaid blue",
        "plaid beige",
        "dotted teal",
        "dim green",
        "bright green",
        "plaid black",
        "dull salmon",
        "faded lime",
        "striped gray",
        "dull gold",
        "wavy plum",
        "shiny green",
        "dull crimson",
        "bright blue",
        "dull lavender",
        "posh tomato",
        "dim chartreuse",
        "dotted lavender",
        "posh magenta",
        "pale green",
        "plaid indigo",
        "dull fuchsia",
        "light plum",
        "dotted olive",
        "vibrant maroon",
        "dim yellow",
        "bright indigo",
        "wavy lavender",
        "dark bronze",
        "striped aqua",
        "dull tomato",
        "pale gold",
        "dull maroon",
        "pale teal",
        "light coral",
        "light magenta",
        "muted tan",
        "clear yellow",
        "dotted crimson",
        "dull beige",
        "posh cyan",
        "drab red",
        "drab gray",
        "plaid turquoise",
        "muted red",
        "pale coral",
        "drab green",
        "dim gray",
        "light tomato",
        "dark white",
        "pale maroon",
        "striped crimson",
        "vibrant gold",
        "muted lime",
        "drab cyan",
        "drab purple",
        "dotted gold",
        "dotted green",
        "wavy blue",
        "bright black",
        "bright chartreuse",
        "dim purple",
        "faded lavender",
        "bright purple",
        "pale fuchsia",
        "dark magenta",
        "bright salmon",
        "vibrant coral",
        "bright gray",
        "faded green",
        "bright magenta",
        "vibrant crimson",
        "striped red",
        "vibrant indigo",
        "shiny purple",
        "muted gray",
        "dark teal",
        "faded indigo",
        "mirrored orange",
        "clear red",
        "dark violet",
        "striped purple",
        "plaid violet",
        "mirrored gold",
        "shiny crimson",
        "wavy purple",
        "dark crimson",
        "posh gold",
        "dull yellow",
        "dim crimson",
        "drab white",
        "posh red",
        "drab turquoise",
        "dark yellow",
        "light bronze",
        "vibrant blue",
        "dotted cyan",
        "faded purple",
        "drab crimson",
        "drab fuchsia",
        "clear maroon",
        "dotted white",
        "dull red",
        "light green",
        "wavy aqua",
        "dull tan",
        "pale beige",
        "light teal",
        "light aqua",
        "dim tan",
        "light orange",
        "vibrant brown",
        "faded crimson",
        "mirrored turquoise",
        "faded tomato",
        "wavy black",
        "dark cyan",
        "dim brown",
        "muted indigo",
        "mirrored cyan",
        "vibrant tan",
        "clear white",
        "shiny white",
        "drab orange",
        "striped green",
        "muted brown",
        "plaid brown",
        "drab yellow",
        "faded black",
        "muted yellow",
        "dark aqua",
        "dull blue",
        "mirrored white",
        "muted blue",
        "muted coral",
        "pale plum",
        "muted green",
        "dim violet",
        "faded tan",
        "light yellow",
        "clear fuchsia",
        "posh violet",
        "dotted fuchsia",
        "dotted plum",
        "posh green",
        "vibrant magenta",
        "drab maroon",
        "drab coral",
        "dotted tan",
        "striped cyan",
        "pale silver",
        "striped silver",
        "vibrant chartreuse",
        "bright turquoise",
        "bright tan",
        "mirrored green",
        "dim white",
        "muted white",
        "posh maroon",
        "posh chartreuse",
        "pale lavender",
        "light blue",
        "dark gold",
        "shiny fuchsia",
        "muted orange",
        "shiny plum",
        "posh blue",
        "wavy magenta",
        "striped salmon",
        "plaid silver",
        "dim bronze",
        "dim tomato",
        "wavy indigo",
        "wavy gold",
        "vibrant white",
        "dim magenta",
        "dark blue",
        "plaid gray",
        "faded gray",
        "faded maroon",
        "clear crimson",
        "muted aqua",
        "mirrored brown",
        "dotted purple",
        "dotted indigo",
        "wavy orange",
        "muted maroon",
        "clear salmon",
        "wavy turquoise",
        "drab salmon",
        "dotted yellow",
        "mirrored aqua",
        "shiny bronze",
        "wavy tan",
        "mirrored magenta",
        "mirrored lime",
        "clear magenta",
        "light red",
        "light white",
        "vibrant salmon",
        "dotted magenta",
        "striped violet",
        "muted magenta",
        "muted turquoise",
        "dim lime",
        "dotted maroon",
        "light purple",
        "mirrored beige",
        "vibrant lavender",
        "pale brown",
        "vibrant fuchsia",
        "dull silver",
        "faded red",
        "faded coral",
        "shiny cyan",
        "dim cyan",
        "dotted tomato",
        "muted cyan",
        "pale white",
        "shiny beige",
        "plaid maroon",
        "dotted coral",
        "light cyan",
        "shiny tomato",
        "faded silver",
        "posh tan",
        "pale turquoise",
        "muted silver",
        "clear coral",
        "shiny tan",
        "dark salmon",
        "plaid orange",
        "dark indigo",
        "dotted brown",
        "wavy gray",
        "posh crimson",
        "drab tomato",
        "bright crimson",
        "vibrant beige",
        "dim teal",
        "striped olive",
        "light black",
        "dull brown",
        "shiny salmon",
        "clear aqua",
        "clear lime",
        "dull indigo",
        "shiny aqua",
        "wavy cyan",
        "dull bronze",
        "striped coral",
        "vibrant tomato",
        "dotted chartreuse",
        "dull turquoise",
        "plaid lavender",
        "wavy white",
        "dim blue",
        "shiny red",
        "pale aqua",
        "clear chartreuse",
        "plaid white",
        "dotted blue",
        "bright plum",
        "pale black",
        "striped magenta",
        "light crimson",
        "dark tan",
        "drab olive",
        "wavy violet",
        "faded white",
        "mirrored purple",
        "mirrored gray",
        "dark gray",
        "pale indigo",
        "bright white",
        "striped lime",
        "mirrored tomato",
        "wavy coral",
        "dim fuchsia",
        "light lime",
        "mirrored red",
        "light chartreuse",
        "wavy salmon",
        "faded chartreuse",
        "posh beige",
        "vibrant aqua",
        "wavy olive",
        "dotted gray",
        "mirrored salmon",
        "faded orange",
        "pale orange",
        "posh teal",
        "bright teal",
        "striped maroon",
        "drab violet",
        "pale magenta",
        "shiny maroon",
        "vibrant turquoise",
        "dark black",
        "faded plum",
        "dotted black",
        "mirrored coral",
        "muted chartreuse",
        "clear plum",
        "faded bronze",
        "bright lime",
        "dull olive",
        "posh indigo",
        "striped plum",
        "dim lavender",
    },
};
