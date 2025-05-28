//! By convention, root.zig is the root source file when making a library. If
//! you are making an executable, the convention is to delete this file and
//! start with main.zig instead.
const std = @import("std");
const testing = std.testing;

const LoadPNGError = error{
    InvalidPNG,
    
};

const ChunkType = enum{
    IHDR,
    PLTE,
    IDAT,
    IEND,
    bKGD,
    cHRM,
    cICP,
    dSIG,
    eXIf,
    gAMA,
    hIST,
    iCCP,
    iTXt,
    pHYs,
    sBIT,
    sPLT,
    sRGB,
    sTER,
    tEXt,
    tIME,
    tRNS,
    zTXt,
};

var PNG_SIG = [_]u8{0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A};

pub fn decodeFromMem(alloc: std.mem.Allocator, data: []u8, width: *u32, height: *u32, bitDepth: *u8, colorType: *u8) ![]u8{
    const compressionMethod: u8 = 0;
    const filterMethod: u8 = 0;
    const interlaceMethod: u8 = 0;
    
    const decodedData: std.ArrayList(u8) = std.ArrayList(u8).init(alloc);

    const sig = data[0..8];
    if(!std.mem.eql(u8, sig, &PNG_SIG)){
        std.debug.print("Invalid PNG", .{});
        return LoadPNGError.InvalidPNG;
    }
    var pointer: u64 = 8;
    var stillReading = true;
    while(stillReading){
        const length = std.mem.readInt(u32, @ptrCast(data[pointer..pointer+4]), std.builtin.Endian.big);
        std.debug.print("{}\n", .{length}); 
        pointer += 4;
        const name = data[pointer..pointer+4];
        std.debug.print("{s}\n", .{name});
        pointer += 4;
        const cdata = data[pointer..pointer+length];
        const ctype = std.meta.stringToEnum(ChunkType, name);
        if(ctype != null){
            try switch(ctype.?) {
                .IHDR => handleIHDR(cdata, width, height, bitDepth, colorType, &compressionMethod, &filterMethod, &interlaceMethod),
                .IDAT => handleIDAT(cdata, decodedData),
                .IEND => stillReading = false,
                else => std.debug.print("working on it\n", .{}),
            };     
        }else{
            std.debug.print("Cannot handle {s}\n", .{name});
        }
        pointer += length;
        //CRC offset;
        pointer += 4;
    }
    return decodedData.items;
}

pub fn decodeFromFile(fileName: []u8) ![]u8{
    _ = fileName;
}

pub fn decodeFromReader(reader: std.io.AnyReader) ![]u8{
    _ = reader;
}

fn handleIHDR(data: []u8, width: *u32, height: *u32, bitDepth: *u8, colorType: *u8, compressionMethod: *u8, filterMethod: *u8, interlaceMethod: *u8) !void{
    width.* = std.mem.readInt(u32, data[0..4], std.builtin.Endian.big);
    height.* = std.mem.readInt(u32, data[4..8], std.builtin.Endian.big);
    bitDepth.* = data[8];
    colorType.* = data[9];
    compressionMethod.* = data[10];
    filterMethod.* = data[11];
    interlaceMethod.* = data[12];
}

fn handleIDAT(data: []u8, out: std.ArrayList(u8)) !void{
    var stream = std.io.fixedBufferStream(data).reader();
}

test "Should work" {
    const data = try std.f.cwd().readFileAlloc(testing.allocator, "Lenna_(test_image).png", 999999);
    defer testing.allocator.free(data);

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
