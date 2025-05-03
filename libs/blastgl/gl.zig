const std = @import("std");
const builtin = @import("builtin");

pub const info = struct {
  pub const api = .gl;
  pub const version_major = 3;
  pub const version_minor = 2;
  pub const profile = .core;
};

pub fn makeFuncTableCurrent(procs: ?*const FuncTable) void {{
  FuncTable.current = procs;
}}

pub fn getCurrentFuncTable() ?*const FuncTable{{
   return FuncTable.current;
}}

pub const APIENTRY: std.builtin.CallingConvention = if (builtin.os.tag == .windows and builtin.cpu.arch == .x86) .Stdcall else .C;
pub const PROC = *align(@alignOf(fn () callconv(APIENTRY) void)) const anyopaque;

pub const DEBUGPROC = *const fn (source: @"enum", @"type": @"enum", id: uint, severity: @"enum", length: sizei, message: [*:0]const char, userParam: ?*const anyopaque) callconv(APIENTRY) void;
pub const bitfield = c_uint;
pub const boolean = u8;
pub const byte = i8;
pub const char = u8;
pub const clampd = f64;
pub const clampf = f32;
pub const double = f64;
pub const @"enum" = c_uint;
pub const float = f32;
pub const half = u16;
pub const int = c_int;
pub const int64 = i64;
pub const intptr = isize;
pub const short = i16;
pub const sizei = c_int;
pub const sizeiptr = isize;
pub const sync = *opaque {};
pub const ubyte = u8;
pub const uint = c_uint;
pub const uint64 = u64;
pub const ushort = u16;

