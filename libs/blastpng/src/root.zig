//! By convention, root.zig is the root source file when making a library. If
//! you are making an executable, the convention is to delete this file and
//! start with main.zig instead.
const std = @import("std");
const testing = std.testing;

const LoadPNGError = error{
    InvalidPNG,
    
};

var PNG_SIG = [_]u8{0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A};

pub fn decodeFromMem(data: []u8, width: *u32, height: *u32, bitDepth: *u8, colorType: *u8) ![]u8{
    const sig = data[0..8];
    if(!std.mem.eql(u8, sig, &PNG_SIG)){
        std.debug.print("Invalid PNG", .{});
        return LoadPNGError.InvalidPNG;
    }

    const IHDR = data[8..22];
    width = @ptrCast(IHDR[0..4]);
    height.* = IHDR[4..9];
    bitDepth.* = IHDR[9..10];
    colorType.* = IHDR[11..12];

    return "";
}

pub fn decodeFromFile(fileName: []u8) ![]u8{
    _ = fileName;
}

pub fn decodeFromReader(reader: std.io.AnyReader) ![]u8{
    _ = reader;
}

test "Should work" {
    const data = try std.fs.cwd().readFileAlloc(testing.allocator, "Lenna_(test_image).png", 999999);
    var width: u32 = 0;
    var height: u32 = 0;
    var bitDepth: u8 = 0;
    var colorType: u8 = 0;
    const out = decodeFromMem(data, &width, &height, &bitDepth, &colorType) catch |err|{
        try testing.expect(err != LoadPNGError.InvalidPNG);
        return;
    };
    try testing.expectEqualStrings(out, "");
}
