const xml = @import("xml.zig");
const std = @import("std");

var api: []u8 = undefined;
var version_major: u8 = 4;
var version_minor: u8 = 6;
var profile: []u8 = undefined;
var outpath: []u8 = undefined;

const function = struct { name: []const u8, paramnames: [][]const u8, paramtypes: [][]const u8, returntype: []const u8 };

const constant = struct { name: []const u8, value: []const u8 };

pub fn main() !void {
    var allocrena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer allocrena.deinit();
    const alloc = allocrena.allocator();

    var args = try std.process.ArgIterator.initWithAllocator(alloc);
    defer args.deinit();
    _ = args.skip();
    try parseargs(&args);

    //in registry
    const in = try std.fs.cwd().openFile("gl.xml", .{ .mode = std.fs.File.OpenMode.read_only });
    defer in.close();

    //out zig file
    const out = std.io.getStdOut().writer().context;
    defer out.close();

    const filestat = try in.stat();
    const doc = try xml.parse(alloc, try in.readToEndAlloc(alloc, filestat.size));
    defer doc.deinit();
    const root = doc.root; 

    try printextra(out, alloc);
    try printconstants(root, out, alloc);
    try printfunctions(root, out, alloc);

    std.debug.print("{s}", .{try in.readToEndAlloc(alloc, filestat.size)});
}