pub const DEPTH_BUFFER_BIT = 0x00000100;
pub const STENCIL_BUFFER_BIT = 0x00000400;
pub const COLOR_BUFFER_BIT = 0x00004000;
pub const FALSE = 0;
pub const TRUE = 1;
pub const POINTS = 0x0000;
pub const LINES = 0x0001;
pub const LINE_LOOP = 0x0002;
pub const LINE_STRIP = 0x0003;
pub const TRIANGLES = 0x0004;
pub const TRIANGLE_STRIP = 0x0005;
pub const TRIANGLE_FAN = 0x0006;
pub const TIMEOUT_IGNORED = 0xFFFFFFFFFFFFFFFF;
pub const NEVER = 0x0200;
pub const LESS = 0x0201;
pub const EQUAL = 0x0202;
pub const LEQUAL = 0x0203;
pub const GREATER = 0x0204;
pub const NOTEQUAL = 0x0205;
pub const GEQUAL = 0x0206;
pub const ALWAYS = 0x0207;
pub const ZERO = 0;
pub const ONE = 1;
pub const SRC_COLOR = 0x0300;
pub const ONE_MINUS_SRC_COLOR = 0x0301;
pub const SRC_ALPHA = 0x0302;
pub const ONE_MINUS_SRC_ALPHA = 0x0303;
pub const DST_ALPHA = 0x0304;
pub const ONE_MINUS_DST_ALPHA = 0x0305;
pub const DST_COLOR = 0x0306;
pub const ONE_MINUS_DST_COLOR = 0x0307;
pub const SRC_ALPHA_SATURATE = 0x0308;
pub const NONE = 0;
pub const FRONT_LEFT = 0x0400;
pub const FRONT_RIGHT = 0x0401;
pub const BACK_LEFT = 0x0402;
pub const BACK_RIGHT = 0x0403;
pub const FRONT = 0x0404;
pub const BACK = 0x0405;
pub const LEFT = 0x0406;
pub const RIGHT = 0x0407;
pub const FRONT_AND_BACK = 0x0408;
pub const NO_ERROR = 0;
pub const INVALID_ENUM = 0x0500;
pub const INVALID_VALUE = 0x0501;
pub const INVALID_OPERATION = 0x0502;
pub const OUT_OF_MEMORY = 0x0505;
pub const CW = 0x0900;
pub const CCW = 0x0901;
pub const POINT_SIZE = 0x0B11;
pub const POINT_SIZE_RANGE = 0x0B12;
pub const POINT_SIZE_GRANULARITY = 0x0B13;
pub const LINE_SMOOTH = 0x0B20;
pub const LINE_WIDTH = 0x0B21;
pub const LINE_WIDTH_RANGE = 0x0B22;
pub const LINE_WIDTH_GRANULARITY = 0x0B23;
pub const POLYGON_MODE = 0x0B40;
pub const POLYGON_SMOOTH = 0x0B41;
pub const CULL_FACE = 0x0B44;
pub const CULL_FACE_MODE = 0x0B45;
pub const FRONT_FACE = 0x0B46;
pub const DEPTH_RANGE = 0x0B70;
pub const DEPTH_TEST = 0x0B71;
pub const DEPTH_WRITEMASK = 0x0B72;
pub const DEPTH_CLEAR_VALUE = 0x0B73;
pub const DEPTH_FUNC = 0x0B74;
pub const STENCIL_TEST = 0x0B90;
pub const STENCIL_CLEAR_VALUE = 0x0B91;
pub const STENCIL_FUNC = 0x0B92;
pub const STENCIL_VALUE_MASK = 0x0B93;
pub const STENCIL_FAIL = 0x0B94;
pub const STENCIL_PASS_DEPTH_FAIL = 0x0B95;
pub const STENCIL_PASS_DEPTH_PASS = 0x0B96;
pub const STENCIL_REF = 0x0B97;
pub const STENCIL_WRITEMASK = 0x0B98;
pub const VIEWPORT = 0x0BA2;
pub const DITHER = 0x0BD0;
pub const BLEND_DST = 0x0BE0;
pub const BLEND_SRC = 0x0BE1;
pub const BLEND = 0x0BE2;
pub const LOGIC_OP_MODE = 0x0BF0;
pub const DRAW_BUFFER = 0x0C01;
pub const READ_BUFFER = 0x0C02;
pub const SCISSOR_BOX = 0x0C10;
pub const SCISSOR_TEST = 0x0C11;
pub const COLOR_CLEAR_VALUE = 0x0C22;
pub const COLOR_WRITEMASK = 0x0C23;
pub const DOUBLEBUFFER = 0x0C32;
pub const STEREO = 0x0C33;
pub const LINE_SMOOTH_HINT = 0x0C52;
pub const POLYGON_SMOOTH_HINT = 0x0C53;
pub const UNPACK_SWAP_BYTES = 0x0CF0;
pub const UNPACK_LSB_FIRST = 0x0CF1;
pub const UNPACK_ROW_LENGTH = 0x0CF2;
pub const UNPACK_SKIP_ROWS = 0x0CF3;
pub const UNPACK_SKIP_PIXELS = 0x0CF4;
pub const UNPACK_ALIGNMENT = 0x0CF5;
pub const PACK_SWAP_BYTES = 0x0D00;
pub const PACK_LSB_FIRST = 0x0D01;
pub const PACK_ROW_LENGTH = 0x0D02;
pub const PACK_SKIP_ROWS = 0x0D03;
pub const PACK_SKIP_PIXELS = 0x0D04;
pub const PACK_ALIGNMENT = 0x0D05;
pub const MAX_TEXTURE_SIZE = 0x0D33;
pub const MAX_VIEWPORT_DIMS = 0x0D3A;
pub const SUBPIXEL_BITS = 0x0D50;
pub const TEXTURE_1D = 0x0DE0;
pub const TEXTURE_2D = 0x0DE1;
pub const TEXTURE_WIDTH = 0x1000;
pub const TEXTURE_HEIGHT = 0x1001;
pub const TEXTURE_BORDER_COLOR = 0x1004;
pub const DONT_CARE = 0x1100;
pub const FASTEST = 0x1101;
pub const NICEST = 0x1102;
pub const BYTE = 0x1400;
pub const UNSIGNED_BYTE = 0x1401;
pub const SHORT = 0x1402;
pub const UNSIGNED_SHORT = 0x1403;
pub const INT = 0x1404;
pub const UNSIGNED_INT = 0x1405;
pub const FLOAT = 0x1406;
pub const SYNC_GPU_COMMANDS_COMPLETE = 0x9117;
pub const SYNC_FENCE = 0x9116;
pub const CLEAR = 0x1500;
pub const AND = 0x1501;
pub const AND_REVERSE = 0x1502;
pub const COPY = 0x1503;
pub const AND_INVERTED = 0x1504;
pub const NOOP = 0x1505;
pub const XOR = 0x1506;
pub const OR = 0x1507;
pub const NOR = 0x1508;
pub const EQUIV = 0x1509;
pub const INVERT = 0x150A;
pub const OR_REVERSE = 0x150B;
pub const COPY_INVERTED = 0x150C;
pub const OR_INVERTED = 0x150D;
pub const NAND = 0x150E;
pub const SET = 0x150F;
pub const TEXTURE = 0x1702;
pub const COLOR = 0x1800;
pub const DEPTH = 0x1801;
pub const STENCIL = 0x1802;
pub const STENCIL_INDEX = 0x1901;
pub const DEPTH_COMPONENT = 0x1902;
pub const RED = 0x1903;
pub const GREEN = 0x1904;
pub const BLUE = 0x1905;
pub const ALPHA = 0x1906;
pub const RGB = 0x1907;
pub const RGBA = 0x1908;
pub const POINT = 0x1B00;
pub const LINE = 0x1B01;
pub const FILL = 0x1B02;
pub const KEEP = 0x1E00;
pub const REPLACE = 0x1E01;
pub const INCR = 0x1E02;
pub const DECR = 0x1E03;
pub const VENDOR = 0x1F00;
pub const RENDERER = 0x1F01;
pub const VERSION = 0x1F02;
pub const EXTENSIONS = 0x1F03;
pub const NEAREST = 0x2600;
pub const LINEAR = 0x2601;
pub const NEAREST_MIPMAP_NEAREST = 0x2700;
pub const LINEAR_MIPMAP_NEAREST = 0x2701;
pub const NEAREST_MIPMAP_LINEAR = 0x2702;
pub const LINEAR_MIPMAP_LINEAR = 0x2703;
pub const TEXTURE_MAG_FILTER = 0x2800;
pub const TEXTURE_MIN_FILTER = 0x2801;
pub const TEXTURE_WRAP_S = 0x2802;
pub const TEXTURE_WRAP_T = 0x2803;
pub const REPEAT = 0x2901;
pub const MAX_INTEGER_SAMPLES = 0x9110;
pub const MAX_DEPTH_TEXTURE_SAMPLES = 0x910F;
pub const MAX_COLOR_TEXTURE_SAMPLES = 0x910E;
pub const UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910D;
pub const INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910C;
pub const SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910B;
pub const UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = 0x910A;
pub const INT_SAMPLER_2D_MULTISAMPLE = 0x9109;
pub const SAMPLER_2D_MULTISAMPLE = 0x9108;
pub const TEXTURE_FIXED_SAMPLE_LOCATIONS = 0x9107;
pub const TEXTURE_SAMPLES = 0x9106;
pub const TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY = 0x9105;
pub const TEXTURE_BINDING_2D_MULTISAMPLE = 0x9104;
pub const PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY = 0x9103;
pub const TEXTURE_2D_MULTISAMPLE_ARRAY = 0x9102;
pub const PROXY_TEXTURE_2D_MULTISAMPLE = 0x9101;
pub const TEXTURE_2D_MULTISAMPLE = 0x9100;
pub const MAX_SAMPLE_MASK_WORDS = 0x8E59;
pub const SYNC_FLUSH_COMMANDS_BIT = 0x00000001;
pub const WAIT_FAILED = 0x911D;
pub const CONDITION_SATISFIED = 0x911C;
pub const TIMEOUT_EXPIRED = 0x911B;
pub const ALREADY_SIGNALED = 0x911A;
pub const SIGNALED = 0x9119;
pub const UNSIGNALED = 0x9118;
pub const SYNC_FLAGS = 0x9115;
pub const SYNC_STATUS = 0x9114;
pub const SYNC_CONDITION = 0x9113;
pub const OBJECT_TYPE = 0x9112;
pub const MAX_SERVER_WAIT_TIMEOUT = 0x9111;
pub const TEXTURE_CUBE_MAP_SEAMLESS = 0x884F;
pub const PROVOKING_VERTEX = 0x8E4F;
pub const LAST_VERTEX_CONVENTION = 0x8E4E;
pub const FIRST_VERTEX_CONVENTION = 0x8E4D;
pub const QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION = 0x8E4C;
pub const DEPTH_CLAMP = 0x864F;
pub const CONTEXT_PROFILE_MASK = 0x9126;
pub const MAX_FRAGMENT_INPUT_COMPONENTS = 0x9125;
pub const MAX_GEOMETRY_OUTPUT_COMPONENTS = 0x9124;
pub const MAX_GEOMETRY_INPUT_COMPONENTS = 0x9123;
pub const MAX_VERTEX_OUTPUT_COMPONENTS = 0x9122;
pub const MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS = 0x8DE1;
pub const MAX_GEOMETRY_OUTPUT_VERTICES = 0x8DE0;
pub const MAX_GEOMETRY_UNIFORM_COMPONENTS = 0x8DDF;
pub const GEOMETRY_OUTPUT_TYPE = 0x8918;
pub const GEOMETRY_INPUT_TYPE = 0x8917;
pub const GEOMETRY_VERTICES_OUT = 0x8916;
pub const GEOMETRY_SHADER = 0x8DD9;
pub const FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS = 0x8DA8;
pub const FRAMEBUFFER_ATTACHMENT_LAYERED = 0x8DA7;
pub const MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = 0x8C29;
pub const PROGRAM_POINT_SIZE = 0x8642;
pub const TRIANGLE_STRIP_ADJACENCY = 0x000D;
pub const TRIANGLES_ADJACENCY = 0x000C;
pub const LINE_STRIP_ADJACENCY = 0x000B;
pub const LINES_ADJACENCY = 0x000A;
pub const CONTEXT_COMPATIBILITY_PROFILE_BIT = 0x00000002;
pub const UNIFORM_BLOCK_DATA_SIZE = 0x8A40;
pub const UNIFORM_BLOCK_BINDING = 0x8A3F;
pub const UNIFORM_IS_ROW_MAJOR = 0x8A3E;
pub const UNIFORM_MATRIX_STRIDE = 0x8A3D;
pub const UNIFORM_ARRAY_STRIDE = 0x8A3C;
pub const UNIFORM_OFFSET = 0x8A3B;
pub const UNIFORM_BLOCK_INDEX = 0x8A3A;
pub const UNIFORM_NAME_LENGTH = 0x8A39;
pub const UNIFORM_SIZE = 0x8A38;
pub const UNIFORM_TYPE = 0x8A37;
pub const ACTIVE_UNIFORM_BLOCKS = 0x8A36;
pub const ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH = 0x8A35;
pub const UNIFORM_BUFFER_OFFSET_ALIGNMENT = 0x8A34;
pub const MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 0x8A33;
pub const MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = 0x8A32;
pub const MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 0x8A31;
pub const MAX_UNIFORM_BLOCK_SIZE = 0x8A30;
pub const MAX_UNIFORM_BUFFER_BINDINGS = 0x8A2F;
pub const MAX_COMBINED_UNIFORM_BLOCKS = 0x8A2E;
pub const MAX_FRAGMENT_UNIFORM_BLOCKS = 0x8A2D;
pub const MAX_GEOMETRY_UNIFORM_BLOCKS = 0x8A2C;
pub const MAX_VERTEX_UNIFORM_BLOCKS = 0x8A2B;
pub const UNIFORM_BUFFER_SIZE = 0x8A2A;
pub const UNIFORM_BUFFER_START = 0x8A29;
pub const UNIFORM_BUFFER_BINDING = 0x8A28;
pub const UNIFORM_BUFFER = 0x8A11;
pub const COPY_WRITE_BUFFER = 0x8F37;
pub const COPY_READ_BUFFER = 0x8F36;
pub const PRIMITIVE_RESTART_INDEX = 0x8F9E;
pub const PRIMITIVE_RESTART = 0x8F9D;
pub const SIGNED_NORMALIZED = 0x8F9C;
pub const RGBA16_SNORM = 0x8F9B;
pub const RGB16_SNORM = 0x8F9A;
pub const RG16_SNORM = 0x8F99;
pub const R16_SNORM = 0x8F98;
pub const RGBA8_SNORM = 0x8F97;
pub const RGB8_SNORM = 0x8F96;
pub const RG8_SNORM = 0x8F95;
pub const R8_SNORM = 0x8F94;
pub const MAX_RECTANGLE_TEXTURE_SIZE = 0x84F8;
pub const PROXY_TEXTURE_RECTANGLE = 0x84F7;
pub const TEXTURE_BINDING_RECTANGLE = 0x84F6;
pub const TEXTURE_RECTANGLE = 0x84F5;
pub const TEXTURE_BUFFER_DATA_STORE_BINDING = 0x8C2D;
pub const TEXTURE_BINDING_BUFFER = 0x8C2C;
pub const TEXTURE_BUFFER = 0x8C2A;
pub const UNSIGNED_INT_SAMPLER_BUFFER = 0x8DD8;
pub const UNSIGNED_INT_SAMPLER_2D_RECT = 0x8DD5;
pub const INT_SAMPLER_2D_RECT = 0x8DCD;
pub const SAMPLER_BUFFER = 0x8DC2;
pub const SAMPLER_2D_RECT_SHADOW = 0x8B64;
pub const SAMPLER_2D_RECT = 0x8B63;
pub const SHADER_TYPE = 0x8B4F;
pub const FLOAT_VEC2 = 0x8B50;
pub const FLOAT_VEC3 = 0x8B51;
pub const VERTEX_ARRAY_BINDING = 0x85B5;
pub const RG32UI = 0x823C;
pub const RG32I = 0x823B;
pub const RG16UI = 0x823A;
pub const RG16I = 0x8239;
pub const RG8UI = 0x8238;
pub const RG8I = 0x8237;
pub const R32UI = 0x8236;
pub const R32I = 0x8235;
pub const R16UI = 0x8234;
pub const R16I = 0x8233;
pub const R8UI = 0x8232;
pub const R8I = 0x8231;
pub const RG32F = 0x8230;
pub const RG16F = 0x822F;
pub const R32F = 0x822E;
pub const R16F = 0x822D;
pub const RG16 = 0x822C;
pub const RG8 = 0x822B;
pub const R16 = 0x822A;
pub const R8 = 0x8229;
pub const RG_INTEGER = 0x8228;
pub const RG = 0x8227;
pub const COMPRESSED_SIGNED_RG_RGTC2 = 0x8DBE;
pub const COMPRESSED_RG_RGTC2 = 0x8DBD;
pub const COMPRESSED_SIGNED_RED_RGTC1 = 0x8DBC;
pub const COMPRESSED_RED_RGTC1 = 0x8DBB;
pub const MAP_UNSYNCHRONIZED_BIT = 0x0020;
pub const MAP_FLUSH_EXPLICIT_BIT = 0x0010;
pub const MAP_INVALIDATE_BUFFER_BIT = 0x0008;
pub const MAP_INVALIDATE_RANGE_BIT = 0x0004;
pub const MAP_WRITE_BIT = 0x0002;
pub const MAP_READ_BIT = 0x0001;
pub const HALF_FLOAT = 0x140B;
pub const FRAMEBUFFER_SRGB = 0x8DB9;
pub const MAX_VARYING_FLOATS = 0x8B4B;
pub const MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C;
pub const MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D;
pub const MAX_SAMPLES = 0x8D57;
pub const FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 0x8D56;
pub const RENDERBUFFER_STENCIL_SIZE = 0x8D55;
pub const RENDERBUFFER_DEPTH_SIZE = 0x8D54;
pub const RENDERBUFFER_BLUE_SIZE = 0x8D52;
pub const RENDERBUFFER_GREEN_SIZE = 0x8D51;
pub const RENDERBUFFER_RED_SIZE = 0x8D50;
pub const STENCIL_INDEX16 = 0x8D49;
pub const STENCIL_INDEX8 = 0x8D48;
pub const STENCIL_INDEX4 = 0x8D47;
pub const STENCIL_INDEX1 = 0x8D46;
pub const RENDERBUFFER_INTERNAL_FORMAT = 0x8D44;
pub const RENDERBUFFER_HEIGHT = 0x8D43;
pub const RENDERBUFFER_WIDTH = 0x8D42;
pub const RENDERBUFFER = 0x8D41;
pub const FRAMEBUFFER = 0x8D40;
pub const STENCIL_ATTACHMENT = 0x8D20;
pub const DEPTH_ATTACHMENT = 0x8D00;
pub const COLOR_ATTACHMENT31 = 0x8CFF;
pub const COLOR_ATTACHMENT30 = 0x8CFE;
pub const COLOR_ATTACHMENT29 = 0x8CFD;
pub const COLOR_ATTACHMENT28 = 0x8CFC;
pub const COLOR_ATTACHMENT27 = 0x8CFB;
pub const COLOR_ATTACHMENT26 = 0x8CFA;
pub const COLOR_ATTACHMENT25 = 0x8CF9;
pub const COLOR_ATTACHMENT24 = 0x8CF8;
pub const COLOR_ATTACHMENT23 = 0x8CF7;
pub const COLOR_ATTACHMENT22 = 0x8CF6;
pub const COLOR_ATTACHMENT21 = 0x8CF5;
pub const COLOR_ATTACHMENT20 = 0x8CF4;
pub const COLOR_ATTACHMENT19 = 0x8CF3;
pub const COLOR_ATTACHMENT18 = 0x8CF2;
pub const COLOR_ATTACHMENT17 = 0x8CF1;
pub const COLOR_ATTACHMENT16 = 0x8CF0;
pub const COLOR_ATTACHMENT15 = 0x8CEF;
pub const COLOR_ATTACHMENT14 = 0x8CEE;
pub const COLOR_ATTACHMENT13 = 0x8CED;
pub const COLOR_ATTACHMENT12 = 0x8CEC;
pub const COLOR_ATTACHMENT11 = 0x8CEB;
pub const RENDERBUFFER_SAMPLES = 0x8CAB;
pub const READ_FRAMEBUFFER_BINDING = 0x8CAA;
pub const FRAMEBUFFER_BINDING = 0x8CA6;
pub const UNSIGNED_NORMALIZED = 0x8C17;
pub const TEXTURE_DEPTH_TYPE = 0x8C16;
pub const TEXTURE_ALPHA_TYPE = 0x8C13;
pub const TEXTURE_BLUE_TYPE = 0x8C12;
pub const TEXTURE_GREEN_TYPE = 0x8C11;
pub const TEXTURE_RED_TYPE = 0x8C10;
pub const TEXTURE_STENCIL_SIZE = 0x88F1;
pub const DEPTH24_STENCIL8 = 0x88F0;
pub const UNSIGNED_INT_24_8 = 0x84FA;
pub const DEPTH_STENCIL = 0x84F9;
pub const MAX_RENDERBUFFER_SIZE = 0x84E8;
pub const DEPTH_STENCIL_ATTACHMENT = 0x821A;
pub const FRAMEBUFFER_UNDEFINED = 0x8219;
pub const FRAMEBUFFER_DEFAULT = 0x8218;
pub const FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = 0x8217;
pub const FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = 0x8216;
pub const FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = 0x8215;
pub const FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = 0x8214;
pub const FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = 0x8213;
pub const FRAMEBUFFER_ATTACHMENT_RED_SIZE = 0x8212;
pub const FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = 0x8211;
pub const FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = 0x8210;
pub const INVALID_FRAMEBUFFER_OPERATION = 0x0506;
pub const FLOAT_32_UNSIGNED_INT_24_8_REV = 0x8DAD;
pub const DEPTH32F_STENCIL8 = 0x8CAD;
pub const DEPTH_COMPONENT32F = 0x8CAC;
pub const BUFFER_MAP_OFFSET = 0x9121;
pub const BUFFER_MAP_LENGTH = 0x9120;
pub const BUFFER_ACCESS_FLAGS = 0x911F;
pub const QUERY_BY_REGION_NO_WAIT = 0x8E16;
pub const QUERY_BY_REGION_WAIT = 0x8E15;
pub const QUERY_NO_WAIT = 0x8E14;
pub const QUERY_WAIT = 0x8E13;
pub const UNSIGNED_INT_SAMPLER_2D_ARRAY = 0x8DD7;
pub const UNSIGNED_INT_SAMPLER_1D_ARRAY = 0x8DD6;
pub const UNSIGNED_INT_SAMPLER_CUBE = 0x8DD4;
pub const UNSIGNED_INT_SAMPLER_3D = 0x8DD3;
pub const UNSIGNED_INT_SAMPLER_2D = 0x8DD2;
pub const UNSIGNED_INT_SAMPLER_1D = 0x8DD1;
pub const INT_SAMPLER_2D_ARRAY = 0x8DCF;
pub const INT_SAMPLER_1D_ARRAY = 0x8DCE;
pub const INT_SAMPLER_CUBE = 0x8DCC;
pub const INT_SAMPLER_3D = 0x8DCB;
pub const INT_SAMPLER_2D = 0x8DCA;
pub const INT_SAMPLER_1D = 0x8DC9;
pub const RASTERIZER_DISCARD = 0x8C89;
pub const TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 0x8C88;
pub const PRIMITIVES_GENERATED = 0x8C87;
pub const TRANSFORM_FEEDBACK_BUFFER_SIZE = 0x8C85;
pub const TRANSFORM_FEEDBACK_BUFFER_START = 0x8C84;
pub const TRANSFORM_FEEDBACK_VARYINGS = 0x8C83;
pub const MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 0x8C80;
pub const TRANSFORM_FEEDBACK_BUFFER_MODE = 0x8C7F;
pub const TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = 0x8C76;
pub const TEXTURE_SHARED_SIZE = 0x8C3F;
pub const UNSIGNED_INT_5_9_9_9_REV = 0x8C3E;
pub const RGB9_E5 = 0x8C3D;
pub const UNSIGNED_INT_10F_11F_11F_REV = 0x8C3B;
pub const R11F_G11F_B10F = 0x8C3A;
pub const COLOR_LOGIC_OP = 0x0BF2;
pub const POLYGON_OFFSET_UNITS = 0x2A00;
pub const POLYGON_OFFSET_POINT = 0x2A01;
pub const POLYGON_OFFSET_LINE = 0x2A02;
pub const POLYGON_OFFSET_FILL = 0x8037;
pub const POLYGON_OFFSET_FACTOR = 0x8038;
pub const TEXTURE_BINDING_1D = 0x8068;
pub const TEXTURE_BINDING_2D = 0x8069;
pub const TEXTURE_INTERNAL_FORMAT = 0x1003;
pub const TEXTURE_RED_SIZE = 0x805C;
pub const TEXTURE_GREEN_SIZE = 0x805D;
pub const TEXTURE_BLUE_SIZE = 0x805E;
pub const TEXTURE_ALPHA_SIZE = 0x805F;
pub const DOUBLE = 0x140A;
pub const PROXY_TEXTURE_1D = 0x8063;
pub const PROXY_TEXTURE_2D = 0x8064;
pub const R3_G3_B2 = 0x2A10;
pub const RGB4 = 0x804F;
pub const RGB5 = 0x8050;
pub const RGB8 = 0x8051;
pub const RGB10 = 0x8052;
pub const RGB12 = 0x8053;
pub const RGB16 = 0x8054;
pub const RGBA2 = 0x8055;
pub const RGBA4 = 0x8056;
pub const RGB5_A1 = 0x8057;
pub const RGBA8 = 0x8058;
pub const RGB10_A2 = 0x8059;
pub const RGBA12 = 0x805A;
pub const RGBA16 = 0x805B;
pub const SAMPLE_MASK_VALUE = 0x8E52;
pub const SAMPLE_MASK = 0x8E51;
pub const SAMPLE_POSITION = 0x8E50;
pub const CONTEXT_CORE_PROFILE_BIT = 0x00000001;
pub const INVALID_INDEX = 0xFFFFFFFF;
pub const UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 0x8A46;
pub const UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = 0x8A45;
pub const UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 0x8A44;
pub const UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 0x8A43;
pub const UNIFORM_BLOCK_ACTIVE_UNIFORMS = 0x8A42;
pub const UNIFORM_BLOCK_NAME_LENGTH = 0x8A41;
pub const MAX_TEXTURE_BUFFER_SIZE = 0x8C2B;
pub const INT_SAMPLER_BUFFER = 0x8DD0;
pub const RENDERBUFFER_ALPHA_SIZE = 0x8D53;
pub const COLOR_ATTACHMENT10 = 0x8CEA;
pub const COLOR_ATTACHMENT9 = 0x8CE9;
pub const COLOR_ATTACHMENT8 = 0x8CE8;
pub const COLOR_ATTACHMENT7 = 0x8CE7;
pub const COLOR_ATTACHMENT6 = 0x8CE6;
pub const COLOR_ATTACHMENT5 = 0x8CE5;
pub const COLOR_ATTACHMENT4 = 0x8CE4;
pub const COLOR_ATTACHMENT3 = 0x8CE3;
pub const COLOR_ATTACHMENT2 = 0x8CE2;
pub const COLOR_ATTACHMENT1 = 0x8CE1;
pub const COLOR_ATTACHMENT0 = 0x8CE0;
pub const MAX_COLOR_ATTACHMENTS = 0x8CDF;
pub const FRAMEBUFFER_UNSUPPORTED = 0x8CDD;
pub const FRAMEBUFFER_INCOMPLETE_READ_BUFFER = 0x8CDC;
pub const FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER = 0x8CDB;
pub const FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7;
pub const FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6;
pub const FRAMEBUFFER_COMPLETE = 0x8CD5;
pub const FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 0x8CD4;
pub const FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3;
pub const FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2;
pub const FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1;
pub const FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0;
pub const DRAW_FRAMEBUFFER = 0x8CA9;
pub const READ_FRAMEBUFFER = 0x8CA8;
pub const RENDERBUFFER_BINDING = 0x8CA7;
pub const DRAW_FRAMEBUFFER_BINDING = 0x8CA6;
pub const UNSIGNED_INT_VEC4 = 0x8DC8;
pub const UNSIGNED_INT_VEC3 = 0x8DC7;
pub const UNSIGNED_INT_VEC2 = 0x8DC6;
pub const SAMPLER_CUBE_SHADOW = 0x8DC5;
pub const SAMPLER_2D_ARRAY_SHADOW = 0x8DC4;
pub const SAMPLER_1D_ARRAY_SHADOW = 0x8DC3;
pub const SAMPLER_2D_ARRAY = 0x8DC1;
pub const SAMPLER_1D_ARRAY = 0x8DC0;
pub const BGRA_INTEGER = 0x8D9B;
pub const BGR_INTEGER = 0x8D9A;
pub const RGBA_INTEGER = 0x8D99;
pub const RGB_INTEGER = 0x8D98;
pub const BLUE_INTEGER = 0x8D96;
pub const GREEN_INTEGER = 0x8D95;
pub const RED_INTEGER = 0x8D94;
pub const RGB8I = 0x8D8F;
pub const RGBA8I = 0x8D8E;
pub const RGB16I = 0x8D89;
pub const RGBA16I = 0x8D88;
pub const RGB32I = 0x8D83;
pub const RGBA32I = 0x8D82;
pub const RGB8UI = 0x8D7D;
pub const RGBA8UI = 0x8D7C;
pub const RGB16UI = 0x8D77;
pub const RGBA16UI = 0x8D76;
pub const RGB32UI = 0x8D71;
pub const RGBA32UI = 0x8D70;
pub const TRANSFORM_FEEDBACK_BUFFER_BINDING = 0x8C8F;
pub const TRANSFORM_FEEDBACK_BUFFER = 0x8C8E;
pub const SEPARATE_ATTRIBS = 0x8C8D;
pub const INTERLEAVED_ATTRIBS = 0x8C8C;
pub const MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 0x8C8B;
pub const MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 0x8C8A;
pub const UNSIGNED_BYTE_3_3_2 = 0x8032;
pub const UNSIGNED_SHORT_4_4_4_4 = 0x8033;
pub const UNSIGNED_SHORT_5_5_5_1 = 0x8034;
pub const UNSIGNED_INT_8_8_8_8 = 0x8035;
pub const UNSIGNED_INT_10_10_10_2 = 0x8036;
pub const TEXTURE_BINDING_3D = 0x806A;
pub const PACK_SKIP_IMAGES = 0x806B;
pub const PACK_IMAGE_HEIGHT = 0x806C;
pub const UNPACK_SKIP_IMAGES = 0x806D;
pub const UNPACK_IMAGE_HEIGHT = 0x806E;
pub const TEXTURE_3D = 0x806F;
pub const PROXY_TEXTURE_3D = 0x8070;
pub const TEXTURE_DEPTH = 0x8071;
pub const TEXTURE_WRAP_R = 0x8072;
pub const MAX_3D_TEXTURE_SIZE = 0x8073;
pub const UNSIGNED_BYTE_2_3_3_REV = 0x8362;
pub const UNSIGNED_SHORT_5_6_5 = 0x8363;
pub const UNSIGNED_SHORT_5_6_5_REV = 0x8364;
pub const UNSIGNED_SHORT_4_4_4_4_REV = 0x8365;
pub const UNSIGNED_SHORT_1_5_5_5_REV = 0x8366;
pub const UNSIGNED_INT_8_8_8_8_REV = 0x8367;
pub const UNSIGNED_INT_2_10_10_10_REV = 0x8368;
pub const BGR = 0x80E0;
pub const BGRA = 0x80E1;
pub const MAX_ELEMENTS_VERTICES = 0x80E8;
pub const MAX_ELEMENTS_INDICES = 0x80E9;
pub const CLAMP_TO_EDGE = 0x812F;
pub const TEXTURE_MIN_LOD = 0x813A;
pub const TEXTURE_MAX_LOD = 0x813B;
pub const TEXTURE_BASE_LEVEL = 0x813C;
pub const TEXTURE_MAX_LEVEL = 0x813D;
pub const SMOOTH_POINT_SIZE_RANGE = 0x0B12;
pub const SMOOTH_POINT_SIZE_GRANULARITY = 0x0B13;
pub const SMOOTH_LINE_WIDTH_RANGE = 0x0B22;
pub const SMOOTH_LINE_WIDTH_GRANULARITY = 0x0B23;
pub const ALIASED_LINE_WIDTH_RANGE = 0x846E;
pub const TEXTURE_BINDING_2D_ARRAY = 0x8C1D;
pub const TEXTURE_BINDING_1D_ARRAY = 0x8C1C;
pub const PROXY_TEXTURE_2D_ARRAY = 0x8C1B;
pub const TEXTURE_2D_ARRAY = 0x8C1A;
pub const PROXY_TEXTURE_1D_ARRAY = 0x8C19;
pub const TEXTURE0 = 0x84C0;
pub const TEXTURE1 = 0x84C1;
pub const TEXTURE2 = 0x84C2;
pub const TEXTURE3 = 0x84C3;
pub const TEXTURE4 = 0x84C4;
pub const TEXTURE5 = 0x84C5;
pub const TEXTURE6 = 0x84C6;
pub const TEXTURE7 = 0x84C7;
pub const TEXTURE8 = 0x84C8;
pub const TEXTURE9 = 0x84C9;
pub const TEXTURE10 = 0x84CA;
pub const TEXTURE11 = 0x84CB;
pub const TEXTURE12 = 0x84CC;
pub const TEXTURE13 = 0x84CD;
pub const TEXTURE14 = 0x84CE;
pub const TEXTURE15 = 0x84CF;
pub const TEXTURE16 = 0x84D0;
pub const TEXTURE17 = 0x84D1;
pub const TEXTURE18 = 0x84D2;
pub const TEXTURE19 = 0x84D3;
pub const TEXTURE20 = 0x84D4;
pub const TEXTURE21 = 0x84D5;
pub const TEXTURE22 = 0x84D6;
pub const TEXTURE23 = 0x84D7;
pub const TEXTURE24 = 0x84D8;
pub const TEXTURE25 = 0x84D9;
pub const TEXTURE26 = 0x84DA;
pub const TEXTURE27 = 0x84DB;
pub const TEXTURE28 = 0x84DC;
pub const TEXTURE29 = 0x84DD;
pub const TEXTURE30 = 0x84DE;
pub const TEXTURE31 = 0x84DF;
pub const ACTIVE_TEXTURE = 0x84E0;
pub const MULTISAMPLE = 0x809D;
pub const SAMPLE_ALPHA_TO_COVERAGE = 0x809E;
pub const SAMPLE_ALPHA_TO_ONE = 0x809F;
pub const SAMPLE_COVERAGE = 0x80A0;
pub const SAMPLE_BUFFERS = 0x80A8;
pub const SAMPLES = 0x80A9;
pub const SAMPLE_COVERAGE_VALUE = 0x80AA;
pub const SAMPLE_COVERAGE_INVERT = 0x80AB;
pub const TEXTURE_CUBE_MAP = 0x8513;
pub const TEXTURE_BINDING_CUBE_MAP = 0x8514;
pub const TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;
pub const TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;
pub const TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;
pub const TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;
pub const TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;
pub const TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;
pub const PROXY_TEXTURE_CUBE_MAP = 0x851B;
pub const MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;
pub const COMPRESSED_RGB = 0x84ED;
pub const COMPRESSED_RGBA = 0x84EE;
pub const TEXTURE_COMPRESSION_HINT = 0x84EF;
pub const TEXTURE_COMPRESSED_IMAGE_SIZE = 0x86A0;
pub const TEXTURE_COMPRESSED = 0x86A1;
pub const NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2;
pub const COMPRESSED_TEXTURE_FORMATS = 0x86A3;
pub const CLAMP_TO_BORDER = 0x812D;
pub const TEXTURE_1D_ARRAY = 0x8C18;
pub const MAX_VARYING_COMPONENTS = 0x8B4B;
pub const FIXED_ONLY = 0x891D;
pub const CLAMP_READ_COLOR = 0x891C;
pub const MAX_PROGRAM_TEXEL_OFFSET = 0x8905;
pub const MIN_PROGRAM_TEXEL_OFFSET = 0x8904;
pub const MAX_ARRAY_TEXTURE_LAYERS = 0x88FF;
pub const VERTEX_ATTRIB_ARRAY_INTEGER = 0x88FD;
pub const RGB16F = 0x881B;
pub const RGBA16F = 0x881A;
pub const RGB32F = 0x8815;
pub const RGBA32F = 0x8814;
pub const CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT = 0x00000001;
pub const COMPRESSED_RG = 0x8226;
pub const COMPRESSED_RED = 0x8225;
pub const CONTEXT_FLAGS = 0x821E;
pub const NUM_EXTENSIONS = 0x821D;
pub const MINOR_VERSION = 0x821C;
pub const MAJOR_VERSION = 0x821B;
pub const MAX_CLIP_DISTANCES = 0x0D32;
pub const CLIP_DISTANCE7 = 0x3007;
pub const CLIP_DISTANCE6 = 0x3006;
pub const CLIP_DISTANCE5 = 0x3005;
pub const CLIP_DISTANCE4 = 0x3004;
pub const CLIP_DISTANCE3 = 0x3003;
pub const CLIP_DISTANCE2 = 0x3002;
pub const CLIP_DISTANCE1 = 0x3001;
pub const CLIP_DISTANCE0 = 0x3000;
pub const COMPARE_REF_TO_TEXTURE = 0x884E;
pub const FLOAT_VEC4 = 0x8B52;
pub const INT_VEC2 = 0x8B53;
pub const INT_VEC3 = 0x8B54;
pub const INT_VEC4 = 0x8B55;
pub const BOOL = 0x8B56;
pub const BOOL_VEC2 = 0x8B57;
pub const BOOL_VEC3 = 0x8B58;
pub const COMPRESSED_SRGB_ALPHA = 0x8C49;
pub const BLEND_DST_RGB = 0x80C8;
pub const BLEND_SRC_RGB = 0x80C9;
pub const BLEND_DST_ALPHA = 0x80CA;
pub const BLEND_SRC_ALPHA = 0x80CB;
pub const POINT_FADE_THRESHOLD_SIZE = 0x8128;
pub const DEPTH_COMPONENT16 = 0x81A5;
pub const DEPTH_COMPONENT24 = 0x81A6;
pub const DEPTH_COMPONENT32 = 0x81A7;
pub const MIRRORED_REPEAT = 0x8370;
pub const MAX_TEXTURE_LOD_BIAS = 0x84FD;
pub const TEXTURE_LOD_BIAS = 0x8501;
pub const INCR_WRAP = 0x8507;
pub const DECR_WRAP = 0x8508;
pub const TEXTURE_DEPTH_SIZE = 0x884A;
pub const TEXTURE_COMPARE_MODE = 0x884C;
pub const TEXTURE_COMPARE_FUNC = 0x884D;
pub const COMPRESSED_SRGB = 0x8C48;
pub const SRGB8_ALPHA8 = 0x8C43;
pub const SRGB_ALPHA = 0x8C42;
pub const SRGB8 = 0x8C41;
pub const SRGB = 0x8C40;
pub const FLOAT_MAT4x3 = 0x8B6A;
pub const FLOAT_MAT4x2 = 0x8B69;
pub const FLOAT_MAT3x4 = 0x8B68;
pub const FLOAT_MAT3x2 = 0x8B67;
pub const FLOAT_MAT2x4 = 0x8B66;
pub const FLOAT_MAT2x3 = 0x8B65;
pub const PIXEL_UNPACK_BUFFER_BINDING = 0x88EF;
pub const PIXEL_PACK_BUFFER_BINDING = 0x88ED;
pub const PIXEL_UNPACK_BUFFER = 0x88EC;
pub const PIXEL_PACK_BUFFER = 0x88EB;
pub const BOOL_VEC4 = 0x8B59;
pub const FLOAT_MAT2 = 0x8B5A;
pub const FLOAT_MAT3 = 0x8B5B;
pub const FLOAT_MAT4 = 0x8B5C;
pub const STENCIL_BACK_WRITEMASK = 0x8CA5;
pub const STENCIL_BACK_VALUE_MASK = 0x8CA4;
pub const STENCIL_BACK_REF = 0x8CA3;
pub const UPPER_LEFT = 0x8CA2;
pub const BLEND_COLOR = 0x8005;
pub const BLEND_EQUATION = 0x8009;
pub const CONSTANT_COLOR = 0x8001;
pub const ONE_MINUS_CONSTANT_COLOR = 0x8002;
pub const CONSTANT_ALPHA = 0x8003;
pub const ONE_MINUS_CONSTANT_ALPHA = 0x8004;
pub const FUNC_ADD = 0x8006;
pub const FUNC_REVERSE_SUBTRACT = 0x800B;
pub const FUNC_SUBTRACT = 0x800A;
pub const MIN = 0x8007;
pub const MAX = 0x8008;
pub const BUFFER_SIZE = 0x8764;
pub const BUFFER_USAGE = 0x8765;
pub const QUERY_COUNTER_BITS = 0x8864;
pub const CURRENT_QUERY = 0x8865;
pub const QUERY_RESULT = 0x8866;
pub const QUERY_RESULT_AVAILABLE = 0x8867;
pub const ARRAY_BUFFER = 0x8892;
pub const ELEMENT_ARRAY_BUFFER = 0x8893;
pub const ARRAY_BUFFER_BINDING = 0x8894;
pub const ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;
pub const VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;
pub const READ_ONLY = 0x88B8;
pub const WRITE_ONLY = 0x88B9;
pub const READ_WRITE = 0x88BA;
pub const BUFFER_ACCESS = 0x88BB;
pub const BUFFER_MAPPED = 0x88BC;
pub const BUFFER_MAP_POINTER = 0x88BD;
pub const STREAM_DRAW = 0x88E0;
pub const STREAM_READ = 0x88E1;
pub const STREAM_COPY = 0x88E2;
pub const STATIC_DRAW = 0x88E4;
pub const STATIC_READ = 0x88E5;
pub const STATIC_COPY = 0x88E6;
pub const DYNAMIC_DRAW = 0x88E8;
pub const DYNAMIC_READ = 0x88E9;
pub const DYNAMIC_COPY = 0x88EA;
pub const SAMPLES_PASSED = 0x8914;
pub const SRC1_ALPHA = 0x8589;
pub const LOWER_LEFT = 0x8CA1;
pub const POINT_SPRITE_COORD_ORIGIN = 0x8CA0;
pub const CURRENT_PROGRAM = 0x8B8D;
pub const SHADING_LANGUAGE_VERSION = 0x8B8C;
pub const FRAGMENT_SHADER_DERIVATIVE_HINT = 0x8B8B;
pub const ACTIVE_ATTRIBUTE_MAX_LENGTH = 0x8B8A;
pub const ACTIVE_ATTRIBUTES = 0x8B89;
pub const SHADER_SOURCE_LENGTH = 0x8B88;
pub const ACTIVE_UNIFORM_MAX_LENGTH = 0x8B87;
pub const ACTIVE_UNIFORMS = 0x8B86;
pub const ATTACHED_SHADERS = 0x8B85;
pub const INFO_LOG_LENGTH = 0x8B84;
pub const VALIDATE_STATUS = 0x8B83;
pub const LINK_STATUS = 0x8B82;
pub const COMPILE_STATUS = 0x8B81;
pub const DELETE_STATUS = 0x8B80;
pub const SAMPLER_2D_SHADOW = 0x8B62;
pub const SAMPLER_1D_SHADOW = 0x8B61;
pub const SAMPLER_CUBE = 0x8B60;
pub const SAMPLER_3D = 0x8B5F;
pub const SAMPLER_2D = 0x8B5E;
pub const SAMPLER_1D = 0x8B5D;
pub const BLEND_EQUATION_RGB = 0x8009;
pub const VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;
pub const VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;
pub const VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;
pub const VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;
pub const CURRENT_VERTEX_ATTRIB = 0x8626;
pub const VERTEX_PROGRAM_POINT_SIZE = 0x8642;
pub const VERTEX_ATTRIB_ARRAY_POINTER = 0x8645;
pub const STENCIL_BACK_FUNC = 0x8800;
pub const STENCIL_BACK_FAIL = 0x8801;
pub const STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802;
pub const STENCIL_BACK_PASS_DEPTH_PASS = 0x8803;
pub const MAX_DRAW_BUFFERS = 0x8824;
pub const DRAW_BUFFER0 = 0x8825;
pub const DRAW_BUFFER1 = 0x8826;
pub const DRAW_BUFFER2 = 0x8827;
pub const DRAW_BUFFER3 = 0x8828;
pub const DRAW_BUFFER4 = 0x8829;
pub const DRAW_BUFFER5 = 0x882A;
pub const DRAW_BUFFER6 = 0x882B;
pub const DRAW_BUFFER7 = 0x882C;
pub const DRAW_BUFFER8 = 0x882D;
pub const DRAW_BUFFER9 = 0x882E;
pub const DRAW_BUFFER10 = 0x882F;
pub const DRAW_BUFFER11 = 0x8830;
pub const DRAW_BUFFER12 = 0x8831;
pub const DRAW_BUFFER13 = 0x8832;
pub const DRAW_BUFFER14 = 0x8833;
pub const DRAW_BUFFER15 = 0x8834;
pub const BLEND_EQUATION_ALPHA = 0x883D;
pub const MAX_VERTEX_ATTRIBS = 0x8869;
pub const VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;
pub const MAX_TEXTURE_IMAGE_UNITS = 0x8872;
pub const FRAGMENT_SHADER = 0x8B30;
pub const VERTEX_SHADER = 0x8B31;
pub const MAX_FRAGMENT_UNIFORM_COMPONENTS = 0x8B49;
pub const MAX_VERTEX_UNIFORM_COMPONENTS = 0x8B4A;
pub fn BindBufferBase(target: @"enum", index: uint, buffer: uint) void {
   return FuncTable.current.?.BindBufferBase(target, index, buffer);
}
pub fn BindBufferRange(target: @"enum", index: uint, buffer: uint, offset: intptr, size: sizeiptr) void {
   return FuncTable.current.?.BindBufferRange(target, index, buffer, offset, size);
}
pub fn GetIntegeri_v(target: @"enum", index: uint, data: int) void {
   return FuncTable.current.?.GetIntegeri_v(target, index, data);
}
pub fn CullFace(mode: @"enum") void {
   return FuncTable.current.?.CullFace(mode);
}
pub fn FrontFace(mode: @"enum") void {
   return FuncTable.current.?.FrontFace(mode);
}
pub fn Hint(target: @"enum", mode: @"enum") void {
   return FuncTable.current.?.Hint(target, mode);
}
pub fn LineWidth(width: float) void {
   return FuncTable.current.?.LineWidth(width);
}
pub fn PointSize(size: float) void {
   return FuncTable.current.?.PointSize(size);
}
pub fn PolygonMode(face: @"enum", mode: @"enum") void {
   return FuncTable.current.?.PolygonMode(face, mode);
}
pub fn Scissor(x: int, y: int, width: sizei, height: sizei) void {
   return FuncTable.current.?.Scissor(x, y, width, height);
}
pub fn TexParameterf(target: @"enum", pname: @"enum", param: float) void {
   return FuncTable.current.?.TexParameterf(target, pname, param);
}
pub fn TexParameterfv(target: @"enum", pname: @"enum", params: [*c]const float) void {
   return FuncTable.current.?.TexParameterfv(target, pname, params);
}
pub fn TexParameteri(target: @"enum", pname: @"enum", param: int) void {
   return FuncTable.current.?.TexParameteri(target, pname, param);
}
pub fn TexParameteriv(target: @"enum", pname: @"enum", params: [*c]const int) void {
   return FuncTable.current.?.TexParameteriv(target, pname, params);
}
pub fn TexImage1D(target: @"enum", level: int, internalformat: int, width: sizei, border: int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
   return FuncTable.current.?.TexImage1D(target, level, internalformat, width, border, format, @"type", pixels);
}
pub fn TexImage2D(target: @"enum", level: int, internalformat: int, width: sizei, height: sizei, border: int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
   return FuncTable.current.?.TexImage2D(target, level, internalformat, width, height, border, format, @"type", pixels);
}
pub fn DrawBuffer(buf: @"enum") void {
   return FuncTable.current.?.DrawBuffer(buf);
}
pub fn Clear(mask: bitfield) void {
   return FuncTable.current.?.Clear(mask);
}
pub fn ClearColor(red: float, green: float, blue: float, alpha: float) void {
   return FuncTable.current.?.ClearColor(red, green, blue, alpha);
}
pub fn ClearStencil(s: int) void {
   return FuncTable.current.?.ClearStencil(s);
}
pub fn ClearDepth(depth: double) void {
   return FuncTable.current.?.ClearDepth(depth);
}
pub fn StencilMask(mask: uint) void {
   return FuncTable.current.?.StencilMask(mask);
}
pub fn ColorMask(red: boolean, green: boolean, blue: boolean, alpha: boolean) void {
   return FuncTable.current.?.ColorMask(red, green, blue, alpha);
}
pub fn DepthMask(flag: boolean) void {
   return FuncTable.current.?.DepthMask(flag);
}
pub fn Disable(cap: @"enum") void {
   return FuncTable.current.?.Disable(cap);
}
pub fn Enable(cap: @"enum") void {
   return FuncTable.current.?.Enable(cap);
}
pub fn Finish() void {
   return FuncTable.current.?.Finish();
}
pub fn Flush() void {
   return FuncTable.current.?.Flush();
}
pub fn BlendFunc(sfactor: @"enum", dfactor: @"enum") void {
   return FuncTable.current.?.BlendFunc(sfactor, dfactor);
}
pub fn LogicOp(opcode: @"enum") void {
   return FuncTable.current.?.LogicOp(opcode);
}
pub fn StencilFunc(func: @"enum", ref: int, mask: uint) void {
   return FuncTable.current.?.StencilFunc(func, ref, mask);
}
pub fn StencilOp(fail: @"enum", zfail: @"enum", zpass: @"enum") void {
   return FuncTable.current.?.StencilOp(fail, zfail, zpass);
}
pub fn DepthFunc(func: @"enum") void {
   return FuncTable.current.?.DepthFunc(func);
}
pub fn PixelStoref(pname: @"enum", param: float) void {
   return FuncTable.current.?.PixelStoref(pname, param);
}
pub fn PixelStorei(pname: @"enum", param: int) void {
   return FuncTable.current.?.PixelStorei(pname, param);
}
pub fn ReadBuffer(src: @"enum") void {
   return FuncTable.current.?.ReadBuffer(src);
}
pub fn ReadPixels(x: int, y: int, width: sizei, height: sizei, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
   return FuncTable.current.?.ReadPixels(x, y, width, height, format, @"type", pixels);
}
pub fn GetBooleanv(pname: @"enum", data: boolean) void {
   return FuncTable.current.?.GetBooleanv(pname, data);
}
pub fn GetDoublev(pname: @"enum", data: double) void {
   return FuncTable.current.?.GetDoublev(pname, data);
}
pub fn GetError() @"enum" {
   return FuncTable.current.?.GetError();
}
pub fn GetFloatv(pname: @"enum", data: float) void {
   return FuncTable.current.?.GetFloatv(pname, data);
}
pub fn GetIntegerv(pname: @"enum", data: int) void {
   return FuncTable.current.?.GetIntegerv(pname, data);
}
pub fn GetString(name: @"enum") ubyte {
   return FuncTable.current.?.GetString(name);
}
pub fn GetTexImage(target: @"enum", level: int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
   return FuncTable.current.?.GetTexImage(target, level, format, @"type", pixels);
}
pub fn GetTexParameterfv(target: @"enum", pname: @"enum", params: float) void {
   return FuncTable.current.?.GetTexParameterfv(target, pname, params);
}
pub fn GetTexParameteriv(target: @"enum", pname: @"enum", params: int) void {
   return FuncTable.current.?.GetTexParameteriv(target, pname, params);
}
pub fn GetTexLevelParameterfv(target: @"enum", level: int, pname: @"enum", params: float) void {
   return FuncTable.current.?.GetTexLevelParameterfv(target, level, pname, params);
}
pub fn GetTexLevelParameteriv(target: @"enum", level: int, pname: @"enum", params: int) void {
   return FuncTable.current.?.GetTexLevelParameteriv(target, level, pname, params);
}
pub fn IsEnabled(cap: @"enum") boolean {
   return FuncTable.current.?.IsEnabled(cap);
}
pub fn DepthRange(n: double, f: double) void {
   return FuncTable.current.?.DepthRange(n, f);
}
pub fn Viewport(x: int, y: int, width: sizei, height: sizei) void {
   return FuncTable.current.?.Viewport(x, y, width, height);
}
pub fn SampleMaski(maskNumber: uint, mask: bitfield) void {
   return FuncTable.current.?.SampleMaski(maskNumber, mask);
}
pub fn GetMultisamplefv(pname: @"enum", index: uint, val: float) void {
   return FuncTable.current.?.GetMultisamplefv(pname, index, val);
}
pub fn TexImage3DMultisample(target: @"enum", samples: sizei, internalformat: @"enum", width: sizei, height: sizei, depth: sizei, fixedsamplelocations: boolean) void {
   return FuncTable.current.?.TexImage3DMultisample(target, samples, internalformat, width, height, depth, fixedsamplelocations);
}
pub fn TexImage2DMultisample(target: @"enum", samples: sizei, internalformat: @"enum", width: sizei, height: sizei, fixedsamplelocations: boolean) void {
   return FuncTable.current.?.TexImage2DMultisample(target, samples, internalformat, width, height, fixedsamplelocations);
}
pub fn FramebufferTexture(target: @"enum", attachment: @"enum", texture: uint, level: int) void {
   return FuncTable.current.?.FramebufferTexture(target, attachment, texture, level);
}
pub fn GetBufferParameteri64v(target: @"enum", pname: @"enum", params: int64) void {
   return FuncTable.current.?.GetBufferParameteri64v(target, pname, params);
}
pub fn GetInteger64i_v(target: @"enum", index: uint, data: int64) void {
   return FuncTable.current.?.GetInteger64i_v(target, index, data);
}
pub fn GetSynciv(_sync: sync, pname: @"enum", count: sizei, length: sizei, values: int) void {
   return FuncTable.current.?.GetSynciv(_sync, pname, count, length, values);
}
pub fn GetInteger64v(pname: @"enum", data: int64) void {
   return FuncTable.current.?.GetInteger64v(pname, data);
}
pub fn WaitSync(_sync: sync, flags: bitfield, timeout: uint64) void {
   return FuncTable.current.?.WaitSync(_sync, flags, timeout);
}
pub fn ClientWaitSync(_sync: sync, flags: bitfield, timeout: uint64) @"enum" {
   return FuncTable.current.?.ClientWaitSync(_sync, flags, timeout);
}
pub fn DeleteSync(_sync: sync) void {
   return FuncTable.current.?.DeleteSync(_sync);
}
pub fn IsSync(_sync: sync) boolean {
   return FuncTable.current.?.IsSync(_sync);
}
pub fn FenceSync(condition: @"enum", flags: bitfield) sync {
   return FuncTable.current.?.FenceSync(condition, flags);
}
pub fn ProvokingVertex(mode: @"enum") void {
   return FuncTable.current.?.ProvokingVertex(mode);
}
pub fn MultiDrawElementsBaseVertex(mode: @"enum", count: [*c]const sizei, @"type": @"enum", indices: ?*const anyopaque, drawcount: sizei, basevertex: [*c]const int) void {
   return FuncTable.current.?.MultiDrawElementsBaseVertex(mode, count, @"type", indices, drawcount, basevertex);
}
pub fn DrawElementsInstancedBaseVertex(mode: @"enum", count: sizei, @"type": @"enum", indices: ?*const anyopaque, instancecount: sizei, basevertex: int) void {
   return FuncTable.current.?.DrawElementsInstancedBaseVertex(mode, count, @"type", indices, instancecount, basevertex);
}
pub fn DrawRangeElementsBaseVertex(mode: @"enum", start: uint, end: uint, count: sizei, @"type": @"enum", indices: ?*const anyopaque, basevertex: int) void {
   return FuncTable.current.?.DrawRangeElementsBaseVertex(mode, start, end, count, @"type", indices, basevertex);
}
pub fn DrawElementsBaseVertex(mode: @"enum", count: sizei, @"type": @"enum", indices: ?*const anyopaque, basevertex: int) void {
   return FuncTable.current.?.DrawElementsBaseVertex(mode, count, @"type", indices, basevertex);
}
pub fn UniformBlockBinding(program: uint, uniformBlockIndex: uint, uniformBlockBinding: uint) void {
   return FuncTable.current.?.UniformBlockBinding(program, uniformBlockIndex, uniformBlockBinding);
}
pub fn GetActiveUniformBlockName(program: uint, uniformBlockIndex: uint, bufSize: sizei, length: sizei, uniformBlockName: char) void {
   return FuncTable.current.?.GetActiveUniformBlockName(program, uniformBlockIndex, bufSize, length, uniformBlockName);
}
pub fn GetActiveUniformBlockiv(program: uint, uniformBlockIndex: uint, pname: @"enum", params: int) void {
   return FuncTable.current.?.GetActiveUniformBlockiv(program, uniformBlockIndex, pname, params);
}
pub fn GetUniformBlockIndex(program: uint, uniformBlockName: [*c]const char) uint {
   return FuncTable.current.?.GetUniformBlockIndex(program, uniformBlockName);
}
pub fn GetActiveUniformName(program: uint, uniformIndex: uint, bufSize: sizei, length: sizei, uniformName: char) void {
   return FuncTable.current.?.GetActiveUniformName(program, uniformIndex, bufSize, length, uniformName);
}
pub fn GetActiveUniformsiv(program: uint, uniformCount: sizei, uniformIndices: [*c]const uint, pname: @"enum", params: int) void {
   return FuncTable.current.?.GetActiveUniformsiv(program, uniformCount, uniformIndices, pname, params);
}
pub fn GetUniformIndices(program: uint, uniformCount: sizei, uniformNames: [*c]const [*c]const char, uniformIndices: uint) void {
   return FuncTable.current.?.GetUniformIndices(program, uniformCount, uniformNames, uniformIndices);
}
pub fn CopyBufferSubData(readTarget: @"enum", writeTarget: @"enum", readOffset: intptr, writeOffset: intptr, size: sizeiptr) void {
   return FuncTable.current.?.CopyBufferSubData(readTarget, writeTarget, readOffset, writeOffset, size);
}
pub fn PrimitiveRestartIndex(index: uint) void {
   return FuncTable.current.?.PrimitiveRestartIndex(index);
}
pub fn TexBuffer(target: @"enum", internalformat: @"enum", buffer: uint) void {
   return FuncTable.current.?.TexBuffer(target, internalformat, buffer);
}
pub fn DrawElementsInstanced(mode: @"enum", count: sizei, @"type": @"enum", indices: ?*const anyopaque, instancecount: sizei) void {
   return FuncTable.current.?.DrawElementsInstanced(mode, count, @"type", indices, instancecount);
}
pub fn DrawArraysInstanced(mode: @"enum", first: int, count: sizei, instancecount: sizei) void {
   return FuncTable.current.?.DrawArraysInstanced(mode, first, count, instancecount);
}
pub fn IsVertexArray(array: uint) boolean {
   return FuncTable.current.?.IsVertexArray(array);
}
pub fn GenVertexArrays(n: sizei, arrays: uint) void {
   return FuncTable.current.?.GenVertexArrays(n, arrays);
}
pub fn DeleteVertexArrays(n: sizei, arrays: [*c]const uint) void {
   return FuncTable.current.?.DeleteVertexArrays(n, arrays);
}
pub fn BindVertexArray(array: uint) void {
   return FuncTable.current.?.BindVertexArray(array);
}
pub fn FlushMappedBufferRange(target: @"enum", offset: intptr, length: sizeiptr) void {
   return FuncTable.current.?.FlushMappedBufferRange(target, offset, length);
}
pub fn MapBufferRange(target: @"enum", offset: intptr, length: sizeiptr, access: bitfield) void {
   return FuncTable.current.?.MapBufferRange(target, offset, length, access);
}
pub fn FramebufferTextureLayer(target: @"enum", attachment: @"enum", texture: uint, level: int, layer: int) void {
   return FuncTable.current.?.FramebufferTextureLayer(target, attachment, texture, level, layer);
}
pub fn RenderbufferStorageMultisample(target: @"enum", samples: sizei, internalformat: @"enum", width: sizei, height: sizei) void {
   return FuncTable.current.?.RenderbufferStorageMultisample(target, samples, internalformat, width, height);
}
pub fn BlitFramebuffer(srcX0: int, srcY0: int, srcX1: int, srcY1: int, dstX0: int, dstY0: int, dstX1: int, dstY1: int, mask: bitfield, filter: @"enum") void {
   return FuncTable.current.?.BlitFramebuffer(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter);
}
pub fn GenerateMipmap(target: @"enum") void {
   return FuncTable.current.?.GenerateMipmap(target);
}
pub fn GetFramebufferAttachmentParameteriv(target: @"enum", attachment: @"enum", pname: @"enum", params: int) void {
   return FuncTable.current.?.GetFramebufferAttachmentParameteriv(target, attachment, pname, params);
}
pub fn FramebufferRenderbuffer(target: @"enum", attachment: @"enum", renderbuffertarget: @"enum", renderbuffer: uint) void {
   return FuncTable.current.?.FramebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer);
}
pub fn FramebufferTexture3D(target: @"enum", attachment: @"enum", textarget: @"enum", texture: uint, level: int, zoffset: int) void {
   return FuncTable.current.?.FramebufferTexture3D(target, attachment, textarget, texture, level, zoffset);
}
pub fn FramebufferTexture2D(target: @"enum", attachment: @"enum", textarget: @"enum", texture: uint, level: int) void {
   return FuncTable.current.?.FramebufferTexture2D(target, attachment, textarget, texture, level);
}
pub fn FramebufferTexture1D(target: @"enum", attachment: @"enum", textarget: @"enum", texture: uint, level: int) void {
   return FuncTable.current.?.FramebufferTexture1D(target, attachment, textarget, texture, level);
}
pub fn CheckFramebufferStatus(target: @"enum") @"enum" {
   return FuncTable.current.?.CheckFramebufferStatus(target);
}
pub fn GenFramebuffers(n: sizei, framebuffers: uint) void {
   return FuncTable.current.?.GenFramebuffers(n, framebuffers);
}
pub fn DeleteFramebuffers(n: sizei, framebuffers: [*c]const uint) void {
   return FuncTable.current.?.DeleteFramebuffers(n, framebuffers);
}
pub fn BindFramebuffer(target: @"enum", framebuffer: uint) void {
   return FuncTable.current.?.BindFramebuffer(target, framebuffer);
}
pub fn IsFramebuffer(framebuffer: uint) boolean {
   return FuncTable.current.?.IsFramebuffer(framebuffer);
}
pub fn GetRenderbufferParameteriv(target: @"enum", pname: @"enum", params: int) void {
   return FuncTable.current.?.GetRenderbufferParameteriv(target, pname, params);
}
pub fn RenderbufferStorage(target: @"enum", internalformat: @"enum", width: sizei, height: sizei) void {
   return FuncTable.current.?.RenderbufferStorage(target, internalformat, width, height);
}
pub fn GenRenderbuffers(n: sizei, renderbuffers: uint) void {
   return FuncTable.current.?.GenRenderbuffers(n, renderbuffers);
}
pub fn DeleteRenderbuffers(n: sizei, renderbuffers: [*c]const uint) void {
   return FuncTable.current.?.DeleteRenderbuffers(n, renderbuffers);
}
pub fn BindRenderbuffer(target: @"enum", renderbuffer: uint) void {
   return FuncTable.current.?.BindRenderbuffer(target, renderbuffer);
}
pub fn IsRenderbuffer(renderbuffer: uint) boolean {
   return FuncTable.current.?.IsRenderbuffer(renderbuffer);
}
pub fn GetStringi(name: @"enum", index: uint) ubyte {
   return FuncTable.current.?.GetStringi(name, index);
}
pub fn ClearBufferfi(buffer: @"enum", drawbuffer: int, depth: float, stencil: int) void {
   return FuncTable.current.?.ClearBufferfi(buffer, drawbuffer, depth, stencil);
}
pub fn ClearBufferfv(buffer: @"enum", drawbuffer: int, value: [*c]const float) void {
   return FuncTable.current.?.ClearBufferfv(buffer, drawbuffer, value);
}
pub fn ClearBufferuiv(buffer: @"enum", drawbuffer: int, value: [*c]const uint) void {
   return FuncTable.current.?.ClearBufferuiv(buffer, drawbuffer, value);
}
pub fn ClearBufferiv(buffer: @"enum", drawbuffer: int, value: [*c]const int) void {
   return FuncTable.current.?.ClearBufferiv(buffer, drawbuffer, value);
}
pub fn GetTexParameterIuiv(target: @"enum", pname: @"enum", params: uint) void {
   return FuncTable.current.?.GetTexParameterIuiv(target, pname, params);
}
pub fn GetTexParameterIiv(target: @"enum", pname: @"enum", params: int) void {
   return FuncTable.current.?.GetTexParameterIiv(target, pname, params);
}
pub fn TexParameterIuiv(target: @"enum", pname: @"enum", params: [*c]const uint) void {
   return FuncTable.current.?.TexParameterIuiv(target, pname, params);
}
pub fn TexParameterIiv(target: @"enum", pname: @"enum", params: [*c]const int) void {
   return FuncTable.current.?.TexParameterIiv(target, pname, params);
}
pub fn Uniform4uiv(location: int, count: sizei, value: [*c]const uint) void {
   return FuncTable.current.?.Uniform4uiv(location, count, value);
}
pub fn Uniform3uiv(location: int, count: sizei, value: [*c]const uint) void {
   return FuncTable.current.?.Uniform3uiv(location, count, value);
}
pub fn Uniform2uiv(location: int, count: sizei, value: [*c]const uint) void {
   return FuncTable.current.?.Uniform2uiv(location, count, value);
}
pub fn Uniform1uiv(location: int, count: sizei, value: [*c]const uint) void {
   return FuncTable.current.?.Uniform1uiv(location, count, value);
}
pub fn Uniform4ui(location: int, v0: uint, v1: uint, v2: uint, v3: uint) void {
   return FuncTable.current.?.Uniform4ui(location, v0, v1, v2, v3);
}
pub fn Uniform3ui(location: int, v0: uint, v1: uint, v2: uint) void {
   return FuncTable.current.?.Uniform3ui(location, v0, v1, v2);
}
pub fn Uniform2ui(location: int, v0: uint, v1: uint) void {
   return FuncTable.current.?.Uniform2ui(location, v0, v1);
}
pub fn Uniform1ui(location: int, v0: uint) void {
   return FuncTable.current.?.Uniform1ui(location, v0);
}
pub fn GetFragDataLocation(program: uint, name: [*c]const char) int {
   return FuncTable.current.?.GetFragDataLocation(program, name);
}
pub fn BindFragDataLocation(program: uint, color: uint, name: [*c]const char) void {
   return FuncTable.current.?.BindFragDataLocation(program, color, name);
}
pub fn GetUniformuiv(program: uint, location: int, params: uint) void {
   return FuncTable.current.?.GetUniformuiv(program, location, params);
}
pub fn VertexAttribI4usv(index: uint, v: [*c]const ushort) void {
   return FuncTable.current.?.VertexAttribI4usv(index, v);
}
pub fn VertexAttribI4ubv(index: uint, v: [*c]const ubyte) void {
   return FuncTable.current.?.VertexAttribI4ubv(index, v);
}
pub fn VertexAttribI4sv(index: uint, v: [*c]const short) void {
   return FuncTable.current.?.VertexAttribI4sv(index, v);
}
pub fn VertexAttribI4bv(index: uint, v: [*c]const byte) void {
   return FuncTable.current.?.VertexAttribI4bv(index, v);
}
pub fn VertexAttribI4uiv(index: uint, v: [*c]const uint) void {
   return FuncTable.current.?.VertexAttribI4uiv(index, v);
}
pub fn VertexAttribI3uiv(index: uint, v: [*c]const uint) void {
   return FuncTable.current.?.VertexAttribI3uiv(index, v);
}
pub fn VertexAttribI2uiv(index: uint, v: [*c]const uint) void {
   return FuncTable.current.?.VertexAttribI2uiv(index, v);
}
pub fn VertexAttribI1uiv(index: uint, v: [*c]const uint) void {
   return FuncTable.current.?.VertexAttribI1uiv(index, v);
}
pub fn VertexAttribI4iv(index: uint, v: [*c]const int) void {
   return FuncTable.current.?.VertexAttribI4iv(index, v);
}
pub fn VertexAttribI3iv(index: uint, v: [*c]const int) void {
   return FuncTable.current.?.VertexAttribI3iv(index, v);
}
pub fn VertexAttribI2iv(index: uint, v: [*c]const int) void {
   return FuncTable.current.?.VertexAttribI2iv(index, v);
}
pub fn VertexAttribI1iv(index: uint, v: [*c]const int) void {
   return FuncTable.current.?.VertexAttribI1iv(index, v);
}
pub fn VertexAttribI4ui(index: uint, x: uint, y: uint, z: uint, w: uint) void {
   return FuncTable.current.?.VertexAttribI4ui(index, x, y, z, w);
}
pub fn VertexAttribI3ui(index: uint, x: uint, y: uint, z: uint) void {
   return FuncTable.current.?.VertexAttribI3ui(index, x, y, z);
}
pub fn VertexAttribI2ui(index: uint, x: uint, y: uint) void {
   return FuncTable.current.?.VertexAttribI2ui(index, x, y);
}
pub fn VertexAttribI1ui(index: uint, x: uint) void {
   return FuncTable.current.?.VertexAttribI1ui(index, x);
}
pub fn VertexAttribI4i(index: uint, x: int, y: int, z: int, w: int) void {
   return FuncTable.current.?.VertexAttribI4i(index, x, y, z, w);
}
pub fn VertexAttribI3i(index: uint, x: int, y: int, z: int) void {
   return FuncTable.current.?.VertexAttribI3i(index, x, y, z);
}
pub fn VertexAttribI2i(index: uint, x: int, y: int) void {
   return FuncTable.current.?.VertexAttribI2i(index, x, y);
}
pub fn VertexAttribI1i(index: uint, x: int) void {
   return FuncTable.current.?.VertexAttribI1i(index, x);
}
pub fn GetVertexAttribIuiv(index: uint, pname: @"enum", params: uint) void {
   return FuncTable.current.?.GetVertexAttribIuiv(index, pname, params);
}
pub fn GetVertexAttribIiv(index: uint, pname: @"enum", params: int) void {
   return FuncTable.current.?.GetVertexAttribIiv(index, pname, params);
}
pub fn VertexAttribIPointer(index: uint, size: int, @"type": @"enum", stride: sizei, pointer: ?*const anyopaque) void {
   return FuncTable.current.?.VertexAttribIPointer(index, size, @"type", stride, pointer);
}
pub fn EndConditionalRender() void {
   return FuncTable.current.?.EndConditionalRender();
}
pub fn BeginConditionalRender(id: uint, mode: @"enum") void {
   return FuncTable.current.?.BeginConditionalRender(id, mode);
}
pub fn ClampColor(target: @"enum", clamp: @"enum") void {
   return FuncTable.current.?.ClampColor(target, clamp);
}
pub fn GetTransformFeedbackVarying(program: uint, index: uint, bufSize: sizei, length: sizei, size: sizei, @"type": @"enum", name: char) void {
   return FuncTable.current.?.GetTransformFeedbackVarying(program, index, bufSize, length, size, @"type", name);
}
pub fn TransformFeedbackVaryings(program: uint, count: sizei, varyings: [*c]const [*c]const char, bufferMode: @"enum") void {
   return FuncTable.current.?.TransformFeedbackVaryings(program, count, varyings, bufferMode);
}
pub fn EndTransformFeedback() void {
   return FuncTable.current.?.EndTransformFeedback();
}
pub fn BeginTransformFeedback(primitiveMode: @"enum") void {
   return FuncTable.current.?.BeginTransformFeedback(primitiveMode);
}
pub fn IsEnabledi(target: @"enum", index: uint) boolean {
   return FuncTable.current.?.IsEnabledi(target, index);
}
pub fn Disablei(target: @"enum", index: uint) void {
   return FuncTable.current.?.Disablei(target, index);
}
pub fn Enablei(target: @"enum", index: uint) void {
   return FuncTable.current.?.Enablei(target, index);
}
pub fn GetBooleani_v(target: @"enum", index: uint, data: boolean) void {
   return FuncTable.current.?.GetBooleani_v(target, index, data);
}
pub fn ColorMaski(index: uint, r: boolean, g: boolean, b: boolean, a: boolean) void {
   return FuncTable.current.?.ColorMaski(index, r, g, b, a);
}
pub fn UniformMatrix4x3fv(location: int, count: sizei, transpose: boolean, value: [*c]const float) void {
   return FuncTable.current.?.UniformMatrix4x3fv(location, count, transpose, value);
}
pub fn UniformMatrix3x4fv(location: int, count: sizei, transpose: boolean, value: [*c]const float) void {
   return FuncTable.current.?.UniformMatrix3x4fv(location, count, transpose, value);
}
pub fn UniformMatrix4x2fv(location: int, count: sizei, transpose: boolean, value: [*c]const float) void {
   return FuncTable.current.?.UniformMatrix4x2fv(location, count, transpose, value);
}
pub fn UniformMatrix2x4fv(location: int, count: sizei, transpose: boolean, value: [*c]const float) void {
   return FuncTable.current.?.UniformMatrix2x4fv(location, count, transpose, value);
}
pub fn UniformMatrix3x2fv(location: int, count: sizei, transpose: boolean, value: [*c]const float) void {
   return FuncTable.current.?.UniformMatrix3x2fv(location, count, transpose, value);
}
pub fn UniformMatrix2x3fv(location: int, count: sizei, transpose: boolean, value: [*c]const float) void {
   return FuncTable.current.?.UniformMatrix2x3fv(location, count, transpose, value);
}
pub fn VertexAttribPointer(index: uint, size: int, @"type": @"enum", normalized: boolean, stride: sizei, pointer: ?*const anyopaque) void {
   return FuncTable.current.?.VertexAttribPointer(index, size, @"type", normalized, stride, pointer);
}
pub fn VertexAttrib4usv(index: uint, v: [*c]const ushort) void {
   return FuncTable.current.?.VertexAttrib4usv(index, v);
}
pub fn VertexAttrib4uiv(index: uint, v: [*c]const uint) void {
   return FuncTable.current.?.VertexAttrib4uiv(index, v);
}
pub fn VertexAttrib4ubv(index: uint, v: [*c]const ubyte) void {
   return FuncTable.current.?.VertexAttrib4ubv(index, v);
}
pub fn VertexAttrib4sv(index: uint, v: [*c]const short) void {
   return FuncTable.current.?.VertexAttrib4sv(index, v);
}
pub fn VertexAttrib4s(index: uint, x: short, y: short, z: short, w: short) void {
   return FuncTable.current.?.VertexAttrib4s(index, x, y, z, w);
}
pub fn VertexAttrib4iv(index: uint, v: [*c]const int) void {
   return FuncTable.current.?.VertexAttrib4iv(index, v);
}
pub fn VertexAttrib4fv(index: uint, v: [*c]const float) void {
   return FuncTable.current.?.VertexAttrib4fv(index, v);
}
pub fn VertexAttrib4f(index: uint, x: float, y: float, z: float, w: float) void {
   return FuncTable.current.?.VertexAttrib4f(index, x, y, z, w);
}
pub fn VertexAttrib4dv(index: uint, v: [*c]const double) void {
   return FuncTable.current.?.VertexAttrib4dv(index, v);
}
pub fn VertexAttrib4d(index: uint, x: double, y: double, z: double, w: double) void {
   return FuncTable.current.?.VertexAttrib4d(index, x, y, z, w);
}
pub fn VertexAttrib4bv(index: uint, v: [*c]const byte) void {
   return FuncTable.current.?.VertexAttrib4bv(index, v);
}
pub fn VertexAttrib4Nusv(index: uint, v: [*c]const ushort) void {
   return FuncTable.current.?.VertexAttrib4Nusv(index, v);
}
pub fn VertexAttrib4Nuiv(index: uint, v: [*c]const uint) void {
   return FuncTable.current.?.VertexAttrib4Nuiv(index, v);
}
pub fn VertexAttrib4Nubv(index: uint, v: [*c]const ubyte) void {
   return FuncTable.current.?.VertexAttrib4Nubv(index, v);
}
pub fn VertexAttrib4Nub(index: uint, x: ubyte, y: ubyte, z: ubyte, w: ubyte) void {
   return FuncTable.current.?.VertexAttrib4Nub(index, x, y, z, w);
}
pub fn VertexAttrib4Nsv(index: uint, v: [*c]const short) void {
   return FuncTable.current.?.VertexAttrib4Nsv(index, v);
}
pub fn VertexAttrib4Niv(index: uint, v: [*c]const int) void {
   return FuncTable.current.?.VertexAttrib4Niv(index, v);
}
pub fn VertexAttrib4Nbv(index: uint, v: [*c]const byte) void {
   return FuncTable.current.?.VertexAttrib4Nbv(index, v);
}
pub fn VertexAttrib3sv(index: uint, v: [*c]const short) void {
   return FuncTable.current.?.VertexAttrib3sv(index, v);
}
pub fn VertexAttrib3s(index: uint, x: short, y: short, z: short) void {
   return FuncTable.current.?.VertexAttrib3s(index, x, y, z);
}
pub fn VertexAttrib3fv(index: uint, v: [*c]const float) void {
   return FuncTable.current.?.VertexAttrib3fv(index, v);
}
pub fn VertexAttrib3f(index: uint, x: float, y: float, z: float) void {
   return FuncTable.current.?.VertexAttrib3f(index, x, y, z);
}
pub fn VertexAttrib3dv(index: uint, v: [*c]const double) void {
   return FuncTable.current.?.VertexAttrib3dv(index, v);
}
pub fn VertexAttrib3d(index: uint, x: double, y: double, z: double) void {
   return FuncTable.current.?.VertexAttrib3d(index, x, y, z);
}
pub fn VertexAttrib2sv(index: uint, v: [*c]const short) void {
   return FuncTable.current.?.VertexAttrib2sv(index, v);
}
pub fn VertexAttrib2s(index: uint, x: short, y: short) void {
   return FuncTable.current.?.VertexAttrib2s(index, x, y);
}
pub fn VertexAttrib2fv(index: uint, v: [*c]const float) void {
   return FuncTable.current.?.VertexAttrib2fv(index, v);
}
pub fn VertexAttrib2f(index: uint, x: float, y: float) void {
   return FuncTable.current.?.VertexAttrib2f(index, x, y);
}
pub fn VertexAttrib2dv(index: uint, v: [*c]const double) void {
   return FuncTable.current.?.VertexAttrib2dv(index, v);
}
pub fn VertexAttrib2d(index: uint, x: double, y: double) void {
   return FuncTable.current.?.VertexAttrib2d(index, x, y);
}
pub fn VertexAttrib1sv(index: uint, v: [*c]const short) void {
   return FuncTable.current.?.VertexAttrib1sv(index, v);
}
pub fn VertexAttrib1s(index: uint, x: short) void {
   return FuncTable.current.?.VertexAttrib1s(index, x);
}
pub fn VertexAttrib1fv(index: uint, v: [*c]const float) void {
   return FuncTable.current.?.VertexAttrib1fv(index, v);
}
pub fn VertexAttrib1f(index: uint, x: float) void {
   return FuncTable.current.?.VertexAttrib1f(index, x);
}
pub fn VertexAttrib1dv(index: uint, v: [*c]const double) void {
   return FuncTable.current.?.VertexAttrib1dv(index, v);
}
pub fn VertexAttrib1d(index: uint, x: double) void {
   return FuncTable.current.?.VertexAttrib1d(index, x);
}
pub fn ValidateProgram(program: uint) void {
   return FuncTable.current.?.ValidateProgram(program);
}
pub fn UniformMatrix4fv(location: int, count: sizei, transpose: boolean, value: [*c]const float) void {
   return FuncTable.current.?.UniformMatrix4fv(location, count, transpose, value);
}
pub fn UniformMatrix3fv(location: int, count: sizei, transpose: boolean, value: [*c]const float) void {
   return FuncTable.current.?.UniformMatrix3fv(location, count, transpose, value);
}
pub fn UniformMatrix2fv(location: int, count: sizei, transpose: boolean, value: [*c]const float) void {
   return FuncTable.current.?.UniformMatrix2fv(location, count, transpose, value);
}
pub fn Uniform4iv(location: int, count: sizei, value: [*c]const int) void {
   return FuncTable.current.?.Uniform4iv(location, count, value);
}
pub fn Uniform3iv(location: int, count: sizei, value: [*c]const int) void {
   return FuncTable.current.?.Uniform3iv(location, count, value);
}
pub fn Uniform2iv(location: int, count: sizei, value: [*c]const int) void {
   return FuncTable.current.?.Uniform2iv(location, count, value);
}
pub fn Uniform1iv(location: int, count: sizei, value: [*c]const int) void {
   return FuncTable.current.?.Uniform1iv(location, count, value);
}
pub fn Uniform4fv(location: int, count: sizei, value: [*c]const float) void {
   return FuncTable.current.?.Uniform4fv(location, count, value);
}
pub fn Uniform3fv(location: int, count: sizei, value: [*c]const float) void {
   return FuncTable.current.?.Uniform3fv(location, count, value);
}
pub fn Uniform2fv(location: int, count: sizei, value: [*c]const float) void {
   return FuncTable.current.?.Uniform2fv(location, count, value);
}
pub fn Uniform1fv(location: int, count: sizei, value: [*c]const float) void {
   return FuncTable.current.?.Uniform1fv(location, count, value);
}
pub fn Uniform4i(location: int, v0: int, v1: int, v2: int, v3: int) void {
   return FuncTable.current.?.Uniform4i(location, v0, v1, v2, v3);
}
pub fn Uniform3i(location: int, v0: int, v1: int, v2: int) void {
   return FuncTable.current.?.Uniform3i(location, v0, v1, v2);
}
pub fn Uniform2i(location: int, v0: int, v1: int) void {
   return FuncTable.current.?.Uniform2i(location, v0, v1);
}
pub fn Uniform1i(location: int, v0: int) void {
   return FuncTable.current.?.Uniform1i(location, v0);
}
pub fn Uniform4f(location: int, v0: float, v1: float, v2: float, v3: float) void {
   return FuncTable.current.?.Uniform4f(location, v0, v1, v2, v3);
}
pub fn Uniform3f(location: int, v0: float, v1: float, v2: float) void {
   return FuncTable.current.?.Uniform3f(location, v0, v1, v2);
}
pub fn Uniform2f(location: int, v0: float, v1: float) void {
   return FuncTable.current.?.Uniform2f(location, v0, v1);
}
pub fn Uniform1f(location: int, v0: float) void {
   return FuncTable.current.?.Uniform1f(location, v0);
}
pub fn UseProgram(program: uint) void {
   return FuncTable.current.?.UseProgram(program);
}
pub fn ShaderSource(shader: uint, count: sizei, string: [*c]const [*c]const char, length: [*c]const int) void {
   return FuncTable.current.?.ShaderSource(shader, count, string, length);
}
pub fn LinkProgram(program: uint) void {
   return FuncTable.current.?.LinkProgram(program);
}
pub fn IsShader(shader: uint) boolean {
   return FuncTable.current.?.IsShader(shader);
}
pub fn IsProgram(program: uint) boolean {
   return FuncTable.current.?.IsProgram(program);
}
pub fn GetVertexAttribPointerv(index: uint, pname: @"enum", pointer: ?*const anyopaque) void {
   return FuncTable.current.?.GetVertexAttribPointerv(index, pname, pointer);
}
pub fn GetVertexAttribiv(index: uint, pname: @"enum", params: int) void {
   return FuncTable.current.?.GetVertexAttribiv(index, pname, params);
}
pub fn GetVertexAttribfv(index: uint, pname: @"enum", params: float) void {
   return FuncTable.current.?.GetVertexAttribfv(index, pname, params);
}
pub fn GetVertexAttribdv(index: uint, pname: @"enum", params: double) void {
   return FuncTable.current.?.GetVertexAttribdv(index, pname, params);
}
pub fn GetUniformiv(program: uint, location: int, params: int) void {
   return FuncTable.current.?.GetUniformiv(program, location, params);
}
pub fn GetUniformfv(program: uint, location: int, params: float) void {
   return FuncTable.current.?.GetUniformfv(program, location, params);
}
pub fn GetUniformLocation(program: uint, name: [*c]const char) int {
   return FuncTable.current.?.GetUniformLocation(program, name);
}
pub fn GetShaderSource(shader: uint, bufSize: sizei, length: sizei, source: char) void {
   return FuncTable.current.?.GetShaderSource(shader, bufSize, length, source);
}
pub fn GetShaderInfoLog(shader: uint, bufSize: sizei, length: sizei, infoLog: char) void {
   return FuncTable.current.?.GetShaderInfoLog(shader, bufSize, length, infoLog);
}
pub fn GetShaderiv(shader: uint, pname: @"enum", params: int) void {
   return FuncTable.current.?.GetShaderiv(shader, pname, params);
}
pub fn GetProgramInfoLog(program: uint, bufSize: sizei, length: sizei, infoLog: char) void {
   return FuncTable.current.?.GetProgramInfoLog(program, bufSize, length, infoLog);
}
pub fn GetProgramiv(program: uint, pname: @"enum", params: int) void {
   return FuncTable.current.?.GetProgramiv(program, pname, params);
}
pub fn GetAttribLocation(program: uint, name: [*c]const char) int {
   return FuncTable.current.?.GetAttribLocation(program, name);
}
pub fn GetAttachedShaders(program: uint, maxCount: sizei, count: sizei, shaders: uint) void {
   return FuncTable.current.?.GetAttachedShaders(program, maxCount, count, shaders);
}
pub fn GetActiveUniform(program: uint, index: uint, bufSize: sizei, length: sizei, size: int, @"type": @"enum", name: char) void {
   return FuncTable.current.?.GetActiveUniform(program, index, bufSize, length, size, @"type", name);
}
pub fn GetActiveAttrib(program: uint, index: uint, bufSize: sizei, length: sizei, size: int, @"type": @"enum", name: char) void {
   return FuncTable.current.?.GetActiveAttrib(program, index, bufSize, length, size, @"type", name);
}
pub fn EnableVertexAttribArray(index: uint) void {
   return FuncTable.current.?.EnableVertexAttribArray(index);
}
pub fn DisableVertexAttribArray(index: uint) void {
   return FuncTable.current.?.DisableVertexAttribArray(index);
}
pub fn DetachShader(program: uint, shader: uint) void {
   return FuncTable.current.?.DetachShader(program, shader);
}
pub fn DeleteShader(shader: uint) void {
   return FuncTable.current.?.DeleteShader(shader);
}
pub fn DeleteProgram(program: uint) void {
   return FuncTable.current.?.DeleteProgram(program);
}
pub fn CreateShader(@"type": @"enum") uint {
   return FuncTable.current.?.CreateShader(@"type");
}
pub fn CreateProgram() uint {
   return FuncTable.current.?.CreateProgram();
}
pub fn CompileShader(shader: uint) void {
   return FuncTable.current.?.CompileShader(shader);
}
pub fn BindAttribLocation(program: uint, index: uint, name: [*c]const char) void {
   return FuncTable.current.?.BindAttribLocation(program, index, name);
}
pub fn AttachShader(program: uint, shader: uint) void {
   return FuncTable.current.?.AttachShader(program, shader);
}
pub fn StencilMaskSeparate(face: @"enum", mask: uint) void {
   return FuncTable.current.?.StencilMaskSeparate(face, mask);
}
pub fn StencilFuncSeparate(face: @"enum", func: @"enum", ref: int, mask: uint) void {
   return FuncTable.current.?.StencilFuncSeparate(face, func, ref, mask);
}
pub fn StencilOpSeparate(face: @"enum", sfail: @"enum", dpfail: @"enum", dppass: @"enum") void {
   return FuncTable.current.?.StencilOpSeparate(face, sfail, dpfail, dppass);
}
pub fn DrawBuffers(n: sizei, bufs: [*c]const @"enum") void {
   return FuncTable.current.?.DrawBuffers(n, bufs);
}
pub fn BlendEquationSeparate(modeRGB: @"enum", modeAlpha: @"enum") void {
   return FuncTable.current.?.BlendEquationSeparate(modeRGB, modeAlpha);
}
pub fn GetBufferPointerv(target: @"enum", pname: @"enum", params: ?*const anyopaque) void {
   return FuncTable.current.?.GetBufferPointerv(target, pname, params);
}
pub fn GetBufferParameteriv(target: @"enum", pname: @"enum", params: int) void {
   return FuncTable.current.?.GetBufferParameteriv(target, pname, params);
}
pub fn UnmapBuffer(target: @"enum") boolean {
   return FuncTable.current.?.UnmapBuffer(target);
}
pub fn MapBuffer(target: @"enum", access: @"enum") void {
   return FuncTable.current.?.MapBuffer(target, access);
}
pub fn GetBufferSubData(target: @"enum", offset: intptr, size: sizeiptr, data: ?*const anyopaque) void {
   return FuncTable.current.?.GetBufferSubData(target, offset, size, data);
}
pub fn BufferSubData(target: @"enum", offset: intptr, size: sizeiptr, data: ?*const anyopaque) void {
   return FuncTable.current.?.BufferSubData(target, offset, size, data);
}
pub fn BufferData(target: @"enum", size: sizeiptr, data: ?*const anyopaque, usage: @"enum") void {
   return FuncTable.current.?.BufferData(target, size, data, usage);
}
pub fn IsBuffer(buffer: uint) boolean {
   return FuncTable.current.?.IsBuffer(buffer);
}
pub fn GenBuffers(n: sizei, buffers: uint) void {
   return FuncTable.current.?.GenBuffers(n, buffers);
}
pub fn DeleteBuffers(n: sizei, buffers: [*]uint) void {
   return FuncTable.current.?.DeleteBuffers(n, buffers);
}
pub fn BindBuffer(target: @"enum", buffer: uint) void {
   return FuncTable.current.?.BindBuffer(target, buffer);
}
pub fn GetQueryObjectuiv(id: uint, pname: @"enum", params: uint) void {
   return FuncTable.current.?.GetQueryObjectuiv(id, pname, params);
}
pub fn GetQueryObjectiv(id: uint, pname: @"enum", params: int) void {
   return FuncTable.current.?.GetQueryObjectiv(id, pname, params);
}
pub fn GetQueryiv(target: @"enum", pname: @"enum", params: int) void {
   return FuncTable.current.?.GetQueryiv(target, pname, params);
}
pub fn EndQuery(target: @"enum") void {
   return FuncTable.current.?.EndQuery(target);
}
pub fn BeginQuery(target: @"enum", id: uint) void {
   return FuncTable.current.?.BeginQuery(target, id);
}
pub fn IsQuery(id: uint) boolean {
   return FuncTable.current.?.IsQuery(id);
}
pub fn DeleteQueries(n: sizei, ids: [*c]const uint) void {
   return FuncTable.current.?.DeleteQueries(n, ids);
}
pub fn GenQueries(n: sizei, ids: uint) void {
   return FuncTable.current.?.GenQueries(n, ids);
}
pub fn BlendEquation(mode: @"enum") void {
   return FuncTable.current.?.BlendEquation(mode);
}
pub fn BlendColor(red: float, green: float, blue: float, alpha: float) void {
   return FuncTable.current.?.BlendColor(red, green, blue, alpha);
}
pub fn IsTexture(texture: uint) boolean {
   return FuncTable.current.?.IsTexture(texture);
}
pub fn CopyTexSubImage3D(target: @"enum", level: int, xoffset: int, yoffset: int, zoffset: int, x: int, y: int, width: sizei, height: sizei) void {
   return FuncTable.current.?.CopyTexSubImage3D(target, level, xoffset, yoffset, zoffset, x, y, width, height);
}
pub fn ActiveTexture(texture: @"enum") void {
   return FuncTable.current.?.ActiveTexture(texture);
}
pub fn SampleCoverage(value: float, invert: boolean) void {
   return FuncTable.current.?.SampleCoverage(value, invert);
}
pub fn CompressedTexImage3D(target: @"enum", level: int, internalformat: @"enum", width: sizei, height: sizei, depth: sizei, border: int, imageSize: sizei, data: ?*const anyopaque) void {
   return FuncTable.current.?.CompressedTexImage3D(target, level, internalformat, width, height, depth, border, imageSize, data);
}
pub fn CompressedTexImage2D(target: @"enum", level: int, internalformat: @"enum", width: sizei, height: sizei, border: int, imageSize: sizei, data: ?*const anyopaque) void {
   return FuncTable.current.?.CompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data);
}
pub fn CompressedTexImage1D(target: @"enum", level: int, internalformat: @"enum", width: sizei, border: int, imageSize: sizei, data: ?*const anyopaque) void {
   return FuncTable.current.?.CompressedTexImage1D(target, level, internalformat, width, border, imageSize, data);
}
pub fn CompressedTexSubImage2D(target: @"enum", level: int, xoffset: int, yoffset: int, width: sizei, height: sizei, format: @"enum", imageSize: sizei, data: ?*const anyopaque) void {
   return FuncTable.current.?.CompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data);
}
pub fn CompressedTexSubImage1D(target: @"enum", level: int, xoffset: int, width: sizei, format: @"enum", imageSize: sizei, data: ?*const anyopaque) void {
   return FuncTable.current.?.CompressedTexSubImage1D(target, level, xoffset, width, format, imageSize, data);
}
pub fn GetCompressedTexImage(target: @"enum", level: int, img: ?*const anyopaque) void {
   return FuncTable.current.?.GetCompressedTexImage(target, level, img);
}
pub fn BlendFuncSeparate(sfactorRGB: @"enum", dfactorRGB: @"enum", sfactorAlpha: @"enum", dfactorAlpha: @"enum") void {
   return FuncTable.current.?.BlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
}
pub fn PointParameteriv(pname: @"enum", params: [*c]const int) void {
   return FuncTable.current.?.PointParameteriv(pname, params);
}
pub fn PointParameteri(pname: @"enum", param: int) void {
   return FuncTable.current.?.PointParameteri(pname, param);
}
pub fn PointParameterfv(pname: @"enum", params: [*c]const float) void {
   return FuncTable.current.?.PointParameterfv(pname, params);
}
pub fn PointParameterf(pname: @"enum", param: float) void {
   return FuncTable.current.?.PointParameterf(pname, param);
}
pub fn MultiDrawElements(mode: @"enum", count: [*c]const sizei, @"type": @"enum", indices: ?*const anyopaque, drawcount: sizei) void {
   return FuncTable.current.?.MultiDrawElements(mode, count, @"type", indices, drawcount);
}
pub fn MultiDrawArrays(mode: @"enum", first: [*c]const int, count: [*c]const sizei, drawcount: sizei) void {
   return FuncTable.current.?.MultiDrawArrays(mode, first, count, drawcount);
}
pub fn DrawRangeElements(mode: @"enum", start: uint, end: uint, count: sizei, @"type": @"enum", indices: ?*const anyopaque) void {
   return FuncTable.current.?.DrawRangeElements(mode, start, end, count, @"type", indices);
}
pub fn TexImage3D(target: @"enum", level: int, internalformat: int, width: sizei, height: sizei, depth: sizei, border: int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
   return FuncTable.current.?.TexImage3D(target, level, internalformat, width, height, depth, border, format, @"type", pixels);
}
pub fn TexSubImage3D(target: @"enum", level: int, xoffset: int, yoffset: int, zoffset: int, width: sizei, height: sizei, depth: sizei, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
   return FuncTable.current.?.TexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, @"type", pixels);
}
pub fn DrawArrays(mode: @"enum", first: int, count: sizei) void {
   return FuncTable.current.?.DrawArrays(mode, first, count);
}
pub fn DrawElements(mode: @"enum", count: sizei, @"type": @"enum", indices: ?*const anyopaque) void {
   return FuncTable.current.?.DrawElements(mode, count, @"type", indices);
}
pub fn CompressedTexSubImage3D(target: @"enum", level: int, xoffset: int, yoffset: int, zoffset: int, width: sizei, height: sizei, depth: sizei, format: @"enum", imageSize: sizei, data: ?*const anyopaque) void {
   return FuncTable.current.?.CompressedTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, data);
}
pub fn PolygonOffset(factor: float, units: float) void {
   return FuncTable.current.?.PolygonOffset(factor, units);
}
pub fn CopyTexImage1D(target: @"enum", level: int, internalformat: @"enum", x: int, y: int, width: sizei, border: int) void {
   return FuncTable.current.?.CopyTexImage1D(target, level, internalformat, x, y, width, border);
}
pub fn CopyTexImage2D(target: @"enum", level: int, internalformat: @"enum", x: int, y: int, width: sizei, height: sizei, border: int) void {
   return FuncTable.current.?.CopyTexImage2D(target, level, internalformat, x, y, width, height, border);
}
pub fn CopyTexSubImage1D(target: @"enum", level: int, xoffset: int, x: int, y: int, width: sizei) void {
   return FuncTable.current.?.CopyTexSubImage1D(target, level, xoffset, x, y, width);
}
pub fn CopyTexSubImage2D(target: @"enum", level: int, xoffset: int, yoffset: int, x: int, y: int, width: sizei, height: sizei) void {
   return FuncTable.current.?.CopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height);
}
pub fn TexSubImage1D(target: @"enum", level: int, xoffset: int, width: sizei, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
   return FuncTable.current.?.TexSubImage1D(target, level, xoffset, width, format, @"type", pixels);
}
pub fn TexSubImage2D(target: @"enum", level: int, xoffset: int, yoffset: int, width: sizei, height: sizei, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) void {
   return FuncTable.current.?.TexSubImage2D(target, level, xoffset, yoffset, width, height, format, @"type", pixels);
}
pub fn BindTexture(target: @"enum", texture: uint) void {
   return FuncTable.current.?.BindTexture(target, texture);
}
pub fn DeleteTextures(n: sizei, textures: [*c]const uint) void {
   return FuncTable.current.?.DeleteTextures(n, textures);
}
pub fn GenTextures(n: sizei, textures: uint) void {
   return FuncTable.current.?.GenTextures(n, textures);
}
pub const FuncTable = struct {
   threadlocal var current: ?*const FuncTable = null;
   BindBufferBase: *const fn (target: @"enum", index: uint, buffer: uint) callconv(APIENTRY) void,
   BindBufferRange: *const fn (target: @"enum", index: uint, buffer: uint, offset: intptr, size: sizeiptr) callconv(APIENTRY) void,
   GetIntegeri_v: *const fn (target: @"enum", index: uint, data: int) callconv(APIENTRY) void,
   CullFace: *const fn (mode: @"enum") callconv(APIENTRY) void,
   FrontFace: *const fn (mode: @"enum") callconv(APIENTRY) void,
   Hint: *const fn (target: @"enum", mode: @"enum") callconv(APIENTRY) void,
   LineWidth: *const fn (width: float) callconv(APIENTRY) void,
   PointSize: *const fn (size: float) callconv(APIENTRY) void,
   PolygonMode: *const fn (face: @"enum", mode: @"enum") callconv(APIENTRY) void,
   Scissor: *const fn (x: int, y: int, width: sizei, height: sizei) callconv(APIENTRY) void,
   TexParameterf: *const fn (target: @"enum", pname: @"enum", param: float) callconv(APIENTRY) void,
   TexParameterfv: *const fn (target: @"enum", pname: @"enum", params: [*c]const float) callconv(APIENTRY) void,
   TexParameteri: *const fn (target: @"enum", pname: @"enum", param: int) callconv(APIENTRY) void,
   TexParameteriv: *const fn (target: @"enum", pname: @"enum", params: [*c]const int) callconv(APIENTRY) void,
   TexImage1D: *const fn (target: @"enum", level: int, internalformat: int, width: sizei, border: int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
   TexImage2D: *const fn (target: @"enum", level: int, internalformat: int, width: sizei, height: sizei, border: int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
   DrawBuffer: *const fn (buf: @"enum") callconv(APIENTRY) void,
   Clear: *const fn (mask: bitfield) callconv(APIENTRY) void,
   ClearColor: *const fn (red: float, green: float, blue: float, alpha: float) callconv(APIENTRY) void,
   ClearStencil: *const fn (s: int) callconv(APIENTRY) void,
   ClearDepth: *const fn (depth: double) callconv(APIENTRY) void,
   StencilMask: *const fn (mask: uint) callconv(APIENTRY) void,
   ColorMask: *const fn (red: boolean, green: boolean, blue: boolean, alpha: boolean) callconv(APIENTRY) void,
   DepthMask: *const fn (flag: boolean) callconv(APIENTRY) void,
   Disable: *const fn (cap: @"enum") callconv(APIENTRY) void,
   Enable: *const fn (cap: @"enum") callconv(APIENTRY) void,
   Finish: *const fn () callconv(APIENTRY) void,
   Flush: *const fn () callconv(APIENTRY) void,
   BlendFunc: *const fn (sfactor: @"enum", dfactor: @"enum") callconv(APIENTRY) void,
   LogicOp: *const fn (opcode: @"enum") callconv(APIENTRY) void,
   StencilFunc: *const fn (func: @"enum", ref: int, mask: uint) callconv(APIENTRY) void,
   StencilOp: *const fn (fail: @"enum", zfail: @"enum", zpass: @"enum") callconv(APIENTRY) void,
   DepthFunc: *const fn (func: @"enum") callconv(APIENTRY) void,
   PixelStoref: *const fn (pname: @"enum", param: float) callconv(APIENTRY) void,
   PixelStorei: *const fn (pname: @"enum", param: int) callconv(APIENTRY) void,
   ReadBuffer: *const fn (src: @"enum") callconv(APIENTRY) void,
   ReadPixels: *const fn (x: int, y: int, width: sizei, height: sizei, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
   GetBooleanv: *const fn (pname: @"enum", data: boolean) callconv(APIENTRY) void,
   GetDoublev: *const fn (pname: @"enum", data: double) callconv(APIENTRY) void,
   GetError: *const fn () callconv(APIENTRY) @"enum",
   GetFloatv: *const fn (pname: @"enum", data: float) callconv(APIENTRY) void,
   GetIntegerv: *const fn (pname: @"enum", data: int) callconv(APIENTRY) void,
   GetString: *const fn (name: @"enum") callconv(APIENTRY) ubyte,
   GetTexImage: *const fn (target: @"enum", level: int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
   GetTexParameterfv: *const fn (target: @"enum", pname: @"enum", params: float) callconv(APIENTRY) void,
   GetTexParameteriv: *const fn (target: @"enum", pname: @"enum", params: int) callconv(APIENTRY) void,
   GetTexLevelParameterfv: *const fn (target: @"enum", level: int, pname: @"enum", params: float) callconv(APIENTRY) void,
   GetTexLevelParameteriv: *const fn (target: @"enum", level: int, pname: @"enum", params: int) callconv(APIENTRY) void,
   IsEnabled: *const fn (cap: @"enum") callconv(APIENTRY) boolean,
   DepthRange: *const fn (n: double, f: double) callconv(APIENTRY) void,
   Viewport: *const fn (x: int, y: int, width: sizei, height: sizei) callconv(APIENTRY) void,
   SampleMaski: *const fn (maskNumber: uint, mask: bitfield) callconv(APIENTRY) void,
   GetMultisamplefv: *const fn (pname: @"enum", index: uint, val: float) callconv(APIENTRY) void,
   TexImage3DMultisample: *const fn (target: @"enum", samples: sizei, internalformat: @"enum", width: sizei, height: sizei, depth: sizei, fixedsamplelocations: boolean) callconv(APIENTRY) void,
   TexImage2DMultisample: *const fn (target: @"enum", samples: sizei, internalformat: @"enum", width: sizei, height: sizei, fixedsamplelocations: boolean) callconv(APIENTRY) void,
   FramebufferTexture: *const fn (target: @"enum", attachment: @"enum", texture: uint, level: int) callconv(APIENTRY) void,
   GetBufferParameteri64v: *const fn (target: @"enum", pname: @"enum", params: int64) callconv(APIENTRY) void,
   GetInteger64i_v: *const fn (target: @"enum", index: uint, data: int64) callconv(APIENTRY) void,
   GetSynciv: *const fn (_sync: sync, pname: @"enum", count: sizei, length: sizei, values: int) callconv(APIENTRY) void,
   GetInteger64v: *const fn (pname: @"enum", data: int64) callconv(APIENTRY) void,
   WaitSync: *const fn (_sync: sync, flags: bitfield, timeout: uint64) callconv(APIENTRY) void,
   ClientWaitSync: *const fn (_sync: sync, flags: bitfield, timeout: uint64) callconv(APIENTRY) @"enum",
   DeleteSync: *const fn (_sync: sync) callconv(APIENTRY) void,
   IsSync: *const fn (_sync: sync) callconv(APIENTRY) boolean,
   FenceSync: *const fn (condition: @"enum", flags: bitfield) callconv(APIENTRY) sync,
   ProvokingVertex: *const fn (mode: @"enum") callconv(APIENTRY) void,
   MultiDrawElementsBaseVertex: *const fn (mode: @"enum", count: [*c]const sizei, @"type": @"enum", indices: ?*const anyopaque, drawcount: sizei, basevertex: [*c]const int) callconv(APIENTRY) void,
   DrawElementsInstancedBaseVertex: *const fn (mode: @"enum", count: sizei, @"type": @"enum", indices: ?*const anyopaque, instancecount: sizei, basevertex: int) callconv(APIENTRY) void,
   DrawRangeElementsBaseVertex: *const fn (mode: @"enum", start: uint, end: uint, count: sizei, @"type": @"enum", indices: ?*const anyopaque, basevertex: int) callconv(APIENTRY) void,
   DrawElementsBaseVertex: *const fn (mode: @"enum", count: sizei, @"type": @"enum", indices: ?*const anyopaque, basevertex: int) callconv(APIENTRY) void,
   UniformBlockBinding: *const fn (program: uint, uniformBlockIndex: uint, uniformBlockBinding: uint) callconv(APIENTRY) void,
   GetActiveUniformBlockName: *const fn (program: uint, uniformBlockIndex: uint, bufSize: sizei, length: sizei, uniformBlockName: char) callconv(APIENTRY) void,
   GetActiveUniformBlockiv: *const fn (program: uint, uniformBlockIndex: uint, pname: @"enum", params: int) callconv(APIENTRY) void,
   GetUniformBlockIndex: *const fn (program: uint, uniformBlockName: [*c]const char) callconv(APIENTRY) uint,
   GetActiveUniformName: *const fn (program: uint, uniformIndex: uint, bufSize: sizei, length: sizei, uniformName: char) callconv(APIENTRY) void,
   GetActiveUniformsiv: *const fn (program: uint, uniformCount: sizei, uniformIndices: [*c]const uint, pname: @"enum", params: int) callconv(APIENTRY) void,
   GetUniformIndices: *const fn (program: uint, uniformCount: sizei, uniformNames: [*c]const [*c]const char, uniformIndices: uint) callconv(APIENTRY) void,
   CopyBufferSubData: *const fn (readTarget: @"enum", writeTarget: @"enum", readOffset: intptr, writeOffset: intptr, size: sizeiptr) callconv(APIENTRY) void,
   PrimitiveRestartIndex: *const fn (index: uint) callconv(APIENTRY) void,
   TexBuffer: *const fn (target: @"enum", internalformat: @"enum", buffer: uint) callconv(APIENTRY) void,
   DrawElementsInstanced: *const fn (mode: @"enum", count: sizei, @"type": @"enum", indices: ?*const anyopaque, instancecount: sizei) callconv(APIENTRY) void,
   DrawArraysInstanced: *const fn (mode: @"enum", first: int, count: sizei, instancecount: sizei) callconv(APIENTRY) void,
   IsVertexArray: *const fn (array: uint) callconv(APIENTRY) boolean,
   GenVertexArrays: *const fn (n: sizei, arrays: uint) callconv(APIENTRY) void,
   DeleteVertexArrays: *const fn (n: sizei, arrays: [*c]const uint) callconv(APIENTRY) void,
   BindVertexArray: *const fn (array: uint) callconv(APIENTRY) void,
   FlushMappedBufferRange: *const fn (target: @"enum", offset: intptr, length: sizeiptr) callconv(APIENTRY) void,
   MapBufferRange: *const fn (target: @"enum", offset: intptr, length: sizeiptr, access: bitfield) callconv(APIENTRY) void,
   FramebufferTextureLayer: *const fn (target: @"enum", attachment: @"enum", texture: uint, level: int, layer: int) callconv(APIENTRY) void,
   RenderbufferStorageMultisample: *const fn (target: @"enum", samples: sizei, internalformat: @"enum", width: sizei, height: sizei) callconv(APIENTRY) void,
   BlitFramebuffer: *const fn (srcX0: int, srcY0: int, srcX1: int, srcY1: int, dstX0: int, dstY0: int, dstX1: int, dstY1: int, mask: bitfield, filter: @"enum") callconv(APIENTRY) void,
   GenerateMipmap: *const fn (target: @"enum") callconv(APIENTRY) void,
   GetFramebufferAttachmentParameteriv: *const fn (target: @"enum", attachment: @"enum", pname: @"enum", params: int) callconv(APIENTRY) void,
   FramebufferRenderbuffer: *const fn (target: @"enum", attachment: @"enum", renderbuffertarget: @"enum", renderbuffer: uint) callconv(APIENTRY) void,
   FramebufferTexture3D: *const fn (target: @"enum", attachment: @"enum", textarget: @"enum", texture: uint, level: int, zoffset: int) callconv(APIENTRY) void,
   FramebufferTexture2D: *const fn (target: @"enum", attachment: @"enum", textarget: @"enum", texture: uint, level: int) callconv(APIENTRY) void,
   FramebufferTexture1D: *const fn (target: @"enum", attachment: @"enum", textarget: @"enum", texture: uint, level: int) callconv(APIENTRY) void,
   CheckFramebufferStatus: *const fn (target: @"enum") callconv(APIENTRY) @"enum",
   GenFramebuffers: *const fn (n: sizei, framebuffers: uint) callconv(APIENTRY) void,
   DeleteFramebuffers: *const fn (n: sizei, framebuffers: [*c]const uint) callconv(APIENTRY) void,
   BindFramebuffer: *const fn (target: @"enum", framebuffer: uint) callconv(APIENTRY) void,
   IsFramebuffer: *const fn (framebuffer: uint) callconv(APIENTRY) boolean,
   GetRenderbufferParameteriv: *const fn (target: @"enum", pname: @"enum", params: int) callconv(APIENTRY) void,
   RenderbufferStorage: *const fn (target: @"enum", internalformat: @"enum", width: sizei, height: sizei) callconv(APIENTRY) void,
   GenRenderbuffers: *const fn (n: sizei, renderbuffers: uint) callconv(APIENTRY) void,
   DeleteRenderbuffers: *const fn (n: sizei, renderbuffers: [*c]const uint) callconv(APIENTRY) void,
   BindRenderbuffer: *const fn (target: @"enum", renderbuffer: uint) callconv(APIENTRY) void,
   IsRenderbuffer: *const fn (renderbuffer: uint) callconv(APIENTRY) boolean,
   GetStringi: *const fn (name: @"enum", index: uint) callconv(APIENTRY) ubyte,
   ClearBufferfi: *const fn (buffer: @"enum", drawbuffer: int, depth: float, stencil: int) callconv(APIENTRY) void,
   ClearBufferfv: *const fn (buffer: @"enum", drawbuffer: int, value: [*c]const float) callconv(APIENTRY) void,
   ClearBufferuiv: *const fn (buffer: @"enum", drawbuffer: int, value: [*c]const uint) callconv(APIENTRY) void,
   ClearBufferiv: *const fn (buffer: @"enum", drawbuffer: int, value: [*c]const int) callconv(APIENTRY) void,
   GetTexParameterIuiv: *const fn (target: @"enum", pname: @"enum", params: uint) callconv(APIENTRY) void,
   GetTexParameterIiv: *const fn (target: @"enum", pname: @"enum", params: int) callconv(APIENTRY) void,
   TexParameterIuiv: *const fn (target: @"enum", pname: @"enum", params: [*c]const uint) callconv(APIENTRY) void,
   TexParameterIiv: *const fn (target: @"enum", pname: @"enum", params: [*c]const int) callconv(APIENTRY) void,
   Uniform4uiv: *const fn (location: int, count: sizei, value: [*c]const uint) callconv(APIENTRY) void,
   Uniform3uiv: *const fn (location: int, count: sizei, value: [*c]const uint) callconv(APIENTRY) void,
   Uniform2uiv: *const fn (location: int, count: sizei, value: [*c]const uint) callconv(APIENTRY) void,
   Uniform1uiv: *const fn (location: int, count: sizei, value: [*c]const uint) callconv(APIENTRY) void,
   Uniform4ui: *const fn (location: int, v0: uint, v1: uint, v2: uint, v3: uint) callconv(APIENTRY) void,
   Uniform3ui: *const fn (location: int, v0: uint, v1: uint, v2: uint) callconv(APIENTRY) void,
   Uniform2ui: *const fn (location: int, v0: uint, v1: uint) callconv(APIENTRY) void,
   Uniform1ui: *const fn (location: int, v0: uint) callconv(APIENTRY) void,
   GetFragDataLocation: *const fn (program: uint, name: [*c]const char) callconv(APIENTRY) int,
   BindFragDataLocation: *const fn (program: uint, color: uint, name: [*c]const char) callconv(APIENTRY) void,
   GetUniformuiv: *const fn (program: uint, location: int, params: uint) callconv(APIENTRY) void,
   VertexAttribI4usv: *const fn (index: uint, v: [*c]const ushort) callconv(APIENTRY) void,
   VertexAttribI4ubv: *const fn (index: uint, v: [*c]const ubyte) callconv(APIENTRY) void,
   VertexAttribI4sv: *const fn (index: uint, v: [*c]const short) callconv(APIENTRY) void,
   VertexAttribI4bv: *const fn (index: uint, v: [*c]const byte) callconv(APIENTRY) void,
   VertexAttribI4uiv: *const fn (index: uint, v: [*c]const uint) callconv(APIENTRY) void,
   VertexAttribI3uiv: *const fn (index: uint, v: [*c]const uint) callconv(APIENTRY) void,
   VertexAttribI2uiv: *const fn (index: uint, v: [*c]const uint) callconv(APIENTRY) void,
   VertexAttribI1uiv: *const fn (index: uint, v: [*c]const uint) callconv(APIENTRY) void,
   VertexAttribI4iv: *const fn (index: uint, v: [*c]const int) callconv(APIENTRY) void,
   VertexAttribI3iv: *const fn (index: uint, v: [*c]const int) callconv(APIENTRY) void,
   VertexAttribI2iv: *const fn (index: uint, v: [*c]const int) callconv(APIENTRY) void,
   VertexAttribI1iv: *const fn (index: uint, v: [*c]const int) callconv(APIENTRY) void,
   VertexAttribI4ui: *const fn (index: uint, x: uint, y: uint, z: uint, w: uint) callconv(APIENTRY) void,
   VertexAttribI3ui: *const fn (index: uint, x: uint, y: uint, z: uint) callconv(APIENTRY) void,
   VertexAttribI2ui: *const fn (index: uint, x: uint, y: uint) callconv(APIENTRY) void,
   VertexAttribI1ui: *const fn (index: uint, x: uint) callconv(APIENTRY) void,
   VertexAttribI4i: *const fn (index: uint, x: int, y: int, z: int, w: int) callconv(APIENTRY) void,
   VertexAttribI3i: *const fn (index: uint, x: int, y: int, z: int) callconv(APIENTRY) void,
   VertexAttribI2i: *const fn (index: uint, x: int, y: int) callconv(APIENTRY) void,
   VertexAttribI1i: *const fn (index: uint, x: int) callconv(APIENTRY) void,
   GetVertexAttribIuiv: *const fn (index: uint, pname: @"enum", params: uint) callconv(APIENTRY) void,
   GetVertexAttribIiv: *const fn (index: uint, pname: @"enum", params: int) callconv(APIENTRY) void,
   VertexAttribIPointer: *const fn (index: uint, size: int, @"type": @"enum", stride: sizei, pointer: ?*const anyopaque) callconv(APIENTRY) void,
   EndConditionalRender: *const fn () callconv(APIENTRY) void,
   BeginConditionalRender: *const fn (id: uint, mode: @"enum") callconv(APIENTRY) void,
   ClampColor: *const fn (target: @"enum", clamp: @"enum") callconv(APIENTRY) void,
   GetTransformFeedbackVarying: *const fn (program: uint, index: uint, bufSize: sizei, length: sizei, size: sizei, @"type": @"enum", name: char) callconv(APIENTRY) void,
   TransformFeedbackVaryings: *const fn (program: uint, count: sizei, varyings: [*c]const [*c]const char, bufferMode: @"enum") callconv(APIENTRY) void,
   EndTransformFeedback: *const fn () callconv(APIENTRY) void,
   BeginTransformFeedback: *const fn (primitiveMode: @"enum") callconv(APIENTRY) void,
   IsEnabledi: *const fn (target: @"enum", index: uint) callconv(APIENTRY) boolean,
   Disablei: *const fn (target: @"enum", index: uint) callconv(APIENTRY) void,
   Enablei: *const fn (target: @"enum", index: uint) callconv(APIENTRY) void,
   GetBooleani_v: *const fn (target: @"enum", index: uint, data: boolean) callconv(APIENTRY) void,
   ColorMaski: *const fn (index: uint, r: boolean, g: boolean, b: boolean, a: boolean) callconv(APIENTRY) void,
   UniformMatrix4x3fv: *const fn (location: int, count: sizei, transpose: boolean, value: [*c]const float) callconv(APIENTRY) void,
   UniformMatrix3x4fv: *const fn (location: int, count: sizei, transpose: boolean, value: [*c]const float) callconv(APIENTRY) void,
   UniformMatrix4x2fv: *const fn (location: int, count: sizei, transpose: boolean, value: [*c]const float) callconv(APIENTRY) void,
   UniformMatrix2x4fv: *const fn (location: int, count: sizei, transpose: boolean, value: [*c]const float) callconv(APIENTRY) void,
   UniformMatrix3x2fv: *const fn (location: int, count: sizei, transpose: boolean, value: [*c]const float) callconv(APIENTRY) void,
   UniformMatrix2x3fv: *const fn (location: int, count: sizei, transpose: boolean, value: [*c]const float) callconv(APIENTRY) void,
   VertexAttribPointer: *const fn (index: uint, size: int, @"type": @"enum", normalized: boolean, stride: sizei, pointer: ?*const anyopaque) callconv(APIENTRY) void,
   VertexAttrib4usv: *const fn (index: uint, v: [*c]const ushort) callconv(APIENTRY) void,
   VertexAttrib4uiv: *const fn (index: uint, v: [*c]const uint) callconv(APIENTRY) void,
   VertexAttrib4ubv: *const fn (index: uint, v: [*c]const ubyte) callconv(APIENTRY) void,
   VertexAttrib4sv: *const fn (index: uint, v: [*c]const short) callconv(APIENTRY) void,
   VertexAttrib4s: *const fn (index: uint, x: short, y: short, z: short, w: short) callconv(APIENTRY) void,
   VertexAttrib4iv: *const fn (index: uint, v: [*c]const int) callconv(APIENTRY) void,
   VertexAttrib4fv: *const fn (index: uint, v: [*c]const float) callconv(APIENTRY) void,
   VertexAttrib4f: *const fn (index: uint, x: float, y: float, z: float, w: float) callconv(APIENTRY) void,
   VertexAttrib4dv: *const fn (index: uint, v: [*c]const double) callconv(APIENTRY) void,
   VertexAttrib4d: *const fn (index: uint, x: double, y: double, z: double, w: double) callconv(APIENTRY) void,
   VertexAttrib4bv: *const fn (index: uint, v: [*c]const byte) callconv(APIENTRY) void,
   VertexAttrib4Nusv: *const fn (index: uint, v: [*c]const ushort) callconv(APIENTRY) void,
   VertexAttrib4Nuiv: *const fn (index: uint, v: [*c]const uint) callconv(APIENTRY) void,
   VertexAttrib4Nubv: *const fn (index: uint, v: [*c]const ubyte) callconv(APIENTRY) void,
   VertexAttrib4Nub: *const fn (index: uint, x: ubyte, y: ubyte, z: ubyte, w: ubyte) callconv(APIENTRY) void,
   VertexAttrib4Nsv: *const fn (index: uint, v: [*c]const short) callconv(APIENTRY) void,
   VertexAttrib4Niv: *const fn (index: uint, v: [*c]const int) callconv(APIENTRY) void,
   VertexAttrib4Nbv: *const fn (index: uint, v: [*c]const byte) callconv(APIENTRY) void,
   VertexAttrib3sv: *const fn (index: uint, v: [*c]const short) callconv(APIENTRY) void,
   VertexAttrib3s: *const fn (index: uint, x: short, y: short, z: short) callconv(APIENTRY) void,
   VertexAttrib3fv: *const fn (index: uint, v: [*c]const float) callconv(APIENTRY) void,
   VertexAttrib3f: *const fn (index: uint, x: float, y: float, z: float) callconv(APIENTRY) void,
   VertexAttrib3dv: *const fn (index: uint, v: [*c]const double) callconv(APIENTRY) void,
   VertexAttrib3d: *const fn (index: uint, x: double, y: double, z: double) callconv(APIENTRY) void,
   VertexAttrib2sv: *const fn (index: uint, v: [*c]const short) callconv(APIENTRY) void,
   VertexAttrib2s: *const fn (index: uint, x: short, y: short) callconv(APIENTRY) void,
   VertexAttrib2fv: *const fn (index: uint, v: [*c]const float) callconv(APIENTRY) void,
   VertexAttrib2f: *const fn (index: uint, x: float, y: float) callconv(APIENTRY) void,
   VertexAttrib2dv: *const fn (index: uint, v: [*c]const double) callconv(APIENTRY) void,
   VertexAttrib2d: *const fn (index: uint, x: double, y: double) callconv(APIENTRY) void,
   VertexAttrib1sv: *const fn (index: uint, v: [*c]const short) callconv(APIENTRY) void,
   VertexAttrib1s: *const fn (index: uint, x: short) callconv(APIENTRY) void,
   VertexAttrib1fv: *const fn (index: uint, v: [*c]const float) callconv(APIENTRY) void,
   VertexAttrib1f: *const fn (index: uint, x: float) callconv(APIENTRY) void,
   VertexAttrib1dv: *const fn (index: uint, v: [*c]const double) callconv(APIENTRY) void,
   VertexAttrib1d: *const fn (index: uint, x: double) callconv(APIENTRY) void,
   ValidateProgram: *const fn (program: uint) callconv(APIENTRY) void,
   UniformMatrix4fv: *const fn (location: int, count: sizei, transpose: boolean, value: [*c]const float) callconv(APIENTRY) void,
   UniformMatrix3fv: *const fn (location: int, count: sizei, transpose: boolean, value: [*c]const float) callconv(APIENTRY) void,
   UniformMatrix2fv: *const fn (location: int, count: sizei, transpose: boolean, value: [*c]const float) callconv(APIENTRY) void,
   Uniform4iv: *const fn (location: int, count: sizei, value: [*c]const int) callconv(APIENTRY) void,
   Uniform3iv: *const fn (location: int, count: sizei, value: [*c]const int) callconv(APIENTRY) void,
   Uniform2iv: *const fn (location: int, count: sizei, value: [*c]const int) callconv(APIENTRY) void,
   Uniform1iv: *const fn (location: int, count: sizei, value: [*c]const int) callconv(APIENTRY) void,
   Uniform4fv: *const fn (location: int, count: sizei, value: [*c]const float) callconv(APIENTRY) void,
   Uniform3fv: *const fn (location: int, count: sizei, value: [*c]const float) callconv(APIENTRY) void,
   Uniform2fv: *const fn (location: int, count: sizei, value: [*c]const float) callconv(APIENTRY) void,
   Uniform1fv: *const fn (location: int, count: sizei, value: [*c]const float) callconv(APIENTRY) void,
   Uniform4i: *const fn (location: int, v0: int, v1: int, v2: int, v3: int) callconv(APIENTRY) void,
   Uniform3i: *const fn (location: int, v0: int, v1: int, v2: int) callconv(APIENTRY) void,
   Uniform2i: *const fn (location: int, v0: int, v1: int) callconv(APIENTRY) void,
   Uniform1i: *const fn (location: int, v0: int) callconv(APIENTRY) void,
   Uniform4f: *const fn (location: int, v0: float, v1: float, v2: float, v3: float) callconv(APIENTRY) void,
   Uniform3f: *const fn (location: int, v0: float, v1: float, v2: float) callconv(APIENTRY) void,
   Uniform2f: *const fn (location: int, v0: float, v1: float) callconv(APIENTRY) void,
   Uniform1f: *const fn (location: int, v0: float) callconv(APIENTRY) void,
   UseProgram: *const fn (program: uint) callconv(APIENTRY) void,
   ShaderSource: *const fn (shader: uint, count: sizei, string: [*c]const [*c]const char, length: [*c]const int) callconv(APIENTRY) void,
   LinkProgram: *const fn (program: uint) callconv(APIENTRY) void,
   IsShader: *const fn (shader: uint) callconv(APIENTRY) boolean,
   IsProgram: *const fn (program: uint) callconv(APIENTRY) boolean,
   GetVertexAttribPointerv: *const fn (index: uint, pname: @"enum", pointer: ?*const anyopaque) callconv(APIENTRY) void,
   GetVertexAttribiv: *const fn (index: uint, pname: @"enum", params: int) callconv(APIENTRY) void,
   GetVertexAttribfv: *const fn (index: uint, pname: @"enum", params: float) callconv(APIENTRY) void,
   GetVertexAttribdv: *const fn (index: uint, pname: @"enum", params: double) callconv(APIENTRY) void,
   GetUniformiv: *const fn (program: uint, location: int, params: int) callconv(APIENTRY) void,
   GetUniformfv: *const fn (program: uint, location: int, params: float) callconv(APIENTRY) void,
   GetUniformLocation: *const fn (program: uint, name: [*c]const char) callconv(APIENTRY) int,
   GetShaderSource: *const fn (shader: uint, bufSize: sizei, length: sizei, source: char) callconv(APIENTRY) void,
   GetShaderInfoLog: *const fn (shader: uint, bufSize: sizei, length: sizei, infoLog: char) callconv(APIENTRY) void,
   GetShaderiv: *const fn (shader: uint, pname: @"enum", params: int) callconv(APIENTRY) void,
   GetProgramInfoLog: *const fn (program: uint, bufSize: sizei, length: sizei, infoLog: char) callconv(APIENTRY) void,
   GetProgramiv: *const fn (program: uint, pname: @"enum", params: int) callconv(APIENTRY) void,
   GetAttribLocation: *const fn (program: uint, name: [*c]const char) callconv(APIENTRY) int,
   GetAttachedShaders: *const fn (program: uint, maxCount: sizei, count: sizei, shaders: uint) callconv(APIENTRY) void,
   GetActiveUniform: *const fn (program: uint, index: uint, bufSize: sizei, length: sizei, size: int, @"type": @"enum", name: char) callconv(APIENTRY) void,
   GetActiveAttrib: *const fn (program: uint, index: uint, bufSize: sizei, length: sizei, size: int, @"type": @"enum", name: char) callconv(APIENTRY) void,
   EnableVertexAttribArray: *const fn (index: uint) callconv(APIENTRY) void,
   DisableVertexAttribArray: *const fn (index: uint) callconv(APIENTRY) void,
   DetachShader: *const fn (program: uint, shader: uint) callconv(APIENTRY) void,
   DeleteShader: *const fn (shader: uint) callconv(APIENTRY) void,
   DeleteProgram: *const fn (program: uint) callconv(APIENTRY) void,
   CreateShader: *const fn (@"type": @"enum") callconv(APIENTRY) uint,
   CreateProgram: *const fn () callconv(APIENTRY) uint,
   CompileShader: *const fn (shader: uint) callconv(APIENTRY) void,
   BindAttribLocation: *const fn (program: uint, index: uint, name: [*c]const char) callconv(APIENTRY) void,
   AttachShader: *const fn (program: uint, shader: uint) callconv(APIENTRY) void,
   StencilMaskSeparate: *const fn (face: @"enum", mask: uint) callconv(APIENTRY) void,
   StencilFuncSeparate: *const fn (face: @"enum", func: @"enum", ref: int, mask: uint) callconv(APIENTRY) void,
   StencilOpSeparate: *const fn (face: @"enum", sfail: @"enum", dpfail: @"enum", dppass: @"enum") callconv(APIENTRY) void,
   DrawBuffers: *const fn (n: sizei, bufs: [*c]const @"enum") callconv(APIENTRY) void,
   BlendEquationSeparate: *const fn (modeRGB: @"enum", modeAlpha: @"enum") callconv(APIENTRY) void,
   GetBufferPointerv: *const fn (target: @"enum", pname: @"enum", params: ?*const anyopaque) callconv(APIENTRY) void,
   GetBufferParameteriv: *const fn (target: @"enum", pname: @"enum", params: int) callconv(APIENTRY) void,
   UnmapBuffer: *const fn (target: @"enum") callconv(APIENTRY) boolean,
   MapBuffer: *const fn (target: @"enum", access: @"enum") callconv(APIENTRY) void,
   GetBufferSubData: *const fn (target: @"enum", offset: intptr, size: sizeiptr, data: ?*const anyopaque) callconv(APIENTRY) void,
   BufferSubData: *const fn (target: @"enum", offset: intptr, size: sizeiptr, data: ?*const anyopaque) callconv(APIENTRY) void,
   BufferData: *const fn (target: @"enum", size: sizeiptr, data: ?*const anyopaque, usage: @"enum") callconv(APIENTRY) void,
   IsBuffer: *const fn (buffer: uint) callconv(APIENTRY) boolean,
   GenBuffers: *const fn (n: sizei, buffers: uint) callconv(APIENTRY) void,
   DeleteBuffers: *const fn (n: sizei, buffers: [*]uint) callconv(APIENTRY) void,
   BindBuffer: *const fn (target: @"enum", buffer: uint) callconv(APIENTRY) void,
   GetQueryObjectuiv: *const fn (id: uint, pname: @"enum", params: uint) callconv(APIENTRY) void,
   GetQueryObjectiv: *const fn (id: uint, pname: @"enum", params: int) callconv(APIENTRY) void,
   GetQueryiv: *const fn (target: @"enum", pname: @"enum", params: int) callconv(APIENTRY) void,
   EndQuery: *const fn (target: @"enum") callconv(APIENTRY) void,
   BeginQuery: *const fn (target: @"enum", id: uint) callconv(APIENTRY) void,
   IsQuery: *const fn (id: uint) callconv(APIENTRY) boolean,
   DeleteQueries: *const fn (n: sizei, ids: [*c]const uint) callconv(APIENTRY) void,
   GenQueries: *const fn (n: sizei, ids: uint) callconv(APIENTRY) void,
   BlendEquation: *const fn (mode: @"enum") callconv(APIENTRY) void,
   BlendColor: *const fn (red: float, green: float, blue: float, alpha: float) callconv(APIENTRY) void,
   IsTexture: *const fn (texture: uint) callconv(APIENTRY) boolean,
   CopyTexSubImage3D: *const fn (target: @"enum", level: int, xoffset: int, yoffset: int, zoffset: int, x: int, y: int, width: sizei, height: sizei) callconv(APIENTRY) void,
   ActiveTexture: *const fn (texture: @"enum") callconv(APIENTRY) void,
   SampleCoverage: *const fn (value: float, invert: boolean) callconv(APIENTRY) void,
   CompressedTexImage3D: *const fn (target: @"enum", level: int, internalformat: @"enum", width: sizei, height: sizei, depth: sizei, border: int, imageSize: sizei, data: ?*const anyopaque) callconv(APIENTRY) void,
   CompressedTexImage2D: *const fn (target: @"enum", level: int, internalformat: @"enum", width: sizei, height: sizei, border: int, imageSize: sizei, data: ?*const anyopaque) callconv(APIENTRY) void,
   CompressedTexImage1D: *const fn (target: @"enum", level: int, internalformat: @"enum", width: sizei, border: int, imageSize: sizei, data: ?*const anyopaque) callconv(APIENTRY) void,
   CompressedTexSubImage2D: *const fn (target: @"enum", level: int, xoffset: int, yoffset: int, width: sizei, height: sizei, format: @"enum", imageSize: sizei, data: ?*const anyopaque) callconv(APIENTRY) void,
   CompressedTexSubImage1D: *const fn (target: @"enum", level: int, xoffset: int, width: sizei, format: @"enum", imageSize: sizei, data: ?*const anyopaque) callconv(APIENTRY) void,
   GetCompressedTexImage: *const fn (target: @"enum", level: int, img: ?*const anyopaque) callconv(APIENTRY) void,
   BlendFuncSeparate: *const fn (sfactorRGB: @"enum", dfactorRGB: @"enum", sfactorAlpha: @"enum", dfactorAlpha: @"enum") callconv(APIENTRY) void,
   PointParameteriv: *const fn (pname: @"enum", params: [*c]const int) callconv(APIENTRY) void,
   PointParameteri: *const fn (pname: @"enum", param: int) callconv(APIENTRY) void,
   PointParameterfv: *const fn (pname: @"enum", params: [*c]const float) callconv(APIENTRY) void,
   PointParameterf: *const fn (pname: @"enum", param: float) callconv(APIENTRY) void,
   MultiDrawElements: *const fn (mode: @"enum", count: [*c]const sizei, @"type": @"enum", indices: ?*const anyopaque, drawcount: sizei) callconv(APIENTRY) void,
   MultiDrawArrays: *const fn (mode: @"enum", first: [*c]const int, count: [*c]const sizei, drawcount: sizei) callconv(APIENTRY) void,
   DrawRangeElements: *const fn (mode: @"enum", start: uint, end: uint, count: sizei, @"type": @"enum", indices: ?*const anyopaque) callconv(APIENTRY) void,
   TexImage3D: *const fn (target: @"enum", level: int, internalformat: int, width: sizei, height: sizei, depth: sizei, border: int, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
   TexSubImage3D: *const fn (target: @"enum", level: int, xoffset: int, yoffset: int, zoffset: int, width: sizei, height: sizei, depth: sizei, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
   DrawArrays: *const fn (mode: @"enum", first: int, count: sizei) callconv(APIENTRY) void,
   DrawElements: *const fn (mode: @"enum", count: sizei, @"type": @"enum", indices: ?*const anyopaque) callconv(APIENTRY) void,
   CompressedTexSubImage3D: *const fn (target: @"enum", level: int, xoffset: int, yoffset: int, zoffset: int, width: sizei, height: sizei, depth: sizei, format: @"enum", imageSize: sizei, data: ?*const anyopaque) callconv(APIENTRY) void,
   PolygonOffset: *const fn (factor: float, units: float) callconv(APIENTRY) void,
   CopyTexImage1D: *const fn (target: @"enum", level: int, internalformat: @"enum", x: int, y: int, width: sizei, border: int) callconv(APIENTRY) void,
   CopyTexImage2D: *const fn (target: @"enum", level: int, internalformat: @"enum", x: int, y: int, width: sizei, height: sizei, border: int) callconv(APIENTRY) void,
   CopyTexSubImage1D: *const fn (target: @"enum", level: int, xoffset: int, x: int, y: int, width: sizei) callconv(APIENTRY) void,
   CopyTexSubImage2D: *const fn (target: @"enum", level: int, xoffset: int, yoffset: int, x: int, y: int, width: sizei, height: sizei) callconv(APIENTRY) void,
   TexSubImage1D: *const fn (target: @"enum", level: int, xoffset: int, width: sizei, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
   TexSubImage2D: *const fn (target: @"enum", level: int, xoffset: int, yoffset: int, width: sizei, height: sizei, format: @"enum", @"type": @"enum", pixels: ?*const anyopaque) callconv(APIENTRY) void,
   BindTexture: *const fn (target: @"enum", texture: uint) callconv(APIENTRY) void,
   DeleteTextures: *const fn (n: sizei, textures: [*c]const uint) callconv(APIENTRY) void,
   GenTextures: *const fn (n: sizei, textures: uint) callconv(APIENTRY) void,
   pub fn init(procs: *FuncTable, loader: anytype) bool {
      @setEvalBranchQuota(1_000_000);
      var success: u1 = 1;
      inline for (@typeInfo(FuncTable).Struct.fields) |field_info| {
          switch (@typeInfo(field_info.type)) {
              .Pointer => |ptr_info| switch (@typeInfo(ptr_info.child)) {
                  .Fn => {
                      success &= @intFromBool(procs.initCommand(loader, field_info.name));
                  },
                  else => comptime unreachable,
              },
              else => comptime unreachable,
          }
      }
      return success != 0;
   }

   fn initCommand(procs: *FuncTable, loader: anytype, comptime name: [:0]const u8) bool {
      if (getProcAddress(loader, "gl" ++ name)) |proc| {
          @field(procs, name) = @ptrCast(proc);
          return true;
      } else {
          return @typeInfo(@TypeOf(@field(procs, name))) == .Optional;
      }
   }

   fn getProcAddress(loader: anytype, prefixed_name: [:0]const u8) ?PROC {
      const loader_info = @typeInfo(@TypeOf(loader));
      const loader_is_fn =
          loader_info == .Fn or
          loader_info == .Pointer and @typeInfo(loader_info.Pointer.child) == .Fn;
      if (loader_is_fn) {
          return @as(?PROC, loader(@as([*:0]const u8, prefixed_name)));
      } else {
          return @as(?PROC, loader.getProcAddress(@as([*:0]const u8, prefixed_name)));
      }
   }
};