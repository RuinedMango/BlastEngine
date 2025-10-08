//! By convention, root.zig is the root source file when making a library. If
//! you are making an executable, the convention is to delete this file and
//! start with main.zig instead.
const std = @import("std");
const testing = std.testing;

const LoadPNGError = error{
    InvalidPNG,
};

const ChunkType = enum {
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

var PNG_SIG = [_]u8{ 0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A };

pub fn decodeFromMem(alloc: std.mem.Allocator, data: []u8, width: *u32, height: *u32, bitDepth: *u8, colorType: *u8) ![]u8 {
    var compressionMethod: u8 = 0;
    var filterMethod: u8 = 0;
    var interlaceMethod: u8 = 0;

    const decodedData: std.ArrayList(u8) = std.ArrayList(u8).init(alloc);

    const sig = data[0..8];
    if (!std.mem.eql(u8, sig, &PNG_SIG)) {
        std.debug.print("Invalid PNG", .{});
        return LoadPNGError.InvalidPNG;
    }
    var pointer: u64 = 8;
    var stillReading = true;
    while (stillReading) {
        const length = std.mem.readInt(u32, @ptrCast(data[pointer .. pointer + 4]), std.builtin.Endian.big);
        std.debug.print("{}\n", .{length});
        pointer += 4;
        const name = data[pointer .. pointer + 4];
        std.debug.print("{s}\n", .{name});
        pointer += 4;
        const cdata = data[pointer .. pointer + length];
        const ctype = std.meta.stringToEnum(ChunkType, name);
        if (ctype != null) {
            try switch (ctype.?) {
                .IHDR => handleIHDR(cdata, width, height, bitDepth, colorType, &compressionMethod, &filterMethod, &interlaceMethod),
                .IDAT => try handleIDAT(alloc, cdata, decodedData, width.*, height.*, colorType.*),
                .IEND => stillReading = false,
                else => std.debug.print("working on it\n", .{}),
            };
        } else {
            std.debug.print("Cannot handle {s}\n", .{name});
        }
        pointer += length;
        //CRC offset;
        pointer += 4;
    }
    return decodedData.items;
}

pub fn decodeFromFile(fileName: []u8) ![]u8 {
    _ = fileName;
}

pub fn decodeFromReader(reader: std.io.AnyReader) ![]u8 {
    _ = reader;
}

fn handleIHDR(data: []u8, width: *u32, height: *u32, bitDepth: *u8, colorType: *u8, compressionMethod: *u8, filterMethod: *u8, interlaceMethod: *u8) !void {
    width.* = std.mem.readInt(u32, data[0..4], std.builtin.Endian.big);
    height.* = std.mem.readInt(u32, data[4..8], std.builtin.Endian.big);
    bitDepth.* = data[8];
    colorType.* = data[9];
    compressionMethod.* = data[10];
    filterMethod.* = data[11];
    interlaceMethod.* = data[12];
}

fn handleIDAT(alloc: std.mem.Allocator, data: []u8, out: std.ArrayList(u8), width: u32, height: u32, colorType: u8) !void {
    var stream = std.io.fixedBufferStream(data);
    const reader = stream.reader();

    const rowBytes: u32 = (if (colorType == 3) 1 else if (colorType == 2) 3 else 4) * width + 1;
    const totalRaw = rowBytes * height;
    var raw = try alloc.alloc(u8, totalRaw);
    const rawWrite = std.io.fixedBufferStream(raw).writer();

    std.compress.zlib.decompress(reader, rawWrite);

    var prevRow = try alloc.alloc(u8, rowBytes - 1);
    @memset(&prevRow, 0);
    defer alloc.free(prevRow);

    var readptr: usize = 0;
    var writeptr: usize = 0;
    for (0..height) |y| {
        _ = y;

        const filter = raw[readptr];
        readptr += 1;
        const rowData = raw[readptr .. readptr + (rowBytes - 1)];
        readptr += rowBytes - 1;

        var curRow = try alloc.alloc(u8, rowBytes - 1);
        for (0..(rowBytes - 1)) |x| {
            const rawByte = rowData[x];
            const a = if (x > 0) curRow[x - 1] else 0;
            const b = prevRow[x];
            const c = if (x > 0) prevRow[x - 1] else 0;
            curRow[x] = switch (filter) {
                0 => rawByte,
                1 => rawByte + a,
                2 => rawByte + b,
                3 => rawByte + ((a + b) / 2),
                4 => rawByte + paeth(a, b, c),
            };
        }
        var idx: usize = 0;
        for (0..width) |_| {
            if (colorType == 2 or colorType == 6) {
                const hasAlpha = (colorType == 6);
                const r = curRow[idx + 0];
                const g = curRow[idx + 1];
                const b = curRow[idx + 2];
                const a = if (hasAlpha) curRow[idx + 3] else 0xFF;
                out[writeptr] = r;
                out[writeptr + 1] = g;
                out[writeptr + 2] = b;
                out[writeptr + 3] = a;
                writeptr += 4;
                idx += if (hasAlpha) 4 else 3;
            } else if (colorType == 3) {
                //Working on it
            } else {}
        }
        alloc.free(prevRow);
        prevRow = curRow;
    }
}

fn paeth(a: u8, b: u8, c: u8) u8 {
    const p = a + b - c;
    const pa = @abs(p - a);
    const pb = @abs(p - b);
    const pc = @abs(p - c);
    var pr: u8 = undefined;
    if (pa <= pb and pa <= pc) {
        pr = a;
    } else if (pb <= pc) {
        pr = b;
    } else {
        pr = c;
    }
    return pr;
}

test "Should work" {
    const data = try std.fs.cwd().readFileAlloc(testing.allocator, "Lenna_(test_image).png", 999999);
    defer testing.allocator.free(data);

    var width: u32 = 0;
    var height: u32 = 0;
    var bitDepth: u8 = 0;
    var colorType: u8 = 0;
    const out = decodeFromMem(testing.allocator, data, &width, &height, &bitDepth, &colorType) catch |err| {
        try testing.expect(err != LoadPNGError.InvalidPNG);
        return;
    };
    try testing.expectEqualStrings(out, "");
}