fn parseargs(args: *std.process.ArgIterator) !void {
    while (args.next()) |arg| {
        if (std.mem.eql(u8, arg, "--api") or std.mem.eql(u8, arg, "-a")) {
            api = @constCast(args.next().?);
        } else if (std.mem.eql(u8, arg, "--profile") or std.mem.eql(u8, arg, "-p")) {
            profile = @constCast(args.next().?);
        } else if (std.mem.eql(u8, arg, "--minorver") or std.mem.eql(u8, arg, "-iv")) {
            version_minor = try std.fmt.parseInt(u8, args.next().?, 10);
        } else if (std.mem.eql(u8, arg, "--majorver") or std.mem.eql(u8, arg, "-av")) {
            version_major = try std.fmt.parseInt(u8, args.next().?, 10);
        } else if (std.mem.eql(u8, arg, "--out") or std.mem.eql(u8, arg, "-o")) {
            outpath = @constCast(args.next().?);
        }
    }
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
                                const requiredname = requiredenum.getAttribute("name").?[3..];
                                var enumsgroup = root.findChildrenByTag("enums");
                                while (enumsgroup.next()) |enumgroup| {
                                    var enums = enumgroup.findChildrenByTag("enum");
                                    while (enums.next()) |constanty| {
                                        if (std.mem.eql(u8, constanty.getAttribute("name").?[3..], requiredname)) {
                                            try list.append(constant{ .name = requiredname, .value = constanty.getAttribute("value").? });
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        var requiredenums = require.findChildrenByTag("enum");
                        while (requiredenums.next()) |requiredenum| {
                            const requiredname = requiredenum.getAttribute("name").?[3..];
                            var enumsgroup = root.findChildrenByTag("enums");
                            while (enumsgroup.next()) |enumgroup| {
                                var enums = enumgroup.findChildrenByTag("enum");
                                while (enums.next()) |constanty| {
                                    if (std.mem.eql(u8, constanty.getAttribute("name").?[3..], requiredname)) {
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
                                const removedname = removedenum.getAttribute("name").?[3..];
                                var enumsgroup = root.findChildrenByTag("enums");
                                while (enumsgroup.next()) |enumgroup| {
                                    var enums = enumgroup.findChildrenByTag("enum");
                                    while (enums.next()) |constanty| {
                                        if (std.mem.eql(u8, constanty.getAttribute("name").?[3..], removedname)) {
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
                            const removedname = removedenum.getAttribute("name").?[3..];
                            var enumsgroup = root.findChildrenByTag("enums");
                            while (enumsgroup.next()) |enumgroup| {
                                var enums = enumgroup.findChildrenByTag("enum");
                                while (enums.next()) |constanty| {
                                    if (std.mem.eql(u8, constanty.getAttribute("name").?[3..], removedname)) {
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
    const delist = try deduplicateConstants(try list.toOwnedSlice(), alloc);
    for (delist) |item| {
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
                                const requiredname = requiredcommand.getAttribute("name").?[2..];
                                var commandsgroup = root.findChildrenByTag("commands");
                                while (commandsgroup.next()) |commandgroup| {
                                    var commands = commandgroup.findChildrenByTag("command");
                                    while (commands.next()) |functiony| {
                                        if (std.mem.eql(u8, functiony.findChildByTag("proto").?.findChildByTag("name").?.children[0].char_data[2..], requiredname)) {
                                            var paramnames = std.ArrayList([]const u8).init(alloc);
                                            var paramtypes = std.ArrayList([]const u8).init(alloc);
                                            var params = functiony.findChildrenByTag("param");
                                            while (params.next()) |param| {
                                                var name = param.findChildByTag("name").?.children[0].char_data;
                                                if (std.mem.eql(u8, name, "type")) {
                                                    name = "@\"type\"";
                                                } else if (std.mem.eql(u8, name, "sync")) {
                                                    name = "_sync";
                                                }
                                                if (param.findChildByTag("ptype") != null) {
                                                    try paramtypes.append(try std.fmt.allocPrint(alloc, "{s}{s}", .{ typemodswitch(param, param.children[0].char_data, param.children[2].char_data), typeswitch(param.findChildByTag("ptype").?.children[0].char_data[2..]) }));
                                                } else {
                                                    try paramtypes.append("?*const anyopaque");
                                                }
                                            }
                                            var returntype: []const u8 = undefined;
                                            if (functiony.findChildByTag("proto").?.findChildByTag("ptype") != null) {
                                                returntype = typeswitch(functiony.findChildByTag("proto").?.findChildByTag("ptype").?.children[0].char_data[2..]);
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
                            const requiredname = requiredcommand.getAttribute("name").?[2..];
                            var commandsgroup = root.findChildrenByTag("commands");
                            while (commandsgroup.next()) |commandgroup| {
                                var commands = commandgroup.findChildrenByTag("command");
                                while (commands.next()) |functiony| {
                                    if (std.mem.eql(u8, functiony.findChildByTag("proto").?.findChildByTag("name").?.children[0].char_data[2..], requiredname)) {
                                        var paramnames = std.ArrayList([]const u8).init(alloc);
                                        var paramtypes = std.ArrayList([]const u8).init(alloc);
                                        var params = functiony.findChildrenByTag("param");
                                        while (params.next()) |param| {
                                            var name = param.findChildByTag("name").?.children[0].char_data;
                                            if (std.mem.eql(u8, name, "type")) {
                                                name = "@\"type\"";
                                            } else if (std.mem.eql(u8, name, "sync")) {
                                                name = "_sync";
                                            }
                                            try paramnames.append(name);
                                            if (param.findChildByTag("ptype") != null) {
                                                try paramtypes.append(try std.fmt.allocPrint(alloc, "{s}{s}", .{ typemodswitch(param, param.children[0].char_data, param.children[2].char_data), typeswitch(param.findChildByTag("ptype").?.children[0].char_data[2..]) }));
                                            } else {
                                                try paramtypes.append("?*const anyopaque");
                                            }
                                        }
                                        var returntype: []const u8 = undefined;
                                        if (functiony.findChildByTag("proto").?.findChildByTag("ptype") != null) {
                                            returntype = typeswitch(functiony.findChildByTag("proto").?.findChildByTag("ptype").?.children[0].char_data[2..]);
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
                                const removedname = removedcommand.getAttribute("name").?[2..];
                                var commandsgroup = root.findChildrenByTag("commands");
                                while (commandsgroup.next()) |commandgroup| {
                                    var commands = commandgroup.findChildrenByTag("command");
                                    while (commands.next()) |functiony| {
                                        if (std.mem.eql(u8, functiony.findChildByTag("proto").?.findChildByTag("name").?.children[0].char_data[2..], removedname)) {
                                            for (list.items, 0..) |funs, i| {
                                                if (std.mem.eql(u8, funs.name, removedname)) {
                                                    var paramnames = std.ArrayList([]const u8).init(alloc);
                                                    var paramtypes = std.ArrayList([]const u8).init(alloc);
                                                    var params = functiony.findChildrenByTag("param");
                                                    while (params.next()) |param| {
                                                        var name = param.findChildByTag("name").?.children[0].char_data;
                                                        if (std.mem.eql(u8, name, "type")) {
                                                            name = "@\"type\"";
                                                        } else if (std.mem.eql(u8, name, "sync")) {
                                                            name = "_sync";
                                                        }
                                                        try paramnames.append(name);
                                                        if (param.findChildByTag("ptype") != null) {
                                                            try paramtypes.append(try std.fmt.allocPrint(alloc, "{s}{s}", .{ typemodswitch(param, param.children[0].char_data, param.children[2].char_data), typeswitch(param.findChildByTag("ptype").?.children[0].char_data[2..]) }));
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
                        var removedcommands = remove.findChildrenByTag("command");
                        while (removedcommands.next()) |removedcommand| {
                            const removedname = removedcommand.getAttribute("name").?[2..];
                            var commandsgroup = root.findChildrenByTag("commands");
                            while (commandsgroup.next()) |commandgroup| {
                                var commands = commandgroup.findChildrenByTag("command");
                                while (commands.next()) |functiony| {
                                    if (std.mem.eql(u8, functiony.findChildByTag("proto").?.findChildByTag("name").?.children[0].char_data[2..], removedname)) {
                                        for (list.items, 0..) |funs, i| {
                                            if (std.mem.eql(u8, funs.name, removedname)) {
                                                var paramnames = std.ArrayList([]const u8).init(alloc);
                                                var paramtypes = std.ArrayList([]const u8).init(alloc);
                                                var params = functiony.findChildrenByTag("param");
                                                while (params.next()) |param| {
                                                    var name = param.findChildByTag("name").?.children[0].char_data;
                                                    if (std.mem.eql(u8, name, "type")) {
                                                        name = "@\"type\"";
                                                    } else if (std.mem.eql(u8, name, "sync")) {
                                                        name = "_sync";
                                                    }
                                                    if (param.findChildByTag("ptype") != null) {
                                                        try paramtypes.append(try std.fmt.allocPrint(alloc, "{s}{s}", .{ typemodswitch(param, param.children[0].char_data, param.children[2].char_data), typeswitch(param.findChildByTag("ptype").?.children[0].char_data[2..]) }));
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
                }
            }
        }
    }
    const delist = try deduplicateFunctions(try list.toOwnedSlice(), alloc);
    for (delist) |item| {
        _ = try out.write(try std.fmt.allocPrint(alloc, "pub fn {s}(", .{item.name}));
        if (item.paramnames.len != 0) {
            if (item.paramtypes.len != 0) {
                for (item.paramnames, 0..) |paramname, i| {
                    _ = try out.write(try std.fmt.allocPrint(alloc, "{s}: {s}", .{ paramname, item.paramtypes[i] }));
                    if (i + 2 > item.paramtypes.len) {
                        _ = try out.write(try std.fmt.allocPrint(alloc, ") {s} {{\n", .{item.returntype}));
                    } else {
                        _ = try out.write(", ");
                    }
                }
            }
        } else {
            _ = try out.write(try std.fmt.allocPrint(alloc, ") {s} {{\n", .{item.returntype}));
        }
        _ = try out.write(try std.fmt.allocPrint(alloc, "   return FuncTable.current.?.{s}(", .{item.name}));
        if (item.paramnames.len != 0) {
            if (item.paramtypes.len != 0) {
                for (item.paramnames, 0..) |paramname, i| {
                    _ = try out.write(try std.fmt.allocPrint(alloc, "{s}", .{paramname}));
                    if (i + 2 > item.paramtypes.len) {
                        _ = try out.write(try std.fmt.allocPrint(alloc, ");\n}}\n", .{}));
                    } else {
                        _ = try out.write(", ");
                    }
                }
            }
        } else {
            _ = try out.write(try std.fmt.allocPrint(alloc, ");\n}}\n", .{}));
        }
    }
    _ = try out.write("pub const FuncTable = struct {\n   threadlocal var current: ?*const FuncTable = null;\n");
    for (delist) |item| {
        _ = try out.write(try std.fmt.allocPrint(alloc, "   {s}: *const fn (", .{item.name}));
        if (item.paramnames.len != 0) {
            if (item.paramtypes.len != 0) {
                for (item.paramnames, 0..) |paramname, i| {
                    _ = try out.write(try std.fmt.allocPrint(alloc, "{s}: {s}", .{ paramname, item.paramtypes[i] }));
                    if (i + 2 > item.paramtypes.len) {
                        _ = try out.write(try std.fmt.allocPrint(alloc, ") callconv(APIENTRY) {s},\n", .{item.returntype}));
                    } else {
                        _ = try out.write(", ");
                    }
                }
            }
        } else {
            _ = try out.write(try std.fmt.allocPrint(alloc, ") callconv(APIENTRY) {s},\n", .{item.returntype}));
        }
    }
    _ = try out.write(funcTableFunctions ++ "\n};");
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
    _ = try out.write("const std = @import(\"std\");\nconst builtin = @import(\"builtin\");\n\n");
    _ = try out.write(try std.fmt.allocPrint(alloc, infotemplate ++ "\n\n", .{ api, version_major, version_minor, profile }));
    _ = try out.write("pub fn makeFuncTableCurrent(procs: ?*const FuncTable) void {{\n  FuncTable.current = procs;\n}}\n\n");
    _ = try out.write("pub fn getCurrentFuncTable() ?*const FuncTable{{\n   return FuncTable.current;\n}}\n\n");
    _ = try out.write(glTypes ++ "\n\n");
}

fn typeswitch(intype: []const u8) []const u8 {
    if (std.mem.eql(u8, "DEBUGPROC", intype)) {
        return "?DEBUGPROC";
    } else if (std.mem.eql(u8, "enum", intype)) {
        return "@\"enum\"";
    }
    return intype;
}

fn typemodswitch(part: *xml.Element, mod1: ?[]const u8, mod2: ?[]const u8) []const u8 {
    var isbuffer: bool = false;
    if (part.getAttribute("class") != null) {
        isbuffer = std.mem.eql(u8, "buffer", part.getAttribute("class").?);
    }
    if (std.mem.eql(u8, "const ", mod1.?) and std.mem.eql(u8, " *const*", mod2.?)) {
        return "[*c]const [*c]const ";
    } else if (std.mem.eql(u8, "const ", mod1.?) and std.mem.eql(u8, " *", mod2.?) and isbuffer) {
        return "[*]";
    } else if (std.mem.eql(u8, "const ", mod1.?) and std.mem.eql(u8, " *", mod2.?) and !isbuffer) {
        return "[*c]const ";
    } else if (std.mem.eql(u8, " *", mod2.?) and !std.mem.eql(u8, "const ", mod1.?)) {
        return "[*c]";
    } else if (part.getAttribute("len") != null) {
        if (std.mem.eql(u8, "COMPSIZE(buffer)", part.getAttribute("len").?)) {
            return "[*]const ";
        }
    }
    return "";
}

fn deduplicateConstants(array: []constant, alloc: std.mem.Allocator) ![]constant {
    var allKeys = std.StringHashMap(bool).init(alloc);
    defer allKeys.deinit();
    var list = std.ArrayList(constant).init(alloc);
    for (array) |item| {
        if (allKeys.get(item.name) != null) {
            if (allKeys.get(item.name).? == false) {
                try allKeys.put(item.name, true);
                try list.append(item);
            }
        } else {
            try allKeys.put(item.name, false);
        }
    }
    for (array) |item| {
        if (allKeys.get(item.name) != null) {
            if (allKeys.get(item.name).? == false) {
                try allKeys.put(item.name, true);
                try list.append(item);
            }
        }
    }
    return try list.toOwnedSlice();
}

fn deduplicateFunctions(array: []function, alloc: std.mem.Allocator) ![]function {
    var allKeys = std.StringHashMap(bool).init(alloc);
    defer allKeys.deinit();
    var list = std.ArrayList(function).init(alloc);
    for (array) |item| {
        if (allKeys.get(item.name) != null) {
            if (allKeys.get(item.name).? == false) {
                try allKeys.put(item.name, true);
                try list.append(item);
            }
        } else {
            try allKeys.put(item.name, false);
        }
    }
    for (array) |item| {
        if (allKeys.get(item.name) != null) {
            if (allKeys.get(item.name).? == false) {
                try allKeys.put(item.name, true);
                try list.append(item);
            }
        }
    }
    return try list.toOwnedSlice();
}
const funcTableFunctions =
    \\   pub fn init(procs: *FuncTable, loader: anytype) bool {
    \\      @setEvalBranchQuota(1_000_000);
    \\      var success: u1 = 1;
    \\      inline for (@typeInfo(FuncTable).@"struct".fields) |field_info| {
    \\          switch (@typeInfo(field_info.type)) {
    \\              .pointer => |ptr_info| switch (@typeInfo(ptr_info.child)) {
    \\                  .@"fn" => {
    \\                      success &= @intFromBool(procs.initCommand(loader, field_info.name));
    \\                  },
    \\                  else => comptime unreachable,
    \\              },
    \\              else => comptime unreachable,
    \\          }
    \\      }
    \\      return success != 0;
    \\   }
    \\
    \\   fn initCommand(procs: *FuncTable, loader: anytype, comptime name: [:0]const u8) bool {
    \\      if (getProcAddress(loader, "gl" ++ name)) |proc| {
    \\          @field(procs, name) = @ptrCast(proc);
    \\          return true;
    \\      } else {
    \\          return @typeInfo(@TypeOf(@field(procs, name))) == .optional;
    \\      }
    \\   }
    \\
    \\   fn getProcAddress(loader: anytype, prefixed_name: [:0]const u8) ?PROC {
    \\      const loader_info = @typeInfo(@TypeOf(loader));
    \\      const loader_is_fn =
    \\          loader_info == .@"fn" or
    \\          loader_info == .pointer and @typeInfo(loader_info.pointer.child) == .@"fn";
    \\      if (loader_is_fn) {
    \\          return @as(?PROC, loader(@as([:0]const u8, prefixed_name)));
    \\      } else {
    \\          return @as(?PROC, loader.getProcAddress(@as([:0]const u8, prefixed_name)));
    \\      }
    \\   }
;
const glTypes =
    \\pub const APIENTRY: std.builtin.CallingConvention = if (builtin.os.tag == .windows and builtin.cpu.arch == .x86) .Stdcall else .C;
    \\pub const PROC = *align(@alignOf(fn () callconv(APIENTRY) void)) const anyopaque;
    \\
    \\pub const DEBUGPROC = *const fn (source: @"enum", @"type": @"enum", id: uint, severity: @"enum", length: sizei, message: [*:0]const char, userParam: ?*const anyopaque) callconv(APIENTRY) void;
    \\pub const bitfield = c_uint;
    \\pub const boolean = u8;
    \\pub const byte = i8;
    \\pub const char = u8;
    \\pub const clampd = f64;
    \\pub const clampf = f32;
    \\pub const double = f64;
    \\pub const @"enum" = c_uint;
    \\pub const float = f32;
    \\pub const half = u16;
    \\pub const int = c_int;
    \\pub const int64 = i64;
    \\pub const intptr = isize;
    \\pub const short = i16;
    \\pub const sizei = c_int;
    \\pub const sizeiptr = isize;
    \\pub const sync = *opaque {};
    \\pub const ubyte = u8;
    \\pub const uint = c_uint;
    \\pub const uint64 = u64;
    \\pub const ushort = u16;
;
