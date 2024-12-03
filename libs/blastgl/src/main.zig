const xml = @import("xml.zig");
const std = @import("std");

const api = "gl";
const version_major = 4;
const version_minor = 6;
const profile = "core";

const function = struct { name: []const u8, paramnames: [][]const u8, paramtypes: [][]const u8, returntype: []const u8 };

const constant = struct { name: []const u8, value: []const u8 };

pub fn main() !void {
    var allocrena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer allocrena.deinit();
    const alloc = allocrena.allocator();

    //in registry
    const in = try std.fs.cwd().openFile("gl.xml", .{ .mode = std.fs.File.OpenMode.read_only });
    defer in.close();

    //out zig file
    const out = try std.fs.cwd().createFile("gl.zig", .{});
    defer out.close();

    const filestat = try in.stat();
    const doc = try xml.parse(alloc, try in.readToEndAlloc(alloc, filestat.size));
    defer doc.deinit();
    const root = doc.root;

    try printextra(out, alloc);
    try printconstants(root, out, alloc);
    try printfunctions(root, out, alloc);

    std.debug.print("{s}", .{try in.readToEndAlloc(alloc, 999999999)});
}

fn printconstants(root: *xml.Element, out: std.fs.File, alloc: std.mem.Allocator) !void {
    var list = std.ArrayList(constant).init(alloc);
    defer list.deinit();
    var features = root.findChildrenByTag("feature");

    while (features.next()) |feature| {
        if (std.mem.eql(u8, feature.getAttribute("api").?, api)) {
            if (try std.fmt.parseFloat(f16, feature.getAttribute("number").?) <= try std.fmt.parseFloat(f16, try std.fmt.allocPrint(alloc, "{}.{}", .{ version_major, version_minor }))) {
                var requires = feature.findChildrenByTag("require");
                while (requires.next()) |require| {
                    if (require.getAttribute("profile") != null) {
                        if (std.mem.eql(u8, require.getAttribute("profile").?, profile)) {
                            var requiredenums = require.findChildrenByTag("enum");
                            while (requiredenums.next()) |requiredenum| {
                                const requiredname = requiredenum.getAttribute("name").?;
                                var enumsgroup = root.findChildrenByTag("enums");
                                while (enumsgroup.next()) |enumgroup| {
                                    var enums = enumgroup.findChildrenByTag("enum");
                                    while (enums.next()) |constanty| {
                                        if (std.mem.eql(u8, constanty.getAttribute("name").?, requiredname)) {
                                            try list.append(constant{ .name = requiredname, .value = constanty.getAttribute("value").? });
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        var requiredenums = require.findChildrenByTag("enum");
                        while (requiredenums.next()) |requiredenum| {
                            const requiredname = requiredenum.getAttribute("name").?;
                            var enumsgroup = root.findChildrenByTag("enums");
                            while (enumsgroup.next()) |enumgroup| {
                                var enums = enumgroup.findChildrenByTag("enum");
                                while (enums.next()) |constanty| {
                                    if (std.mem.eql(u8, constanty.getAttribute("name").?, requiredname)) {
                                        try list.append(constant{ .name = requiredname, .value = constanty.getAttribute("value").? });
                                    }
                                }
                            }
                        }
                    }
                }
                var removes = feature.findChildrenByTag("remove");
                while (removes.next()) |remove| {
                    if (remove.getAttribute("profile") != null) {
                        if (std.mem.eql(u8, remove.getAttribute("profile").?, profile)) {
                            var removedenums = remove.findChildrenByTag("enum");
                            while (removedenums.next()) |removedenum| {
                                const removedname = removedenum.getAttribute("name").?;
                                var enumsgroup = root.findChildrenByTag("enums");
                                while (enumsgroup.next()) |enumgroup| {
                                    var enums = enumgroup.findChildrenByTag("enum");
                                    while (enums.next()) |constanty| {
                                        if (std.mem.eql(u8, constanty.getAttribute("name").?, removedname)) {
                                            for (list.items, 0..) |cons, i| {
                                                if (std.mem.eql(u8, cons.name, removedname)) {
                                                    if (std.mem.eql(u8, cons.value, constanty.getAttribute("value").?)) {
                                                        _ = list.swapRemove(i);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        var removedenums = remove.findChildrenByTag("enum");
                        while (removedenums.next()) |removedenum| {
                            const removedname = removedenum.getAttribute("name").?;
                            var enumsgroup = root.findChildrenByTag("enums");
                            while (enumsgroup.next()) |enumgroup| {
                                var enums = enumgroup.findChildrenByTag("enum");
                                while (enums.next()) |constanty| {
                                    if (std.mem.eql(u8, constanty.getAttribute("name").?, removedname)) {
                                        for (list.items, 0..) |cons, i| {
                                            if (std.mem.eql(u8, cons.name, removedname)) {
                                                if (std.mem.eql(u8, cons.value, constanty.getAttribute("value").?)) {
                                                    _ = list.swapRemove(i);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    for (list.items) |item| {
        _ = try out.write(try std.fmt.allocPrint(alloc, "pub const {s} = {s};\n", .{ item.name, item.value }));
    }
}

fn printfunctions(root: *xml.Element, out: std.fs.File, alloc: std.mem.Allocator) !void {
    var list = std.ArrayList(function).init(alloc);
    defer list.deinit();
    var features = root.findChildrenByTag("feature");

    while (features.next()) |feature| {
        if (std.mem.eql(u8, feature.getAttribute("api").?, api)) {
            if (try std.fmt.parseFloat(f16, feature.getAttribute("number").?) <= try std.fmt.parseFloat(f16, try std.fmt.allocPrint(alloc, "{}.{}", .{ version_major, version_minor }))) {
                var requires = feature.findChildrenByTag("require");
                while (requires.next()) |require| {
                    if (require.getAttribute("profile") != null) {
                        if (std.mem.eql(u8, require.getAttribute("profile").?, profile)) {
                            var requiredcommands = require.findChildrenByTag("command");
                            while (requiredcommands.next()) |requiredcommand| {
                                const requiredname = requiredcommand.getAttribute("name").?;
                                var commandsgroup = root.findChildrenByTag("commands");
                                while (commandsgroup.next()) |commandgroup| {
                                    var commands = commandgroup.findChildrenByTag("command");
                                    while (commands.next()) |functiony| {
                                        if (std.mem.eql(u8, functiony.findChildByTag("proto").?.findChildByTag("name").?.children[0].char_data, requiredname)) {
                                            var paramnames = std.ArrayList([]const u8).init(alloc);
                                            var paramtypes = std.ArrayList([]const u8).init(alloc);
                                            var params = functiony.findChildrenByTag("param");
                                            while (params.next()) |param| {
                                                try paramnames.append(param.findChildByTag("name").?.children[0].char_data);
                                                if (param.findChildByTag("ptype") != null) {
                                                    try paramtypes.append(param.findChildByTag("ptype").?.children[0].char_data[2..]);
                                                } else {
                                                    try paramtypes.append("?*const anyopaque");
                                                }
                                            }
                                            var returntype: []const u8 = undefined;
                                            if (functiony.findChildByTag("proto").?.findChildByTag("ptype") != null) {
                                                returntype = functiony.findChildByTag("proto").?.findChildByTag("ptype").?.children[0].char_data[2..];
                                            } else {
                                                returntype = "void";
                                            }
                                            try list.append(function{ .name = requiredname, .paramnames = try paramnames.toOwnedSlice(), .paramtypes = try paramtypes.toOwnedSlice(), .returntype = returntype });
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        var requiredcommands = require.findChildrenByTag("command");
                        while (requiredcommands.next()) |requiredcommand| {
                            const requiredname = requiredcommand.getAttribute("name").?;
                            var commandsgroup = root.findChildrenByTag("commands");
                            while (commandsgroup.next()) |commandgroup| {
                                var commands = commandgroup.findChildrenByTag("command");
                                while (commands.next()) |functiony| {
                                    if (std.mem.eql(u8, functiony.findChildByTag("proto").?.findChildByTag("name").?.children[0].char_data, requiredname)) {
                                        var paramnames = std.ArrayList([]const u8).init(alloc);
                                        var paramtypes = std.ArrayList([]const u8).init(alloc);
                                        var params = functiony.findChildrenByTag("param");
                                        while (params.next()) |param| {
                                            try paramnames.append(param.findChildByTag("name").?.children[0].char_data);
                                            if (param.findChildByTag("ptype") != null) {
                                                try paramtypes.append(param.findChildByTag("ptype").?.children[0].char_data[2..]);
                                            } else {
                                                try paramtypes.append("?*const anyopaque");
                                            }
                                        }
                                        var returntype: []const u8 = undefined;
                                        if (functiony.findChildByTag("proto").?.findChildByTag("ptype") != null) {
                                            returntype = functiony.findChildByTag("proto").?.findChildByTag("ptype").?.children[0].char_data[2..];
                                        } else {
                                            returntype = "void";
                                        }
                                        try list.append(function{ .name = requiredname, .paramnames = try paramnames.toOwnedSlice(), .paramtypes = try paramtypes.toOwnedSlice(), .returntype = returntype });
                                    }
                                }
                            }
                        }
                    }
                }
                var removes = feature.findChildrenByTag("remove");
                while (removes.next()) |remove| {
                    if (remove.getAttribute("profile") != null) {
                        if (std.mem.eql(u8, remove.getAttribute("profile").?, profile)) {
                            var removedcommands = remove.findChildrenByTag("command");
                            while (removedcommands.next()) |removedcommand| {
                                const removedname = removedcommand.getAttribute("name").?;
                                var commandsgroup = root.findChildrenByTag("commands");
                                while (commandsgroup.next()) |commandgroup| {
                                    var commands = commandgroup.findChildrenByTag("command");
                                    while (commands.next()) |functiony| {
                                        if (std.mem.eql(u8, functiony.findChildByTag("proto").?.findChildByTag("name").?.children[0].char_data, removedname)) {
                                            for (list.items, 0..) |funs, i| {
                                                if (std.mem.eql(u8, funs.name, removedname)) {
                                                    var paramnames = std.ArrayList([]const u8).init(alloc);
                                                    var paramtypes = std.ArrayList([]const u8).init(alloc);
                                                    var params = functiony.findChildrenByTag("param");
                                                    while (params.next()) |param| {
                                                        try paramnames.append(param.findChildByTag("name").?.children[0].char_data);
                                                        if (param.findChildByTag("ptype") != null) {
                                                            try paramtypes.append(param.findChildByTag("ptype").?.children[0].char_data[2..]);
                                                        } else {
                                                            try paramtypes.append("?*const anyopaque");
                                                        }
                                                    }
                                                    if (funs.paramtypes.len == 0) {
                                                        _ = list.swapRemove(i);
                                                    } else {
                                                        var paramnamessame = true;
                                                        for (try paramnames.toOwnedSlice(), 0..) |paramname, l| {
                                                            paramnamessame = std.mem.eql(u8, paramname, funs.paramnames[l]);
                                                        }
                                                        if (paramnamessame) {
                                                            var paramtypessame = true;
                                                            for (try paramtypes.toOwnedSlice(), 0..) |paramtype, j| {
                                                                paramtypessame = std.mem.eql(u8, paramtype, funs.paramtypes[j]);
                                                            }
                                                            if (paramtypessame) {
                                                                _ = list.swapRemove(i);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        var removedenums = remove.findChildrenByTag("enum");
                        while (removedenums.next()) |removedenum| {
                            const removedname = removedenum.getAttribute("name").?;
                            var enumsgroup = root.findChildrenByTag("enums");
                            while (enumsgroup.next()) |enumgroup| {
                                var enums = enumgroup.findChildrenByTag("enum");
                                while (enums.next()) |functiony| {
                                    if (std.mem.eql(u8, functiony.getAttribute("name").?, removedname)) {
                                        for (list.items, 0..) |cons, i| {
                                            if (std.mem.eql(u8, cons.name, removedname)) {
                                                var paramnames = std.ArrayList([]const u8).init(alloc);
                                                var paramtypes = std.ArrayList([]const u8).init(alloc);
                                                var params = functiony.findChildrenByTag("param");
                                                while (params.next()) |param| {
                                                    try paramnames.append(param.findChildByTag("name").?.children[0].char_data);
                                                    if (param.findChildByTag("ptype") != null) {
                                                        try paramtypes.append(param.findChildByTag("ptype").?.children[0].char_data[2..]);
                                                    } else {
                                                        try paramtypes.append("?*const anyopaque");
                                                    }
                                                }
                                                if (paramtypes.items.len == 0) {
                                                    _ = list.swapRemove(i);
                                                }
                                                var paramnamessame = true;
                                                for (try paramnames.toOwnedSlice(), 0..) |paramname, l| {
                                                    paramnamessame = std.mem.eql(u8, paramname, cons.paramnames[l]);
                                                }
                                                if (paramnamessame) {
                                                    var paramtypessame = true;
                                                    for (try paramtypes.toOwnedSlice(), 0..) |paramtype, x| {
                                                        std.debug.print("{s}:", .{paramtype});
                                                        paramtypessame = std.mem.eql(u8, paramtype, cons.paramtypes[x]);
                                                    }
                                                    if (paramtypessame) {
                                                        _ = list.swapRemove(i);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    for (list.items) |item| {
        _ = try out.write(try std.fmt.allocPrint(alloc, "pub const {s}(", .{item.name}));
        if (item.paramnames.len != 0) {
            if (item.paramtypes.len != 0) {
                for (item.paramnames, 0..) |paramname, i| {
                    _ = try out.write(try std.fmt.allocPrint(alloc, "{s}: {s}", .{ paramname, item.paramtypes[i] }));
                    if (i + 2 > item.paramtypes.len) {
                        _ = try out.write(try std.fmt.allocPrint(alloc, ") {s}{{\n", .{item.returntype}));
                    } else {
                        _ = try out.write(", ");
                    }
                }
            }
        }
    }
}

const infotemplate =
    \\pub const info = struct {{
    \\  pub const api = .{s};
    \\  pub const version_major = {any};
    \\  pub const version_minor = {any};
    \\  pub const profile = .{s};
    \\}};
;

fn printextra(out: std.fs.File, alloc: std.mem.Allocator) !void {
    _ = try out.write(try std.fmt.allocPrint(alloc, infotemplate, .{ api, version_major, version_minor, profile }));
}
