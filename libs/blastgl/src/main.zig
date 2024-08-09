const std = @import("std");
const xml = @import("xml.zig");

const api = "gl";
const version = "4.6";
const profile = "core";

pub fn main() !void {
    const file = try std.fs.cwd().createFile("gl.zig", .{ .read = true });
    defer file.close();
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const allocator = arena.allocator();
    const glxml: []const u8 = try std.fs.cwd().readFileAlloc(allocator, "gl.xml", 500000000);
    const doc: xml.Document = xml.parse(allocator, glxml) catch |err| switch (err) {
        error.InvalidDocument,
        error.UnexpectedEof,
        error.UnexpectedCharacter,
        error.IllegalCharacter,
        error.InvalidEntity,
        error.InvalidName,
        error.InvalidStandaloneValue,
        error.NonMatchingClosingTag,
        error.UnclosedComment,
        error.UnclosedValue,
        => return error.InvalidXml,
        error.OutOfMemory => return error.OutOfMemory,
    };
    parseFeatures(root, file);
}

pub fn parseFeatures(root: *xml.Element, file: std.fs.File) void{
    const features = root.findChildrenByTag("feature");
    while(features.next()) |feature|{
        if(feature.getAttribute("api").? == api){
            if(std.fmt.parseFloat(f32, feature.getAttribute("number").?) <= std.fmt.parseFloat(u8, version)){
                parseRequire(feature, file);
                parseRemove(feature, file);
            }
        }
    }
}

pub fn parseRequire(feature: *xml.Element, file: std.fs.File) void{
   const requires = feature.findChildrenByTag("require");
   while(requires.next()) |require|{
       if(require.getAttribute("profile") == profile){
           parseRequireEnums(require);
           parseRequireCommands(require);
       }
   }
}

pub fn parseRemove(feature: *xml.Element, file: std.fs.File) void{
    const removes = feature.findChildrenByTag("remove");
    while(removes.next()) |remove|{
        if(remove.getAttribute("profile") == profile){
            parseRemoveEnums(remove);
            parseRequireCommands(remove);
        }
    }
}

pub fn parseRequireEnums(require: *xml.Element) void{
    const enums = require.findChildrenByTag("enum");
    while(enums.next()) |constant|{
        constant.getAttribute("name");
    }
}

pub fn parseRequireCommands(require: *xml.Element) void{
    const commands = require.findChildrenByTag("command");
    const i = 0;
    while(commands.next()) |function|{
        functions[i] = function.getAttribute("name");
        i += 1;
    }
}

pub fn parseRemoveEnums(remove: *xml.Element) void{
    const enums = remove.findChildrenByTag("enum");
    const
}

pub fn parseRemoveCommands(remove: *xml.Element) void{

}
