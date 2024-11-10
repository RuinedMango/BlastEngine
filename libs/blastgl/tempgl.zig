pub const GL_DEPTH_BUFFER_BIT: comptime_int = 0x00000100;
pub const GL_STENCIL_BUFFER_BIT: comptime_int = 0x00000400;
pub const GL_COLOR_BUFFER_BIT: comptime_int = 0x00004000;
pub const GL_FALSE: comptime_int = 0;
pub const GL_TRUE: comptime_int = 1;
pub const GL_POINTS: comptime_int = 0x0000;
pub const GL_LINES: comptime_int = 0x0001;
pub const GL_LINE_LOOP: comptime_int = 0x0002;
pub const GL_LINE_STRIP: comptime_int = 0x0003;
pub const GL_TRIANGLES: comptime_int = 0x0004;
pub const GL_TRIANGLE_STRIP: comptime_int = 0x0005;
pub const GL_TRIANGLE_FAN: comptime_int = 0x0006;
pub const GL_QUADS: comptime_int = 0x0007;
pub const GL_NEVER: comptime_int = 0x0200;
pub const GL_LESS: comptime_int = 0x0201;
pub const GL_EQUAL: comptime_int = 0x0202;
pub const GL_LEQUAL: comptime_int = 0x0203;
pub const GL_GREATER: comptime_int = 0x0204;
pub const GL_NOTEQUAL: comptime_int = 0x0205;
pub const GL_GEQUAL: comptime_int = 0x0206;
pub const GL_ALWAYS: comptime_int = 0x0207;
pub const GL_ZERO: comptime_int = 0;
pub const GL_ONE: comptime_int = 1;
pub const GL_SRC_COLOR: comptime_int = 0x0300;
pub const GL_ONE_MINUS_SRC_COLOR: comptime_int = 0x0301;
pub const GL_SRC_ALPHA: comptime_int = 0x0302;
pub const GL_ONE_MINUS_SRC_ALPHA: comptime_int = 0x0303;
pub const GL_DST_ALPHA: comptime_int = 0x0304;
pub const GL_ONE_MINUS_DST_ALPHA: comptime_int = 0x0305;
pub const GL_DST_COLOR: comptime_int = 0x0306;
pub const GL_ONE_MINUS_DST_COLOR: comptime_int = 0x0307;
pub const GL_SRC_ALPHA_SATURATE: comptime_int = 0x0308;
pub const GL_NONE: comptime_int = 0;
pub const GL_FRONT_LEFT: comptime_int = 0x0400;
pub const GL_FRONT_RIGHT: comptime_int = 0x0401;
pub const GL_BACK_LEFT: comptime_int = 0x0402;
pub const GL_BACK_RIGHT: comptime_int = 0x0403;
pub const GL_FRONT: comptime_int = 0x0404;
pub const GL_BACK: comptime_int = 0x0405;
pub const GL_LEFT: comptime_int = 0x0406;
pub const GL_RIGHT: comptime_int = 0x0407;
pub const GL_FRONT_AND_BACK: comptime_int = 0x0408;
pub const GL_NO_ERROR: comptime_int = 0;
pub const GL_INVALID_ENUM: comptime_int = 0x0500;
pub const GL_INVALID_VALUE: comptime_int = 0x0501;
pub const GL_INVALID_OPERATION: comptime_int = 0x0502;
pub const GL_OUT_OF_MEMORY: comptime_int = 0x0505;
pub const GL_CW: comptime_int = 0x0900;
pub const GL_CCW: comptime_int = 0x0901;
pub const GL_POINT_SIZE: comptime_int = 0x0B11;
pub const GL_POINT_SIZE_RANGE: comptime_int = 0x0B12;
pub const GL_POINT_SIZE_GRANULARITY: comptime_int = 0x0B13;
pub const GL_LINE_SMOOTH: comptime_int = 0x0B20;
pub const GL_LINE_WIDTH: comptime_int = 0x0B21;
pub const GL_LINE_WIDTH_RANGE: comptime_int = 0x0B22;
pub const GL_LINE_WIDTH_GRANULARITY: comptime_int = 0x0B23;
pub const GL_POLYGON_MODE: comptime_int = 0x0B40;
pub const GL_POLYGON_SMOOTH: comptime_int = 0x0B41;
pub const GL_CULL_FACE: comptime_int = 0x0B44;
pub const GL_CULL_FACE_MODE: comptime_int = 0x0B45;
pub const GL_FRONT_FACE: comptime_int = 0x0B46;
pub const GL_DEPTH_RANGE: comptime_int = 0x0B70;
pub const GL_DEPTH_TEST: comptime_int = 0x0B71;
pub const GL_DEPTH_WRITEMASK: comptime_int = 0x0B72;
pub const GL_DEPTH_CLEAR_VALUE: comptime_int = 0x0B73;
pub const GL_DEPTH_FUNC: comptime_int = 0x0B74;
pub const GL_STENCIL_TEST: comptime_int = 0x0B90;
pub const GL_STENCIL_CLEAR_VALUE: comptime_int = 0x0B91;
pub const GL_STENCIL_FUNC: comptime_int = 0x0B92;
pub const GL_STENCIL_VALUE_MASK: comptime_int = 0x0B93;
pub const GL_STENCIL_FAIL: comptime_int = 0x0B94;
pub const GL_STENCIL_PASS_DEPTH_FAIL: comptime_int = 0x0B95;
pub const GL_STENCIL_PASS_DEPTH_PASS: comptime_int = 0x0B96;
pub const GL_STENCIL_REF: comptime_int = 0x0B97;
pub const GL_STENCIL_WRITEMASK: comptime_int = 0x0B98;
pub const GL_VIEWPORT: comptime_int = 0x0BA2;
pub const GL_DITHER: comptime_int = 0x0BD0;
pub const GL_BLEND_DST: comptime_int = 0x0BE0;
pub const GL_BLEND_SRC: comptime_int = 0x0BE1;
pub const GL_BLEND: comptime_int = 0x0BE2;
pub const GL_LOGIC_OP_MODE: comptime_int = 0x0BF0;
pub const GL_DRAW_BUFFER: comptime_int = 0x0C01;
pub const GL_READ_BUFFER: comptime_int = 0x0C02;
pub const GL_SCISSOR_BOX: comptime_int = 0x0C10;
pub const GL_SCISSOR_TEST: comptime_int = 0x0C11;
pub const GL_COLOR_CLEAR_VALUE: comptime_int = 0x0C22;
pub const GL_COLOR_WRITEMASK: comptime_int = 0x0C23;
pub const GL_DOUBLEBUFFER: comptime_int = 0x0C32;
pub const GL_STEREO: comptime_int = 0x0C33;
pub const GL_LINE_SMOOTH_HINT: comptime_int = 0x0C52;
pub const GL_POLYGON_SMOOTH_HINT: comptime_int = 0x0C53;
pub const GL_UNPACK_SWAP_BYTES: comptime_int = 0x0CF0;
pub const GL_UNPACK_LSB_FIRST: comptime_int = 0x0CF1;
pub const GL_UNPACK_ROW_LENGTH: comptime_int = 0x0CF2;
pub const GL_UNPACK_SKIP_ROWS: comptime_int = 0x0CF3;
pub const GL_UNPACK_SKIP_PIXELS: comptime_int = 0x0CF4;
pub const GL_UNPACK_ALIGNMENT: comptime_int = 0x0CF5;
pub const GL_PACK_SWAP_BYTES: comptime_int = 0x0D00;
pub const GL_PACK_LSB_FIRST: comptime_int = 0x0D01;
pub const GL_PACK_ROW_LENGTH: comptime_int = 0x0D02;
pub const GL_PACK_SKIP_ROWS: comptime_int = 0x0D03;
pub const GL_PACK_SKIP_PIXELS: comptime_int = 0x0D04;
pub const GL_PACK_ALIGNMENT: comptime_int = 0x0D05;
pub const GL_MAX_TEXTURE_SIZE: comptime_int = 0x0D33;
pub const GL_MAX_VIEWPORT_DIMS: comptime_int = 0x0D3A;
pub const GL_SUBPIXEL_BITS: comptime_int = 0x0D50;
pub const GL_TEXTURE_1D: comptime_int = 0x0DE0;
pub const GL_TEXTURE_2D: comptime_int = 0x0DE1;
pub const GL_TEXTURE_WIDTH: comptime_int = 0x1000;
pub const GL_TEXTURE_HEIGHT: comptime_int = 0x1001;
pub const GL_TEXTURE_BORDER_COLOR: comptime_int = 0x1004;
pub const GL_DONT_CARE: comptime_int = 0x1100;
pub const GL_FASTEST: comptime_int = 0x1101;
pub const GL_NICEST: comptime_int = 0x1102;
pub const GL_BYTE: comptime_int = 0x1400;
pub const GL_UNSIGNED_BYTE: comptime_int = 0x1401;
pub const GL_SHORT: comptime_int = 0x1402;
pub const GL_UNSIGNED_SHORT: comptime_int = 0x1403;
pub const GL_INT: comptime_int = 0x1404;
pub const GL_UNSIGNED_INT: comptime_int = 0x1405;
pub const GL_FLOAT: comptime_int = 0x1406;
pub const GL_STACK_OVERFLOW: comptime_int = 0x0503;
pub const GL_STACK_UNDERFLOW: comptime_int = 0x0504;
pub const GL_CLEAR: comptime_int = 0x1500;
pub const GL_AND: comptime_int = 0x1501;
pub const GL_AND_REVERSE: comptime_int = 0x1502;
pub const GL_COPY: comptime_int = 0x1503;
pub const GL_AND_INVERTED: comptime_int = 0x1504;
pub const GL_NOOP: comptime_int = 0x1505;
pub const GL_XOR: comptime_int = 0x1506;
pub const GL_OR: comptime_int = 0x1507;
pub const GL_NOR: comptime_int = 0x1508;
pub const GL_EQUIV: comptime_int = 0x1509;
pub const GL_INVERT: comptime_int = 0x150A;
pub const GL_OR_REVERSE: comptime_int = 0x150B;
pub const GL_COPY_INVERTED: comptime_int = 0x150C;
pub const GL_OR_INVERTED: comptime_int = 0x150D;
pub const GL_NAND: comptime_int = 0x150E;
pub const GL_SET: comptime_int = 0x150F;
pub const GL_TEXTURE: comptime_int = 0x1702;
pub const GL_COLOR: comptime_int = 0x1800;
pub const GL_DEPTH: comptime_int = 0x1801;
pub const GL_STENCIL: comptime_int = 0x1802;
pub const GL_STENCIL_INDEX: comptime_int = 0x1901;
pub const GL_DEPTH_COMPONENT: comptime_int = 0x1902;
pub const GL_RED: comptime_int = 0x1903;
pub const GL_GREEN: comptime_int = 0x1904;
pub const GL_BLUE: comptime_int = 0x1905;
pub const GL_ALPHA: comptime_int = 0x1906;
pub const GL_RGB: comptime_int = 0x1907;
pub const GL_RGBA: comptime_int = 0x1908;
pub const GL_POINT: comptime_int = 0x1B00;
pub const GL_LINE: comptime_int = 0x1B01;
pub const GL_FILL: comptime_int = 0x1B02;
pub const GL_KEEP: comptime_int = 0x1E00;
pub const GL_REPLACE: comptime_int = 0x1E01;
pub const GL_INCR: comptime_int = 0x1E02;
pub const GL_DECR: comptime_int = 0x1E03;
pub const GL_VENDOR: comptime_int = 0x1F00;
pub const GL_RENDERER: comptime_int = 0x1F01;
pub const GL_VERSION: comptime_int = 0x1F02;
pub const GL_EXTENSIONS: comptime_int = 0x1F03;
pub const GL_NEAREST: comptime_int = 0x2600;
pub const GL_LINEAR: comptime_int = 0x2601;
pub const GL_NEAREST_MIPMAP_NEAREST: comptime_int = 0x2700;
pub const GL_LINEAR_MIPMAP_NEAREST: comptime_int = 0x2701;
pub const GL_NEAREST_MIPMAP_LINEAR: comptime_int = 0x2702;
pub const GL_LINEAR_MIPMAP_LINEAR: comptime_int = 0x2703;
pub const GL_TEXTURE_MAG_FILTER: comptime_int = 0x2800;
pub const GL_TEXTURE_MIN_FILTER: comptime_int = 0x2801;
pub const GL_TEXTURE_WRAP_S: comptime_int = 0x2802;
pub const GL_TEXTURE_WRAP_T: comptime_int = 0x2803;
pub const GL_REPEAT: comptime_int = 0x2901;
pub const GL_CURRENT_BIT: comptime_int = 0x00000001;
pub const GL_POINT_BIT: comptime_int = 0x00000002;
pub const GL_LINE_BIT: comptime_int = 0x00000004;
pub const GL_POLYGON_BIT: comptime_int = 0x00000008;
pub const GL_POLYGON_STIPPLE_BIT: comptime_int = 0x00000010;
pub const GL_PIXEL_MODE_BIT: comptime_int = 0x00000020;
pub const GL_LIGHTING_BIT: comptime_int = 0x00000040;
pub const GL_FOG_BIT: comptime_int = 0x00000080;
pub const GL_ACCUM_BUFFER_BIT: comptime_int = 0x00000200;
pub const GL_VIEWPORT_BIT: comptime_int = 0x00000800;
pub const GL_TRANSFORM_BIT: comptime_int = 0x00001000;
pub const GL_ENABLE_BIT: comptime_int = 0x00002000;
pub const GL_HINT_BIT: comptime_int = 0x00008000;
pub const GL_EVAL_BIT: comptime_int = 0x00010000;
pub const GL_LIST_BIT: comptime_int = 0x00020000;
pub const GL_TEXTURE_BIT: comptime_int = 0x00040000;
pub const GL_SCISSOR_BIT: comptime_int = 0x00080000;
pub const GL_ALL_ATTRIB_BITS: comptime_int = 0xFFFFFFFF;
pub const GL_QUAD_STRIP: comptime_int = 0x0008;
pub const GL_POLYGON: comptime_int = 0x0009;
pub const GL_ACCUM: comptime_int = 0x0100;
pub const GL_LOAD: comptime_int = 0x0101;
pub const GL_RETURN: comptime_int = 0x0102;
pub const GL_MULT: comptime_int = 0x0103;
pub const GL_ADD: comptime_int = 0x0104;
pub const GL_AUX0: comptime_int = 0x0409;
pub const GL_AUX1: comptime_int = 0x040A;
pub const GL_AUX2: comptime_int = 0x040B;
pub const GL_AUX3: comptime_int = 0x040C;
pub const GL_2D: comptime_int = 0x0600;
pub const GL_3D: comptime_int = 0x0601;
pub const GL_3D_COLOR: comptime_int = 0x0602;
pub const GL_3D_COLOR_TEXTURE: comptime_int = 0x0603;
pub const GL_4D_COLOR_TEXTURE: comptime_int = 0x0604;
pub const GL_PASS_THROUGH_TOKEN: comptime_int = 0x0700;
pub const GL_POINT_TOKEN: comptime_int = 0x0701;
pub const GL_LINE_TOKEN: comptime_int = 0x0702;
pub const GL_POLYGON_TOKEN: comptime_int = 0x0703;
pub const GL_BITMAP_TOKEN: comptime_int = 0x0704;
pub const GL_DRAW_PIXEL_TOKEN: comptime_int = 0x0705;
pub const GL_COPY_PIXEL_TOKEN: comptime_int = 0x0706;
pub const GL_LINE_RESET_TOKEN: comptime_int = 0x0707;
pub const GL_EXP: comptime_int = 0x0800;
pub const GL_EXP2: comptime_int = 0x0801;
pub const GL_COEFF: comptime_int = 0x0A00;
pub const GL_ORDER: comptime_int = 0x0A01;
pub const GL_DOMAIN: comptime_int = 0x0A02;
pub const GL_PIXEL_MAP_I_TO_I: comptime_int = 0x0C70;
pub const GL_PIXEL_MAP_S_TO_S: comptime_int = 0x0C71;
pub const GL_PIXEL_MAP_I_TO_R: comptime_int = 0x0C72;
pub const GL_PIXEL_MAP_I_TO_G: comptime_int = 0x0C73;
pub const GL_PIXEL_MAP_I_TO_B: comptime_int = 0x0C74;
pub const GL_PIXEL_MAP_I_TO_A: comptime_int = 0x0C75;
pub const GL_PIXEL_MAP_R_TO_R: comptime_int = 0x0C76;
pub const GL_PIXEL_MAP_G_TO_G: comptime_int = 0x0C77;
pub const GL_PIXEL_MAP_B_TO_B: comptime_int = 0x0C78;
pub const GL_PIXEL_MAP_A_TO_A: comptime_int = 0x0C79;
pub const GL_CURRENT_COLOR: comptime_int = 0x0B00;
pub const GL_CURRENT_INDEX: comptime_int = 0x0B01;
pub const GL_CURRENT_NORMAL: comptime_int = 0x0B02;
pub const GL_CURRENT_TEXTURE_COORDS: comptime_int = 0x0B03;
pub const GL_CURRENT_RASTER_COLOR: comptime_int = 0x0B04;
pub const GL_CURRENT_RASTER_INDEX: comptime_int = 0x0B05;
pub const GL_CURRENT_RASTER_TEXTURE_COORDS: comptime_int = 0x0B06;
pub const GL_CURRENT_RASTER_POSITION: comptime_int = 0x0B07;
pub const GL_CURRENT_RASTER_POSITION_VALID: comptime_int = 0x0B08;
pub const GL_CURRENT_RASTER_DISTANCE: comptime_int = 0x0B09;
pub const GL_POINT_SMOOTH: comptime_int = 0x0B10;
pub const GL_LINE_STIPPLE: comptime_int = 0x0B24;
pub const GL_LINE_STIPPLE_PATTERN: comptime_int = 0x0B25;
pub const GL_LINE_STIPPLE_REPEAT: comptime_int = 0x0B26;
pub const GL_LIST_MODE: comptime_int = 0x0B30;
pub const GL_MAX_LIST_NESTING: comptime_int = 0x0B31;
pub const GL_LIST_BASE: comptime_int = 0x0B32;
pub const GL_LIST_INDEX: comptime_int = 0x0B33;
pub const GL_POLYGON_STIPPLE: comptime_int = 0x0B42;
pub const GL_EDGE_FLAG: comptime_int = 0x0B43;
pub const GL_LIGHTING: comptime_int = 0x0B50;
pub const GL_LIGHT_MODEL_LOCAL_VIEWER: comptime_int = 0x0B51;
pub const GL_LIGHT_MODEL_TWO_SIDE: comptime_int = 0x0B52;
pub const GL_LIGHT_MODEL_AMBIENT: comptime_int = 0x0B53;
pub const GL_SHADE_MODEL: comptime_int = 0x0B54;
pub const GL_COLOR_MATERIAL_FACE: comptime_int = 0x0B55;
pub const GL_COLOR_MATERIAL_PARAMETER: comptime_int = 0x0B56;
pub const GL_COLOR_MATERIAL: comptime_int = 0x0B57;
pub const GL_FOG: comptime_int = 0x0B60;
pub const GL_FOG_INDEX: comptime_int = 0x0B61;
pub const GL_FOG_DENSITY: comptime_int = 0x0B62;
pub const GL_FOG_START: comptime_int = 0x0B63;
pub const GL_FOG_END: comptime_int = 0x0B64;
pub const GL_FOG_MODE: comptime_int = 0x0B65;
pub const GL_FOG_COLOR: comptime_int = 0x0B66;
pub const GL_ACCUM_CLEAR_VALUE: comptime_int = 0x0B80;
pub const GL_MATRIX_MODE: comptime_int = 0x0BA0;
pub const GL_NORMALIZE: comptime_int = 0x0BA1;
pub const GL_MODELVIEW_STACK_DEPTH: comptime_int = 0x0BA3;
pub const GL_PROJECTION_STACK_DEPTH: comptime_int = 0x0BA4;
pub const GL_TEXTURE_STACK_DEPTH: comptime_int = 0x0BA5;
pub const GL_MODELVIEW_MATRIX: comptime_int = 0x0BA6;
pub const GL_PROJECTION_MATRIX: comptime_int = 0x0BA7;
pub const GL_TEXTURE_MATRIX: comptime_int = 0x0BA8;
pub const GL_ATTRIB_STACK_DEPTH: comptime_int = 0x0BB0;
pub const GL_ALPHA_TEST: comptime_int = 0x0BC0;
pub const GL_ALPHA_TEST_FUNC: comptime_int = 0x0BC1;
pub const GL_ALPHA_TEST_REF: comptime_int = 0x0BC2;
pub const GL_LOGIC_OP: comptime_int = 0x0BF1;
pub const GL_AUX_BUFFERS: comptime_int = 0x0C00;
pub const GL_INDEX_CLEAR_VALUE: comptime_int = 0x0C20;
pub const GL_INDEX_WRITEMASK: comptime_int = 0x0C21;
pub const GL_INDEX_MODE: comptime_int = 0x0C30;
pub const GL_RGBA_MODE: comptime_int = 0x0C31;
pub const GL_RENDER_MODE: comptime_int = 0x0C40;
pub const GL_PERSPECTIVE_CORRECTION_HINT: comptime_int = 0x0C50;
pub const GL_POINT_SMOOTH_HINT: comptime_int = 0x0C51;
pub const GL_FOG_HINT: comptime_int = 0x0C54;
pub const GL_TEXTURE_GEN_S: comptime_int = 0x0C60;
pub const GL_TEXTURE_GEN_T: comptime_int = 0x0C61;
pub const GL_TEXTURE_GEN_R: comptime_int = 0x0C62;
pub const GL_TEXTURE_GEN_Q: comptime_int = 0x0C63;
pub const GL_PIXEL_MAP_I_TO_I_SIZE: comptime_int = 0x0CB0;
pub const GL_PIXEL_MAP_S_TO_S_SIZE: comptime_int = 0x0CB1;
pub const GL_PIXEL_MAP_I_TO_R_SIZE: comptime_int = 0x0CB2;
pub const GL_PIXEL_MAP_I_TO_G_SIZE: comptime_int = 0x0CB3;
pub const GL_PIXEL_MAP_I_TO_B_SIZE: comptime_int = 0x0CB4;
pub const GL_PIXEL_MAP_I_TO_A_SIZE: comptime_int = 0x0CB5;
pub const GL_PIXEL_MAP_R_TO_R_SIZE: comptime_int = 0x0CB6;
pub const GL_PIXEL_MAP_G_TO_G_SIZE: comptime_int = 0x0CB7;
pub const GL_PIXEL_MAP_B_TO_B_SIZE: comptime_int = 0x0CB8;
pub const GL_PIXEL_MAP_A_TO_A_SIZE: comptime_int = 0x0CB9;
pub const GL_MAP_COLOR: comptime_int = 0x0D10;
pub const GL_MAP_STENCIL: comptime_int = 0x0D11;
pub const GL_INDEX_SHIFT: comptime_int = 0x0D12;
pub const GL_INDEX_OFFSET: comptime_int = 0x0D13;
pub const GL_RED_SCALE: comptime_int = 0x0D14;
pub const GL_RED_BIAS: comptime_int = 0x0D15;
pub const GL_ZOOM_X: comptime_int = 0x0D16;
pub const GL_ZOOM_Y: comptime_int = 0x0D17;
pub const GL_GREEN_SCALE: comptime_int = 0x0D18;
pub const GL_GREEN_BIAS: comptime_int = 0x0D19;
pub const GL_BLUE_SCALE: comptime_int = 0x0D1A;
pub const GL_BLUE_BIAS: comptime_int = 0x0D1B;
pub const GL_ALPHA_SCALE: comptime_int = 0x0D1C;
pub const GL_ALPHA_BIAS: comptime_int = 0x0D1D;
pub const GL_DEPTH_SCALE: comptime_int = 0x0D1E;
pub const GL_DEPTH_BIAS: comptime_int = 0x0D1F;
pub const GL_MAX_EVAL_ORDER: comptime_int = 0x0D30;
pub const GL_MAX_LIGHTS: comptime_int = 0x0D31;
pub const GL_MAX_CLIP_PLANES: comptime_int = 0x0D32;
pub const GL_MAX_PIXEL_MAP_TABLE: comptime_int = 0x0D34;
pub const GL_MAX_ATTRIB_STACK_DEPTH: comptime_int = 0x0D35;
pub const GL_MAX_MODELVIEW_STACK_DEPTH: comptime_int = 0x0D36;
pub const GL_MAX_NAME_STACK_DEPTH: comptime_int = 0x0D37;
pub const GL_MAX_PROJECTION_STACK_DEPTH: comptime_int = 0x0D38;
pub const GL_MAX_TEXTURE_STACK_DEPTH: comptime_int = 0x0D39;
pub const GL_INDEX_BITS: comptime_int = 0x0D51;
pub const GL_RED_BITS: comptime_int = 0x0D52;
pub const GL_GREEN_BITS: comptime_int = 0x0D53;
pub const GL_BLUE_BITS: comptime_int = 0x0D54;
pub const GL_ALPHA_BITS: comptime_int = 0x0D55;
pub const GL_DEPTH_BITS: comptime_int = 0x0D56;
pub const GL_STENCIL_BITS: comptime_int = 0x0D57;
pub const GL_ACCUM_RED_BITS: comptime_int = 0x0D58;
pub const GL_ACCUM_GREEN_BITS: comptime_int = 0x0D59;
pub const GL_ACCUM_BLUE_BITS: comptime_int = 0x0D5A;
pub const GL_ACCUM_ALPHA_BITS: comptime_int = 0x0D5B;
pub const GL_NAME_STACK_DEPTH: comptime_int = 0x0D70;
pub const GL_AUTO_NORMAL: comptime_int = 0x0D80;
pub const GL_MAP1_COLOR_4: comptime_int = 0x0D90;
pub const GL_MAP1_INDEX: comptime_int = 0x0D91;
pub const GL_MAP1_NORMAL: comptime_int = 0x0D92;
pub const GL_MAP1_TEXTURE_COORD_1: comptime_int = 0x0D93;
pub const GL_MAP1_TEXTURE_COORD_2: comptime_int = 0x0D94;
pub const GL_MAP1_TEXTURE_COORD_3: comptime_int = 0x0D95;
pub const GL_MAP1_TEXTURE_COORD_4: comptime_int = 0x0D96;
pub const GL_MAP1_VERTEX_3: comptime_int = 0x0D97;
pub const GL_MAP1_VERTEX_4: comptime_int = 0x0D98;
pub const GL_MAP2_COLOR_4: comptime_int = 0x0DB0;
pub const GL_MAP2_INDEX: comptime_int = 0x0DB1;
pub const GL_MAP2_NORMAL: comptime_int = 0x0DB2;
pub const GL_MAP2_TEXTURE_COORD_1: comptime_int = 0x0DB3;
pub const GL_MAP2_TEXTURE_COORD_2: comptime_int = 0x0DB4;
pub const GL_MAP2_TEXTURE_COORD_3: comptime_int = 0x0DB5;
pub const GL_MAP2_TEXTURE_COORD_4: comptime_int = 0x0DB6;
pub const GL_MAP2_VERTEX_3: comptime_int = 0x0DB7;
pub const GL_MAP2_VERTEX_4: comptime_int = 0x0DB8;
pub const GL_MAP1_GRID_DOMAIN: comptime_int = 0x0DD0;
pub const GL_MAP1_GRID_SEGMENTS: comptime_int = 0x0DD1;
pub const GL_MAP2_GRID_DOMAIN: comptime_int = 0x0DD2;
pub const GL_MAP2_GRID_SEGMENTS: comptime_int = 0x0DD3;
pub const GL_TEXTURE_COMPONENTS: comptime_int = 0x1003;
pub const GL_TEXTURE_BORDER: comptime_int = 0x1005;
pub const GL_AMBIENT: comptime_int = 0x1200;
pub const GL_DIFFUSE: comptime_int = 0x1201;
pub const GL_SPECULAR: comptime_int = 0x1202;
pub const GL_POSITION: comptime_int = 0x1203;
pub const GL_SPOT_DIRECTION: comptime_int = 0x1204;
pub const GL_SPOT_EXPONENT: comptime_int = 0x1205;
pub const GL_SPOT_CUTOFF: comptime_int = 0x1206;
pub const GL_CONSTANT_ATTENUATION: comptime_int = 0x1207;
pub const GL_LINEAR_ATTENUATION: comptime_int = 0x1208;
pub const GL_QUADRATIC_ATTENUATION: comptime_int = 0x1209;
pub const GL_COMPILE: comptime_int = 0x1300;
pub const GL_COMPILE_AND_EXECUTE: comptime_int = 0x1301;
pub const GL_2_BYTES: comptime_int = 0x1407;
pub const GL_3_BYTES: comptime_int = 0x1408;
pub const GL_4_BYTES: comptime_int = 0x1409;
pub const GL_EMISSION: comptime_int = 0x1600;
pub const GL_SHININESS: comptime_int = 0x1601;
pub const GL_AMBIENT_AND_DIFFUSE: comptime_int = 0x1602;
pub const GL_COLOR_INDEXES: comptime_int = 0x1603;
pub const GL_MODELVIEW: comptime_int = 0x1700;
pub const GL_PROJECTION: comptime_int = 0x1701;
pub const GL_COLOR_INDEX: comptime_int = 0x1900;
pub const GL_LUMINANCE: comptime_int = 0x1909;
pub const GL_LUMINANCE_ALPHA: comptime_int = 0x190A;
pub const GL_BITMAP: comptime_int = 0x1A00;
pub const GL_RENDER: comptime_int = 0x1C00;
pub const GL_FEEDBACK: comptime_int = 0x1C01;
pub const GL_SELECT: comptime_int = 0x1C02;
pub const GL_FLAT: comptime_int = 0x1D00;
pub const GL_SMOOTH: comptime_int = 0x1D01;
pub const GL_S: comptime_int = 0x2000;
pub const GL_T: comptime_int = 0x2001;
pub const GL_R: comptime_int = 0x2002;
pub const GL_Q: comptime_int = 0x2003;
pub const GL_MODULATE: comptime_int = 0x2100;
pub const GL_DECAL: comptime_int = 0x2101;
pub const GL_TEXTURE_ENV_MODE: comptime_int = 0x2200;
pub const GL_TEXTURE_ENV_COLOR: comptime_int = 0x2201;
pub const GL_TEXTURE_ENV: comptime_int = 0x2300;
pub const GL_EYE_LINEAR: comptime_int = 0x2400;
pub const GL_OBJECT_LINEAR: comptime_int = 0x2401;
pub const GL_SPHERE_MAP: comptime_int = 0x2402;
pub const GL_TEXTURE_GEN_MODE: comptime_int = 0x2500;
pub const GL_OBJECT_PLANE: comptime_int = 0x2501;
pub const GL_EYE_PLANE: comptime_int = 0x2502;
pub const GL_CLAMP: comptime_int = 0x2900;
pub const GL_CLIP_PLANE0: comptime_int = 0x3000;
pub const GL_CLIP_PLANE1: comptime_int = 0x3001;
pub const GL_CLIP_PLANE2: comptime_int = 0x3002;
pub const GL_CLIP_PLANE3: comptime_int = 0x3003;
pub const GL_CLIP_PLANE4: comptime_int = 0x3004;
pub const GL_CLIP_PLANE5: comptime_int = 0x3005;
pub const GL_LIGHT0: comptime_int = 0x4000;
pub const GL_LIGHT1: comptime_int = 0x4001;
pub const GL_LIGHT2: comptime_int = 0x4002;
pub const GL_LIGHT3: comptime_int = 0x4003;
pub const GL_LIGHT4: comptime_int = 0x4004;
pub const GL_LIGHT5: comptime_int = 0x4005;
pub const GL_LIGHT6: comptime_int = 0x4006;
pub const GL_LIGHT7: comptime_int = 0x4007;
pub fn glCullFace(mode: GLenum) void{
   return function_map.current.?.glCullFace(mode);
}
pub fn glFrontFace(mode: GLenum) void{
   return function_map.current.?.glFrontFace(mode);
}
pub fn glHint(target: GLenum, mode: GLenum) void{
   return function_map.current.?.glHint(target, mode);
}
pub fn glLineWidth(width: GLfloat) void{
   return function_map.current.?.glLineWidth(width);
}
pub fn glPointSize(size: GLfloat) void{
   return function_map.current.?.glPointSize(size);
}
pub fn glPolygonMode(face: GLenum, mode: GLenum) void{
   return function_map.current.?.glPolygonMode(face, mode);
}
pub fn glScissor(x: GLint, y: GLint, width: GLsizei, height: GLsizei) void{
   return function_map.current.?.glScissor(x, y, width, height);
}
pub fn glTexParameterf(target: GLenum, pname: GLenum, param: GLfloat) void{
   return function_map.current.?.glTexParameterf(target, pname, param);
}
pub fn glTexParameterfv(target: GLenum, pname: GLenum, params: GLfloat) void{
   return function_map.current.?.glTexParameterfv(target, pname, params);
}
pub fn glTexParameteri(target: GLenum, pname: GLenum, param: GLint) void{
   return function_map.current.?.glTexParameteri(target, pname, param);
}
pub fn glTexParameteriv(target: GLenum, pname: GLenum, params: GLint) void{
   return function_map.current.?.glTexParameteriv(target, pname, params);
}
pub fn glTexImage1D(target: GLenum, level: GLint, internalformat: GLint, width: GLsizei, border: GLint, format: GLenum, type: GLenum, pixels: ?*const anyopaque) void{
   return function_map.current.?.glTexImage1D(target, level, internalformat, width, border, format, type, pixels);
}
pub fn glTexImage2D(target: GLenum, level: GLint, internalformat: GLint, width: GLsizei, height: GLsizei, border: GLint, format: GLenum, type: GLenum, pixels: ?*const anyopaque) void{
   return function_map.current.?.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
}
pub fn glDrawBuffer(buf: GLenum) void{
   return function_map.current.?.glDrawBuffer(buf);
}
pub fn glClear(mask: GLbitfield) void{
   return function_map.current.?.glClear(mask);
}
pub fn glClearColor(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void{
   return function_map.current.?.glClearColor(red, green, blue, alpha);
}
pub fn glClearStencil(s: GLint) void{
   return function_map.current.?.glClearStencil(s);
}
pub fn glClearDepth(depth: GLdouble) void{
   return function_map.current.?.glClearDepth(depth);
}
pub fn glStencilMask(mask: GLuint) void{
   return function_map.current.?.glStencilMask(mask);
}
pub fn glColorMask(red: GLboolean, green: GLboolean, blue: GLboolean, alpha: GLboolean) void{
   return function_map.current.?.glColorMask(red, green, blue, alpha);
}
pub fn glDepthMask(flag: GLboolean) void{
   return function_map.current.?.glDepthMask(flag);
}
pub fn glDisable(cap: GLenum) void{
   return function_map.current.?.glDisable(cap);
}
pub fn glEnable(cap: GLenum) void{
   return function_map.current.?.glEnable(cap);
}
pub fn glFinish() void{
   return function_map.current.?.glFinish();
}
pub fn glFlush() void{
   return function_map.current.?.glFlush();
}
pub fn glBlendFunc(sfactor: GLenum, dfactor: GLenum) void{
   return function_map.current.?.glBlendFunc(sfactor, dfactor);
}
pub fn glLogicOp(opcode: GLenum) void{
   return function_map.current.?.glLogicOp(opcode);
}
pub fn glStencilFunc(func: GLenum, ref: GLint, mask: GLuint) void{
   return function_map.current.?.glStencilFunc(func, ref, mask);
}
pub fn glStencilOp(fail: GLenum, zfail: GLenum, zpass: GLenum) void{
   return function_map.current.?.glStencilOp(fail, zfail, zpass);
}
pub fn glDepthFunc(func: GLenum) void{
   return function_map.current.?.glDepthFunc(func);
}
pub fn glPixelStoref(pname: GLenum, param: GLfloat) void{
   return function_map.current.?.glPixelStoref(pname, param);
}
pub fn glPixelStorei(pname: GLenum, param: GLint) void{
   return function_map.current.?.glPixelStorei(pname, param);
}
pub fn glReadBuffer(src: GLenum) void{
   return function_map.current.?.glReadBuffer(src);
}
pub fn glReadPixels(x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: ?*const anyopaque) void{
   return function_map.current.?.glReadPixels(x, y, width, height, format, type, pixels);
}
pub fn glGetBooleanv(pname: GLenum, data: GLboolean) void{
   return function_map.current.?.glGetBooleanv(pname, data);
}
pub fn glGetDoublev(pname: GLenum, data: GLdouble) void{
   return function_map.current.?.glGetDoublev(pname, data);
}
pub fn glGetError() GLenum{
   return function_map.current.?.glGetError();
}
pub fn glGetFloatv(pname: GLenum, data: GLfloat) void{
   return function_map.current.?.glGetFloatv(pname, data);
}
pub fn glGetIntegerv(pname: GLenum, data: GLint) void{
   return function_map.current.?.glGetIntegerv(pname, data);
}
pub fn glGetString(name: GLenum) GLubyte{
   return function_map.current.?.glGetString(name);
}
pub fn glGetTexImage(target: GLenum, level: GLint, format: GLenum, type: GLenum, pixels: ?*const anyopaque) void{
   return function_map.current.?.glGetTexImage(target, level, format, type, pixels);
}
pub fn glGetTexParameterfv(target: GLenum, pname: GLenum, params: GLfloat) void{
   return function_map.current.?.glGetTexParameterfv(target, pname, params);
}
pub fn glGetTexParameteriv(target: GLenum, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetTexParameteriv(target, pname, params);
}
pub fn glGetTexLevelParameterfv(target: GLenum, level: GLint, pname: GLenum, params: GLfloat) void{
   return function_map.current.?.glGetTexLevelParameterfv(target, level, pname, params);
}
pub fn glGetTexLevelParameteriv(target: GLenum, level: GLint, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetTexLevelParameteriv(target, level, pname, params);
}
pub fn glIsEnabled(cap: GLenum) GLboolean{
   return function_map.current.?.glIsEnabled(cap);
}
pub fn glDepthRange(n: GLdouble, f: GLdouble) void{
   return function_map.current.?.glDepthRange(n, f);
}
pub fn glViewport(x: GLint, y: GLint, width: GLsizei, height: GLsizei) void{
   return function_map.current.?.glViewport(x, y, width, height);
}
pub fn glNewList(list: GLuint, mode: GLenum) void{
   return function_map.current.?.glNewList(list, mode);
}
pub fn glEndList() void{
   return function_map.current.?.glEndList();
}
pub fn glCallList(list: GLuint) void{
   return function_map.current.?.glCallList(list);
}
pub fn glCallLists(n: GLsizei, type: GLenum, lists: ?*const anyopaque) void{
   return function_map.current.?.glCallLists(n, type, lists);
}
pub fn glDeleteLists(list: GLuint, range: GLsizei) void{
   return function_map.current.?.glDeleteLists(list, range);
}
pub fn glGenLists(range: GLsizei) GLuint{
   return function_map.current.?.glGenLists(range);
}
pub fn glListBase(base: GLuint) void{
   return function_map.current.?.glListBase(base);
}
pub fn glBegin(mode: GLenum) void{
   return function_map.current.?.glBegin(mode);
}
pub fn glBitmap(width: GLsizei, height: GLsizei, xorig: GLfloat, yorig: GLfloat, xmove: GLfloat, ymove: GLfloat, bitmap: GLubyte) void{
   return function_map.current.?.glBitmap(width, height, xorig, yorig, xmove, ymove, bitmap);
}
pub fn glColor3b(red: GLbyte, green: GLbyte, blue: GLbyte) void{
   return function_map.current.?.glColor3b(red, green, blue);
}
pub fn glColor3bv(v: GLbyte) void{
   return function_map.current.?.glColor3bv(v);
}
pub fn glColor3d(red: GLdouble, green: GLdouble, blue: GLdouble) void{
   return function_map.current.?.glColor3d(red, green, blue);
}
pub fn glColor3dv(v: GLdouble) void{
   return function_map.current.?.glColor3dv(v);
}
pub fn glColor3f(red: GLfloat, green: GLfloat, blue: GLfloat) void{
   return function_map.current.?.glColor3f(red, green, blue);
}
pub fn glColor3fv(v: GLfloat) void{
   return function_map.current.?.glColor3fv(v);
}
pub fn glColor3i(red: GLint, green: GLint, blue: GLint) void{
   return function_map.current.?.glColor3i(red, green, blue);
}
pub fn glColor3iv(v: GLint) void{
   return function_map.current.?.glColor3iv(v);
}
pub fn glColor3s(red: GLshort, green: GLshort, blue: GLshort) void{
   return function_map.current.?.glColor3s(red, green, blue);
}
pub fn glColor3sv(v: GLshort) void{
   return function_map.current.?.glColor3sv(v);
}
pub fn glColor3ub(red: GLubyte, green: GLubyte, blue: GLubyte) void{
   return function_map.current.?.glColor3ub(red, green, blue);
}
pub fn glColor3ubv(v: GLubyte) void{
   return function_map.current.?.glColor3ubv(v);
}
pub fn glColor3ui(red: GLuint, green: GLuint, blue: GLuint) void{
   return function_map.current.?.glColor3ui(red, green, blue);
}
pub fn glColor3uiv(v: GLuint) void{
   return function_map.current.?.glColor3uiv(v);
}
pub fn glColor3us(red: GLushort, green: GLushort, blue: GLushort) void{
   return function_map.current.?.glColor3us(red, green, blue);
}
pub fn glColor3usv(v: GLushort) void{
   return function_map.current.?.glColor3usv(v);
}
pub fn glColor4b(red: GLbyte, green: GLbyte, blue: GLbyte, alpha: GLbyte) void{
   return function_map.current.?.glColor4b(red, green, blue, alpha);
}
pub fn glColor4bv(v: GLbyte) void{
   return function_map.current.?.glColor4bv(v);
}
pub fn glColor4d(red: GLdouble, green: GLdouble, blue: GLdouble, alpha: GLdouble) void{
   return function_map.current.?.glColor4d(red, green, blue, alpha);
}
pub fn glColor4dv(v: GLdouble) void{
   return function_map.current.?.glColor4dv(v);
}
pub fn glColor4f(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void{
   return function_map.current.?.glColor4f(red, green, blue, alpha);
}
pub fn glColor4fv(v: GLfloat) void{
   return function_map.current.?.glColor4fv(v);
}
pub fn glColor4i(red: GLint, green: GLint, blue: GLint, alpha: GLint) void{
   return function_map.current.?.glColor4i(red, green, blue, alpha);
}
pub fn glColor4iv(v: GLint) void{
   return function_map.current.?.glColor4iv(v);
}
pub fn glColor4s(red: GLshort, green: GLshort, blue: GLshort, alpha: GLshort) void{
   return function_map.current.?.glColor4s(red, green, blue, alpha);
}
pub fn glColor4sv(v: GLshort) void{
   return function_map.current.?.glColor4sv(v);
}
pub fn glColor4ub(red: GLubyte, green: GLubyte, blue: GLubyte, alpha: GLubyte) void{
   return function_map.current.?.glColor4ub(red, green, blue, alpha);
}
pub fn glColor4ubv(v: GLubyte) void{
   return function_map.current.?.glColor4ubv(v);
}
pub fn glColor4ui(red: GLuint, green: GLuint, blue: GLuint, alpha: GLuint) void{
   return function_map.current.?.glColor4ui(red, green, blue, alpha);
}
pub fn glColor4uiv(v: GLuint) void{
   return function_map.current.?.glColor4uiv(v);
}
pub fn glColor4us(red: GLushort, green: GLushort, blue: GLushort, alpha: GLushort) void{
   return function_map.current.?.glColor4us(red, green, blue, alpha);
}
pub fn glColor4usv(v: GLushort) void{
   return function_map.current.?.glColor4usv(v);
}
pub fn glEdgeFlag(flag: GLboolean) void{
   return function_map.current.?.glEdgeFlag(flag);
}
pub fn glEdgeFlagv(flag: GLboolean) void{
   return function_map.current.?.glEdgeFlagv(flag);
}
pub fn glEnd() void{
   return function_map.current.?.glEnd();
}
pub fn glIndexd(c: GLdouble) void{
   return function_map.current.?.glIndexd(c);
}
pub fn glIndexdv(c: GLdouble) void{
   return function_map.current.?.glIndexdv(c);
}
pub fn glIndexf(c: GLfloat) void{
   return function_map.current.?.glIndexf(c);
}
pub fn glIndexfv(c: GLfloat) void{
   return function_map.current.?.glIndexfv(c);
}
pub fn glIndexi(c: GLint) void{
   return function_map.current.?.glIndexi(c);
}
pub fn glIndexiv(c: GLint) void{
   return function_map.current.?.glIndexiv(c);
}
pub fn glIndexs(c: GLshort) void{
   return function_map.current.?.glIndexs(c);
}
pub fn glIndexsv(c: GLshort) void{
   return function_map.current.?.glIndexsv(c);
}
pub fn glNormal3b(nx: GLbyte, ny: GLbyte, nz: GLbyte) void{
   return function_map.current.?.glNormal3b(nx, ny, nz);
}
pub fn glNormal3bv(v: GLbyte) void{
   return function_map.current.?.glNormal3bv(v);
}
pub fn glNormal3d(nx: GLdouble, ny: GLdouble, nz: GLdouble) void{
   return function_map.current.?.glNormal3d(nx, ny, nz);
}
pub fn glNormal3dv(v: GLdouble) void{
   return function_map.current.?.glNormal3dv(v);
}
pub fn glNormal3f(nx: GLfloat, ny: GLfloat, nz: GLfloat) void{
   return function_map.current.?.glNormal3f(nx, ny, nz);
}
pub fn glNormal3fv(v: GLfloat) void{
   return function_map.current.?.glNormal3fv(v);
}
pub fn glNormal3i(nx: GLint, ny: GLint, nz: GLint) void{
   return function_map.current.?.glNormal3i(nx, ny, nz);
}
pub fn glNormal3iv(v: GLint) void{
   return function_map.current.?.glNormal3iv(v);
}
pub fn glNormal3s(nx: GLshort, ny: GLshort, nz: GLshort) void{
   return function_map.current.?.glNormal3s(nx, ny, nz);
}
pub fn glNormal3sv(v: GLshort) void{
   return function_map.current.?.glNormal3sv(v);
}
pub fn glRasterPos2d(x: GLdouble, y: GLdouble) void{
   return function_map.current.?.glRasterPos2d(x, y);
}
pub fn glRasterPos2dv(v: GLdouble) void{
   return function_map.current.?.glRasterPos2dv(v);
}
pub fn glRasterPos2f(x: GLfloat, y: GLfloat) void{
   return function_map.current.?.glRasterPos2f(x, y);
}
pub fn glRasterPos2fv(v: GLfloat) void{
   return function_map.current.?.glRasterPos2fv(v);
}
pub fn glRasterPos2i(x: GLint, y: GLint) void{
   return function_map.current.?.glRasterPos2i(x, y);
}
pub fn glRasterPos2iv(v: GLint) void{
   return function_map.current.?.glRasterPos2iv(v);
}
pub fn glRasterPos2s(x: GLshort, y: GLshort) void{
   return function_map.current.?.glRasterPos2s(x, y);
}
pub fn glRasterPos2sv(v: GLshort) void{
   return function_map.current.?.glRasterPos2sv(v);
}
pub fn glRasterPos3d(x: GLdouble, y: GLdouble, z: GLdouble) void{
   return function_map.current.?.glRasterPos3d(x, y, z);
}
pub fn glRasterPos3dv(v: GLdouble) void{
   return function_map.current.?.glRasterPos3dv(v);
}
pub fn glRasterPos3f(x: GLfloat, y: GLfloat, z: GLfloat) void{
   return function_map.current.?.glRasterPos3f(x, y, z);
}
pub fn glRasterPos3fv(v: GLfloat) void{
   return function_map.current.?.glRasterPos3fv(v);
}
pub fn glRasterPos3i(x: GLint, y: GLint, z: GLint) void{
   return function_map.current.?.glRasterPos3i(x, y, z);
}
pub fn glRasterPos3iv(v: GLint) void{
   return function_map.current.?.glRasterPos3iv(v);
}
pub fn glRasterPos3s(x: GLshort, y: GLshort, z: GLshort) void{
   return function_map.current.?.glRasterPos3s(x, y, z);
}
pub fn glRasterPos3sv(v: GLshort) void{
   return function_map.current.?.glRasterPos3sv(v);
}
pub fn glRasterPos4d(x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) void{
   return function_map.current.?.glRasterPos4d(x, y, z, w);
}
pub fn glRasterPos4dv(v: GLdouble) void{
   return function_map.current.?.glRasterPos4dv(v);
}
pub fn glRasterPos4f(x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat) void{
   return function_map.current.?.glRasterPos4f(x, y, z, w);
}
pub fn glRasterPos4fv(v: GLfloat) void{
   return function_map.current.?.glRasterPos4fv(v);
}
pub fn glRasterPos4i(x: GLint, y: GLint, z: GLint, w: GLint) void{
   return function_map.current.?.glRasterPos4i(x, y, z, w);
}
pub fn glRasterPos4iv(v: GLint) void{
   return function_map.current.?.glRasterPos4iv(v);
}
pub fn glRasterPos4s(x: GLshort, y: GLshort, z: GLshort, w: GLshort) void{
   return function_map.current.?.glRasterPos4s(x, y, z, w);
}
pub fn glRasterPos4sv(v: GLshort) void{
   return function_map.current.?.glRasterPos4sv(v);
}
pub fn glRectd(x1: GLdouble, y1: GLdouble, x2: GLdouble, y2: GLdouble) void{
   return function_map.current.?.glRectd(x1, y1, x2, y2);
}
pub fn glRectdv(v1: GLdouble, v2: GLdouble) void{
   return function_map.current.?.glRectdv(v1, v2);
}
pub fn glRectf(x1: GLfloat, y1: GLfloat, x2: GLfloat, y2: GLfloat) void{
   return function_map.current.?.glRectf(x1, y1, x2, y2);
}
pub fn glRectfv(v1: GLfloat, v2: GLfloat) void{
   return function_map.current.?.glRectfv(v1, v2);
}
pub fn glRecti(x1: GLint, y1: GLint, x2: GLint, y2: GLint) void{
   return function_map.current.?.glRecti(x1, y1, x2, y2);
}
pub fn glRectiv(v1: GLint, v2: GLint) void{
   return function_map.current.?.glRectiv(v1, v2);
}
pub fn glRects(x1: GLshort, y1: GLshort, x2: GLshort, y2: GLshort) void{
   return function_map.current.?.glRects(x1, y1, x2, y2);
}
pub fn glRectsv(v1: GLshort, v2: GLshort) void{
   return function_map.current.?.glRectsv(v1, v2);
}
pub fn glTexCoord1d(s: GLdouble) void{
   return function_map.current.?.glTexCoord1d(s);
}
pub fn glTexCoord1dv(v: GLdouble) void{
   return function_map.current.?.glTexCoord1dv(v);
}
pub fn glTexCoord1f(s: GLfloat) void{
   return function_map.current.?.glTexCoord1f(s);
}
pub fn glTexCoord1fv(v: GLfloat) void{
   return function_map.current.?.glTexCoord1fv(v);
}
pub fn glTexCoord1i(s: GLint) void{
   return function_map.current.?.glTexCoord1i(s);
}
pub fn glTexCoord1iv(v: GLint) void{
   return function_map.current.?.glTexCoord1iv(v);
}
pub fn glTexCoord1s(s: GLshort) void{
   return function_map.current.?.glTexCoord1s(s);
}
pub fn glTexCoord1sv(v: GLshort) void{
   return function_map.current.?.glTexCoord1sv(v);
}
pub fn glTexCoord2d(s: GLdouble, t: GLdouble) void{
   return function_map.current.?.glTexCoord2d(s, t);
}
pub fn glTexCoord2dv(v: GLdouble) void{
   return function_map.current.?.glTexCoord2dv(v);
}
pub fn glTexCoord2f(s: GLfloat, t: GLfloat) void{
   return function_map.current.?.glTexCoord2f(s, t);
}
pub fn glTexCoord2fv(v: GLfloat) void{
   return function_map.current.?.glTexCoord2fv(v);
}
pub fn glTexCoord2i(s: GLint, t: GLint) void{
   return function_map.current.?.glTexCoord2i(s, t);
}
pub fn glTexCoord2iv(v: GLint) void{
   return function_map.current.?.glTexCoord2iv(v);
}
pub fn glTexCoord2s(s: GLshort, t: GLshort) void{
   return function_map.current.?.glTexCoord2s(s, t);
}
pub fn glTexCoord2sv(v: GLshort) void{
   return function_map.current.?.glTexCoord2sv(v);
}
pub fn glTexCoord3d(s: GLdouble, t: GLdouble, r: GLdouble) void{
   return function_map.current.?.glTexCoord3d(s, t, r);
}
pub fn glTexCoord3dv(v: GLdouble) void{
   return function_map.current.?.glTexCoord3dv(v);
}
pub fn glTexCoord3f(s: GLfloat, t: GLfloat, r: GLfloat) void{
   return function_map.current.?.glTexCoord3f(s, t, r);
}
pub fn glTexCoord3fv(v: GLfloat) void{
   return function_map.current.?.glTexCoord3fv(v);
}
pub fn glTexCoord3i(s: GLint, t: GLint, r: GLint) void{
   return function_map.current.?.glTexCoord3i(s, t, r);
}
pub fn glTexCoord3iv(v: GLint) void{
   return function_map.current.?.glTexCoord3iv(v);
}
pub fn glTexCoord3s(s: GLshort, t: GLshort, r: GLshort) void{
   return function_map.current.?.glTexCoord3s(s, t, r);
}
pub fn glTexCoord3sv(v: GLshort) void{
   return function_map.current.?.glTexCoord3sv(v);
}
pub fn glTexCoord4d(s: GLdouble, t: GLdouble, r: GLdouble, q: GLdouble) void{
   return function_map.current.?.glTexCoord4d(s, t, r, q);
}
pub fn glTexCoord4dv(v: GLdouble) void{
   return function_map.current.?.glTexCoord4dv(v);
}
pub fn glTexCoord4f(s: GLfloat, t: GLfloat, r: GLfloat, q: GLfloat) void{
   return function_map.current.?.glTexCoord4f(s, t, r, q);
}
pub fn glTexCoord4fv(v: GLfloat) void{
   return function_map.current.?.glTexCoord4fv(v);
}
pub fn glTexCoord4i(s: GLint, t: GLint, r: GLint, q: GLint) void{
   return function_map.current.?.glTexCoord4i(s, t, r, q);
}
pub fn glTexCoord4iv(v: GLint) void{
   return function_map.current.?.glTexCoord4iv(v);
}
pub fn glTexCoord4s(s: GLshort, t: GLshort, r: GLshort, q: GLshort) void{
   return function_map.current.?.glTexCoord4s(s, t, r, q);
}
pub fn glTexCoord4sv(v: GLshort) void{
   return function_map.current.?.glTexCoord4sv(v);
}
pub fn glVertex2d(x: GLdouble, y: GLdouble) void{
   return function_map.current.?.glVertex2d(x, y);
}
pub fn glVertex2dv(v: GLdouble) void{
   return function_map.current.?.glVertex2dv(v);
}
pub fn glVertex2f(x: GLfloat, y: GLfloat) void{
   return function_map.current.?.glVertex2f(x, y);
}
pub fn glVertex2fv(v: GLfloat) void{
   return function_map.current.?.glVertex2fv(v);
}
pub fn glVertex2i(x: GLint, y: GLint) void{
   return function_map.current.?.glVertex2i(x, y);
}
pub fn glVertex2iv(v: GLint) void{
   return function_map.current.?.glVertex2iv(v);
}
pub fn glVertex2s(x: GLshort, y: GLshort) void{
   return function_map.current.?.glVertex2s(x, y);
}
pub fn glVertex2sv(v: GLshort) void{
   return function_map.current.?.glVertex2sv(v);
}
pub fn glVertex3d(x: GLdouble, y: GLdouble, z: GLdouble) void{
   return function_map.current.?.glVertex3d(x, y, z);
}
pub fn glVertex3dv(v: GLdouble) void{
   return function_map.current.?.glVertex3dv(v);
}
pub fn glVertex3f(x: GLfloat, y: GLfloat, z: GLfloat) void{
   return function_map.current.?.glVertex3f(x, y, z);
}
pub fn glVertex3fv(v: GLfloat) void{
   return function_map.current.?.glVertex3fv(v);
}
pub fn glVertex3i(x: GLint, y: GLint, z: GLint) void{
   return function_map.current.?.glVertex3i(x, y, z);
}
pub fn glVertex3iv(v: GLint) void{
   return function_map.current.?.glVertex3iv(v);
}
pub fn glVertex3s(x: GLshort, y: GLshort, z: GLshort) void{
   return function_map.current.?.glVertex3s(x, y, z);
}
pub fn glVertex3sv(v: GLshort) void{
   return function_map.current.?.glVertex3sv(v);
}
pub fn glVertex4d(x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) void{
   return function_map.current.?.glVertex4d(x, y, z, w);
}
pub fn glVertex4dv(v: GLdouble) void{
   return function_map.current.?.glVertex4dv(v);
}
pub fn glVertex4f(x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat) void{
   return function_map.current.?.glVertex4f(x, y, z, w);
}
pub fn glVertex4fv(v: GLfloat) void{
   return function_map.current.?.glVertex4fv(v);
}
pub fn glVertex4i(x: GLint, y: GLint, z: GLint, w: GLint) void{
   return function_map.current.?.glVertex4i(x, y, z, w);
}
pub fn glVertex4iv(v: GLint) void{
   return function_map.current.?.glVertex4iv(v);
}
pub fn glVertex4s(x: GLshort, y: GLshort, z: GLshort, w: GLshort) void{
   return function_map.current.?.glVertex4s(x, y, z, w);
}
pub fn glVertex4sv(v: GLshort) void{
   return function_map.current.?.glVertex4sv(v);
}
pub fn glClipPlane(plane: GLenum, equation: GLdouble) void{
   return function_map.current.?.glClipPlane(plane, equation);
}
pub fn glColorMaterial(face: GLenum, mode: GLenum) void{
   return function_map.current.?.glColorMaterial(face, mode);
}
pub fn glFogf(pname: GLenum, param: GLfloat) void{
   return function_map.current.?.glFogf(pname, param);
}
pub fn glFogfv(pname: GLenum, params: GLfloat) void{
   return function_map.current.?.glFogfv(pname, params);
}
pub fn glFogi(pname: GLenum, param: GLint) void{
   return function_map.current.?.glFogi(pname, param);
}
pub fn glFogiv(pname: GLenum, params: GLint) void{
   return function_map.current.?.glFogiv(pname, params);
}
pub fn glLightf(light: GLenum, pname: GLenum, param: GLfloat) void{
   return function_map.current.?.glLightf(light, pname, param);
}
pub fn glLightfv(light: GLenum, pname: GLenum, params: GLfloat) void{
   return function_map.current.?.glLightfv(light, pname, params);
}
pub fn glLighti(light: GLenum, pname: GLenum, param: GLint) void{
   return function_map.current.?.glLighti(light, pname, param);
}
pub fn glLightiv(light: GLenum, pname: GLenum, params: GLint) void{
   return function_map.current.?.glLightiv(light, pname, params);
}
pub fn glLightModelf(pname: GLenum, param: GLfloat) void{
   return function_map.current.?.glLightModelf(pname, param);
}
pub fn glLightModelfv(pname: GLenum, params: GLfloat) void{
   return function_map.current.?.glLightModelfv(pname, params);
}
pub fn glLightModeli(pname: GLenum, param: GLint) void{
   return function_map.current.?.glLightModeli(pname, param);
}
pub fn glLightModeliv(pname: GLenum, params: GLint) void{
   return function_map.current.?.glLightModeliv(pname, params);
}
pub fn glLineStipple(factor: GLint, pattern: GLushort) void{
   return function_map.current.?.glLineStipple(factor, pattern);
}
pub fn glMaterialf(face: GLenum, pname: GLenum, param: GLfloat) void{
   return function_map.current.?.glMaterialf(face, pname, param);
}
pub fn glMaterialfv(face: GLenum, pname: GLenum, params: GLfloat) void{
   return function_map.current.?.glMaterialfv(face, pname, params);
}
pub fn glMateriali(face: GLenum, pname: GLenum, param: GLint) void{
   return function_map.current.?.glMateriali(face, pname, param);
}
pub fn glMaterialiv(face: GLenum, pname: GLenum, params: GLint) void{
   return function_map.current.?.glMaterialiv(face, pname, params);
}
pub fn glPolygonStipple(mask: GLubyte) void{
   return function_map.current.?.glPolygonStipple(mask);
}
pub fn glShadeModel(mode: GLenum) void{
   return function_map.current.?.glShadeModel(mode);
}
pub fn glTexEnvf(target: GLenum, pname: GLenum, param: GLfloat) void{
   return function_map.current.?.glTexEnvf(target, pname, param);
}
pub fn glTexEnvfv(target: GLenum, pname: GLenum, params: GLfloat) void{
   return function_map.current.?.glTexEnvfv(target, pname, params);
}
pub fn glTexEnvi(target: GLenum, pname: GLenum, param: GLint) void{
   return function_map.current.?.glTexEnvi(target, pname, param);
}
pub fn glTexEnviv(target: GLenum, pname: GLenum, params: GLint) void{
   return function_map.current.?.glTexEnviv(target, pname, params);
}
pub fn glTexGend(coord: GLenum, pname: GLenum, param: GLdouble) void{
   return function_map.current.?.glTexGend(coord, pname, param);
}
pub fn glTexGendv(coord: GLenum, pname: GLenum, params: GLdouble) void{
   return function_map.current.?.glTexGendv(coord, pname, params);
}
pub fn glTexGenf(coord: GLenum, pname: GLenum, param: GLfloat) void{
   return function_map.current.?.glTexGenf(coord, pname, param);
}
pub fn glTexGenfv(coord: GLenum, pname: GLenum, params: GLfloat) void{
   return function_map.current.?.glTexGenfv(coord, pname, params);
}
pub fn glTexGeni(coord: GLenum, pname: GLenum, param: GLint) void{
   return function_map.current.?.glTexGeni(coord, pname, param);
}
pub fn glTexGeniv(coord: GLenum, pname: GLenum, params: GLint) void{
   return function_map.current.?.glTexGeniv(coord, pname, params);
}
pub fn glFeedbackBuffer(size: GLsizei, type: GLenum, buffer: GLfloat) void{
   return function_map.current.?.glFeedbackBuffer(size, type, buffer);
}
pub fn glSelectBuffer(size: GLsizei, buffer: GLuint) void{
   return function_map.current.?.glSelectBuffer(size, buffer);
}
pub fn glRenderMode(mode: GLenum) GLint{
   return function_map.current.?.glRenderMode(mode);
}
pub fn glInitNames() void{
   return function_map.current.?.glInitNames();
}
pub fn glLoadName(name: GLuint) void{
   return function_map.current.?.glLoadName(name);
}
pub fn glPassThrough(token: GLfloat) void{
   return function_map.current.?.glPassThrough(token);
}
pub fn glPopName() void{
   return function_map.current.?.glPopName();
}
pub fn glPushName(name: GLuint) void{
   return function_map.current.?.glPushName(name);
}
pub fn glClearAccum(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void{
   return function_map.current.?.glClearAccum(red, green, blue, alpha);
}
pub fn glClearIndex(c: GLfloat) void{
   return function_map.current.?.glClearIndex(c);
}
pub fn glIndexMask(mask: GLuint) void{
   return function_map.current.?.glIndexMask(mask);
}
pub fn glAccum(op: GLenum, value: GLfloat) void{
   return function_map.current.?.glAccum(op, value);
}
pub fn glPopAttrib() void{
   return function_map.current.?.glPopAttrib();
}
pub fn glPushAttrib(mask: GLbitfield) void{
   return function_map.current.?.glPushAttrib(mask);
}
pub fn glMap1d(target: GLenum, u1: GLdouble, u2: GLdouble, stride: GLint, order: GLint, points: GLdouble) void{
   return function_map.current.?.glMap1d(target, u1, u2, stride, order, points);
}
pub fn glMap1f(target: GLenum, u1: GLfloat, u2: GLfloat, stride: GLint, order: GLint, points: GLfloat) void{
   return function_map.current.?.glMap1f(target, u1, u2, stride, order, points);
}
pub fn glMap2d(target: GLenum, u1: GLdouble, u2: GLdouble, ustride: GLint, uorder: GLint, v1: GLdouble, v2: GLdouble, vstride: GLint, vorder: GLint, points: GLdouble) void{
   return function_map.current.?.glMap2d(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points);
}
pub fn glMap2f(target: GLenum, u1: GLfloat, u2: GLfloat, ustride: GLint, uorder: GLint, v1: GLfloat, v2: GLfloat, vstride: GLint, vorder: GLint, points: GLfloat) void{
   return function_map.current.?.glMap2f(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points);
}
pub fn glMapGrid1d(un: GLint, u1: GLdouble, u2: GLdouble) void{
   return function_map.current.?.glMapGrid1d(un, u1, u2);
}
pub fn glMapGrid1f(un: GLint, u1: GLfloat, u2: GLfloat) void{
   return function_map.current.?.glMapGrid1f(un, u1, u2);
}
pub fn glMapGrid2d(un: GLint, u1: GLdouble, u2: GLdouble, vn: GLint, v1: GLdouble, v2: GLdouble) void{
   return function_map.current.?.glMapGrid2d(un, u1, u2, vn, v1, v2);
}
pub fn glMapGrid2f(un: GLint, u1: GLfloat, u2: GLfloat, vn: GLint, v1: GLfloat, v2: GLfloat) void{
   return function_map.current.?.glMapGrid2f(un, u1, u2, vn, v1, v2);
}
pub fn glEvalCoord1d(u: GLdouble) void{
   return function_map.current.?.glEvalCoord1d(u);
}
pub fn glEvalCoord1dv(u: GLdouble) void{
   return function_map.current.?.glEvalCoord1dv(u);
}
pub fn glEvalCoord1f(u: GLfloat) void{
   return function_map.current.?.glEvalCoord1f(u);
}
pub fn glEvalCoord1fv(u: GLfloat) void{
   return function_map.current.?.glEvalCoord1fv(u);
}
pub fn glEvalCoord2d(u: GLdouble, v: GLdouble) void{
   return function_map.current.?.glEvalCoord2d(u, v);
}
pub fn glEvalCoord2dv(u: GLdouble) void{
   return function_map.current.?.glEvalCoord2dv(u);
}
pub fn glEvalCoord2f(u: GLfloat, v: GLfloat) void{
   return function_map.current.?.glEvalCoord2f(u, v);
}
pub fn glEvalCoord2fv(u: GLfloat) void{
   return function_map.current.?.glEvalCoord2fv(u);
}
pub fn glEvalMesh1(mode: GLenum, i1: GLint, i2: GLint) void{
   return function_map.current.?.glEvalMesh1(mode, i1, i2);
}
pub fn glEvalPoint1(i: GLint) void{
   return function_map.current.?.glEvalPoint1(i);
}
pub fn glEvalMesh2(mode: GLenum, i1: GLint, i2: GLint, j1: GLint, j2: GLint) void{
   return function_map.current.?.glEvalMesh2(mode, i1, i2, j1, j2);
}
pub fn glEvalPoint2(i: GLint, j: GLint) void{
   return function_map.current.?.glEvalPoint2(i, j);
}
pub fn glAlphaFunc(func: GLenum, ref: GLfloat) void{
   return function_map.current.?.glAlphaFunc(func, ref);
}
pub fn glPixelZoom(xfactor: GLfloat, yfactor: GLfloat) void{
   return function_map.current.?.glPixelZoom(xfactor, yfactor);
}
pub fn glPixelTransferf(pname: GLenum, param: GLfloat) void{
   return function_map.current.?.glPixelTransferf(pname, param);
}
pub fn glPixelTransferi(pname: GLenum, param: GLint) void{
   return function_map.current.?.glPixelTransferi(pname, param);
}
pub fn glPixelMapfv(map: GLenum, mapsize: GLsizei, values: GLfloat) void{
   return function_map.current.?.glPixelMapfv(map, mapsize, values);
}
pub fn glPixelMapuiv(map: GLenum, mapsize: GLsizei, values: GLuint) void{
   return function_map.current.?.glPixelMapuiv(map, mapsize, values);
}
pub fn glPixelMapusv(map: GLenum, mapsize: GLsizei, values: GLushort) void{
   return function_map.current.?.glPixelMapusv(map, mapsize, values);
}
pub fn glCopyPixels(x: GLint, y: GLint, width: GLsizei, height: GLsizei, type: GLenum) void{
   return function_map.current.?.glCopyPixels(x, y, width, height, type);
}
pub fn glDrawPixels(width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: ?*const anyopaque) void{
   return function_map.current.?.glDrawPixels(width, height, format, type, pixels);
}
pub fn glGetClipPlane(plane: GLenum, equation: GLdouble) void{
   return function_map.current.?.glGetClipPlane(plane, equation);
}
pub fn glGetLightfv(light: GLenum, pname: GLenum, params: GLfloat) void{
   return function_map.current.?.glGetLightfv(light, pname, params);
}
pub fn glGetLightiv(light: GLenum, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetLightiv(light, pname, params);
}
pub fn glGetMapdv(target: GLenum, query: GLenum, v: GLdouble) void{
   return function_map.current.?.glGetMapdv(target, query, v);
}
pub fn glGetMapfv(target: GLenum, query: GLenum, v: GLfloat) void{
   return function_map.current.?.glGetMapfv(target, query, v);
}
pub fn glGetMapiv(target: GLenum, query: GLenum, v: GLint) void{
   return function_map.current.?.glGetMapiv(target, query, v);
}
pub fn glGetMaterialfv(face: GLenum, pname: GLenum, params: GLfloat) void{
   return function_map.current.?.glGetMaterialfv(face, pname, params);
}
pub fn glGetMaterialiv(face: GLenum, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetMaterialiv(face, pname, params);
}
pub fn glGetPixelMapfv(map: GLenum, values: GLfloat) void{
   return function_map.current.?.glGetPixelMapfv(map, values);
}
pub fn glGetPixelMapuiv(map: GLenum, values: GLuint) void{
   return function_map.current.?.glGetPixelMapuiv(map, values);
}
pub fn glGetPixelMapusv(map: GLenum, values: GLushort) void{
   return function_map.current.?.glGetPixelMapusv(map, values);
}
pub fn glGetPolygonStipple(mask: GLubyte) void{
   return function_map.current.?.glGetPolygonStipple(mask);
}
pub fn glGetTexEnvfv(target: GLenum, pname: GLenum, params: GLfloat) void{
   return function_map.current.?.glGetTexEnvfv(target, pname, params);
}
pub fn glGetTexEnviv(target: GLenum, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetTexEnviv(target, pname, params);
}
pub fn glGetTexGendv(coord: GLenum, pname: GLenum, params: GLdouble) void{
   return function_map.current.?.glGetTexGendv(coord, pname, params);
}
pub fn glGetTexGenfv(coord: GLenum, pname: GLenum, params: GLfloat) void{
   return function_map.current.?.glGetTexGenfv(coord, pname, params);
}
pub fn glGetTexGeniv(coord: GLenum, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetTexGeniv(coord, pname, params);
}
pub fn glIsList(list: GLuint) GLboolean{
   return function_map.current.?.glIsList(list);
}
pub fn glFrustum(left: GLdouble, right: GLdouble, bottom: GLdouble, top: GLdouble, zNear: GLdouble, zFar: GLdouble) void{
   return function_map.current.?.glFrustum(left, right, bottom, top, zNear, zFar);
}
pub fn glLoadIdentity() void{
   return function_map.current.?.glLoadIdentity();
}
pub fn glLoadMatrixf(m: GLfloat) void{
   return function_map.current.?.glLoadMatrixf(m);
}
pub fn glLoadMatrixd(m: GLdouble) void{
   return function_map.current.?.glLoadMatrixd(m);
}
pub fn glMatrixMode(mode: GLenum) void{
   return function_map.current.?.glMatrixMode(mode);
}
pub fn glMultMatrixf(m: GLfloat) void{
   return function_map.current.?.glMultMatrixf(m);
}
pub fn glMultMatrixd(m: GLdouble) void{
   return function_map.current.?.glMultMatrixd(m);
}
pub fn glOrtho(left: GLdouble, right: GLdouble, bottom: GLdouble, top: GLdouble, zNear: GLdouble, zFar: GLdouble) void{
   return function_map.current.?.glOrtho(left, right, bottom, top, zNear, zFar);
}
pub fn glPopMatrix() void{
   return function_map.current.?.glPopMatrix();
}
pub fn glPushMatrix() void{
   return function_map.current.?.glPushMatrix();
}
pub fn glRotated(angle: GLdouble, x: GLdouble, y: GLdouble, z: GLdouble) void{
   return function_map.current.?.glRotated(angle, x, y, z);
}
pub fn glRotatef(angle: GLfloat, x: GLfloat, y: GLfloat, z: GLfloat) void{
   return function_map.current.?.glRotatef(angle, x, y, z);
}
pub fn glScaled(x: GLdouble, y: GLdouble, z: GLdouble) void{
   return function_map.current.?.glScaled(x, y, z);
}
pub fn glScalef(x: GLfloat, y: GLfloat, z: GLfloat) void{
   return function_map.current.?.glScalef(x, y, z);
}
pub fn glTranslated(x: GLdouble, y: GLdouble, z: GLdouble) void{
   return function_map.current.?.glTranslated(x, y, z);
}
pub fn glTranslatef(x: GLfloat, y: GLfloat, z: GLfloat) void{
   return function_map.current.?.glTranslatef(x, y, z);
}
pub const GL_COLOR_LOGIC_OP: comptime_int = 0x0BF2;
pub const GL_POLYGON_OFFSET_UNITS: comptime_int = 0x2A00;
pub const GL_POLYGON_OFFSET_POINT: comptime_int = 0x2A01;
pub const GL_POLYGON_OFFSET_LINE: comptime_int = 0x2A02;
pub const GL_POLYGON_OFFSET_FILL: comptime_int = 0x8037;
pub const GL_POLYGON_OFFSET_FACTOR: comptime_int = 0x8038;
pub const GL_TEXTURE_BINDING_1D: comptime_int = 0x8068;
pub const GL_TEXTURE_BINDING_2D: comptime_int = 0x8069;
pub const GL_TEXTURE_INTERNAL_FORMAT: comptime_int = 0x1003;
pub const GL_TEXTURE_RED_SIZE: comptime_int = 0x805C;
pub const GL_TEXTURE_GREEN_SIZE: comptime_int = 0x805D;
pub const GL_TEXTURE_BLUE_SIZE: comptime_int = 0x805E;
pub const GL_TEXTURE_ALPHA_SIZE: comptime_int = 0x805F;
pub const GL_DOUBLE: comptime_int = 0x140A;
pub const GL_PROXY_TEXTURE_1D: comptime_int = 0x8063;
pub const GL_PROXY_TEXTURE_2D: comptime_int = 0x8064;
pub const GL_R3_G3_B2: comptime_int = 0x2A10;
pub const GL_RGB4: comptime_int = 0x804F;
pub const GL_RGB5: comptime_int = 0x8050;
pub const GL_RGB8: comptime_int = 0x8051;
pub const GL_RGB10: comptime_int = 0x8052;
pub const GL_RGB12: comptime_int = 0x8053;
pub const GL_RGB16: comptime_int = 0x8054;
pub const GL_RGBA2: comptime_int = 0x8055;
pub const GL_RGBA4: comptime_int = 0x8056;
pub const GL_RGB5_A1: comptime_int = 0x8057;
pub const GL_RGBA8: comptime_int = 0x8058;
pub const GL_RGB10_A2: comptime_int = 0x8059;
pub const GL_RGBA12: comptime_int = 0x805A;
pub const GL_RGBA16: comptime_int = 0x805B;
pub const GL_CLIENT_PIXEL_STORE_BIT: comptime_int = 0x00000001;
pub const GL_CLIENT_VERTEX_ARRAY_BIT: comptime_int = 0x00000002;
pub const GL_CLIENT_ALL_ATTRIB_BITS: comptime_int = 0xFFFFFFFF;
pub const GL_VERTEX_ARRAY_POINTER: comptime_int = 0x808E;
pub const GL_NORMAL_ARRAY_POINTER: comptime_int = 0x808F;
pub const GL_COLOR_ARRAY_POINTER: comptime_int = 0x8090;
pub const GL_INDEX_ARRAY_POINTER: comptime_int = 0x8091;
pub const GL_TEXTURE_COORD_ARRAY_POINTER: comptime_int = 0x8092;
pub const GL_EDGE_FLAG_ARRAY_POINTER: comptime_int = 0x8093;
pub const GL_FEEDBACK_BUFFER_POINTER: comptime_int = 0x0DF0;
pub const GL_SELECTION_BUFFER_POINTER: comptime_int = 0x0DF3;
pub const GL_CLIENT_ATTRIB_STACK_DEPTH: comptime_int = 0x0BB1;
pub const GL_INDEX_LOGIC_OP: comptime_int = 0x0BF1;
pub const GL_MAX_CLIENT_ATTRIB_STACK_DEPTH: comptime_int = 0x0D3B;
pub const GL_FEEDBACK_BUFFER_SIZE: comptime_int = 0x0DF1;
pub const GL_FEEDBACK_BUFFER_TYPE: comptime_int = 0x0DF2;
pub const GL_SELECTION_BUFFER_SIZE: comptime_int = 0x0DF4;
pub const GL_VERTEX_ARRAY: comptime_int = 0x8074;
pub const GL_NORMAL_ARRAY: comptime_int = 0x8075;
pub const GL_COLOR_ARRAY: comptime_int = 0x8076;
pub const GL_INDEX_ARRAY: comptime_int = 0x8077;
pub const GL_TEXTURE_COORD_ARRAY: comptime_int = 0x8078;
pub const GL_EDGE_FLAG_ARRAY: comptime_int = 0x8079;
pub const GL_VERTEX_ARRAY_SIZE: comptime_int = 0x807A;
pub const GL_VERTEX_ARRAY_TYPE: comptime_int = 0x807B;
pub const GL_VERTEX_ARRAY_STRIDE: comptime_int = 0x807C;
pub const GL_NORMAL_ARRAY_TYPE: comptime_int = 0x807E;
pub const GL_NORMAL_ARRAY_STRIDE: comptime_int = 0x807F;
pub const GL_COLOR_ARRAY_SIZE: comptime_int = 0x8081;
pub const GL_COLOR_ARRAY_TYPE: comptime_int = 0x8082;
pub const GL_COLOR_ARRAY_STRIDE: comptime_int = 0x8083;
pub const GL_INDEX_ARRAY_TYPE: comptime_int = 0x8085;
pub const GL_INDEX_ARRAY_STRIDE: comptime_int = 0x8086;
pub const GL_TEXTURE_COORD_ARRAY_SIZE: comptime_int = 0x8088;
pub const GL_TEXTURE_COORD_ARRAY_TYPE: comptime_int = 0x8089;
pub const GL_TEXTURE_COORD_ARRAY_STRIDE: comptime_int = 0x808A;
pub const GL_EDGE_FLAG_ARRAY_STRIDE: comptime_int = 0x808C;
pub const GL_TEXTURE_LUMINANCE_SIZE: comptime_int = 0x8060;
pub const GL_TEXTURE_INTENSITY_SIZE: comptime_int = 0x8061;
pub const GL_TEXTURE_PRIORITY: comptime_int = 0x8066;
pub const GL_TEXTURE_RESIDENT: comptime_int = 0x8067;
pub const GL_ALPHA4: comptime_int = 0x803B;
pub const GL_ALPHA8: comptime_int = 0x803C;
pub const GL_ALPHA12: comptime_int = 0x803D;
pub const GL_ALPHA16: comptime_int = 0x803E;
pub const GL_LUMINANCE4: comptime_int = 0x803F;
pub const GL_LUMINANCE8: comptime_int = 0x8040;
pub const GL_LUMINANCE12: comptime_int = 0x8041;
pub const GL_LUMINANCE16: comptime_int = 0x8042;
pub const GL_LUMINANCE4_ALPHA4: comptime_int = 0x8043;
pub const GL_LUMINANCE6_ALPHA2: comptime_int = 0x8044;
pub const GL_LUMINANCE8_ALPHA8: comptime_int = 0x8045;
pub const GL_LUMINANCE12_ALPHA4: comptime_int = 0x8046;
pub const GL_LUMINANCE12_ALPHA12: comptime_int = 0x8047;
pub const GL_LUMINANCE16_ALPHA16: comptime_int = 0x8048;
pub const GL_INTENSITY: comptime_int = 0x8049;
pub const GL_INTENSITY4: comptime_int = 0x804A;
pub const GL_INTENSITY8: comptime_int = 0x804B;
pub const GL_INTENSITY12: comptime_int = 0x804C;
pub const GL_INTENSITY16: comptime_int = 0x804D;
pub const GL_V2F: comptime_int = 0x2A20;
pub const GL_V3F: comptime_int = 0x2A21;
pub const GL_C4UB_V2F: comptime_int = 0x2A22;
pub const GL_C4UB_V3F: comptime_int = 0x2A23;
pub const GL_C3F_V3F: comptime_int = 0x2A24;
pub const GL_N3F_V3F: comptime_int = 0x2A25;
pub const GL_C4F_N3F_V3F: comptime_int = 0x2A26;
pub const GL_T2F_V3F: comptime_int = 0x2A27;
pub const GL_T4F_V4F: comptime_int = 0x2A28;
pub const GL_T2F_C4UB_V3F: comptime_int = 0x2A29;
pub const GL_T2F_C3F_V3F: comptime_int = 0x2A2A;
pub const GL_T2F_N3F_V3F: comptime_int = 0x2A2B;
pub const GL_T2F_C4F_N3F_V3F: comptime_int = 0x2A2C;
pub const GL_T4F_C4F_N3F_V4F: comptime_int = 0x2A2D;
pub fn glDrawArrays(mode: GLenum, first: GLint, count: GLsizei) void{
   return function_map.current.?.glDrawArrays(mode, first, count);
}
pub fn glDrawElements(mode: GLenum, count: GLsizei, type: GLenum, indices: ?*const anyopaque) void{
   return function_map.current.?.glDrawElements(mode, count, type, indices);
}
pub fn glGetPointerv(pname: GLenum, params: ?*const anyopaque) void{
   return function_map.current.?.glGetPointerv(pname, params);
}
pub fn glPolygonOffset(factor: GLfloat, units: GLfloat) void{
   return function_map.current.?.glPolygonOffset(factor, units);
}
pub fn glCopyTexImage1D(target: GLenum, level: GLint, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei, border: GLint) void{
   return function_map.current.?.glCopyTexImage1D(target, level, internalformat, x, y, width, border);
}
pub fn glCopyTexImage2D(target: GLenum, level: GLint, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint) void{
   return function_map.current.?.glCopyTexImage2D(target, level, internalformat, x, y, width, height, border);
}
pub fn glCopyTexSubImage1D(target: GLenum, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei) void{
   return function_map.current.?.glCopyTexSubImage1D(target, level, xoffset, x, y, width);
}
pub fn glCopyTexSubImage2D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) void{
   return function_map.current.?.glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height);
}
pub fn glTexSubImage1D(target: GLenum, level: GLint, xoffset: GLint, width: GLsizei, format: GLenum, type: GLenum, pixels: ?*const anyopaque) void{
   return function_map.current.?.glTexSubImage1D(target, level, xoffset, width, format, type, pixels);
}
pub fn glTexSubImage2D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: ?*const anyopaque) void{
   return function_map.current.?.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels);
}
pub fn glBindTexture(target: GLenum, texture: GLuint) void{
   return function_map.current.?.glBindTexture(target, texture);
}
pub fn glDeleteTextures(n: GLsizei, textures: GLuint) void{
   return function_map.current.?.glDeleteTextures(n, textures);
}
pub fn glGenTextures(n: GLsizei, textures: GLuint) void{
   return function_map.current.?.glGenTextures(n, textures);
}
pub fn glIsTexture(texture: GLuint) GLboolean{
   return function_map.current.?.glIsTexture(texture);
}
pub fn glArrayElement(i: GLint) void{
   return function_map.current.?.glArrayElement(i);
}
pub fn glColorPointer(size: GLint, type: GLenum, stride: GLsizei, pointer: ?*const anyopaque) void{
   return function_map.current.?.glColorPointer(size, type, stride, pointer);
}
pub fn glDisableClientState(array: GLenum) void{
   return function_map.current.?.glDisableClientState(array);
}
pub fn glEdgeFlagPointer(stride: GLsizei, pointer: ?*const anyopaque) void{
   return function_map.current.?.glEdgeFlagPointer(stride, pointer);
}
pub fn glEnableClientState(array: GLenum) void{
   return function_map.current.?.glEnableClientState(array);
}
pub fn glIndexPointer(type: GLenum, stride: GLsizei, pointer: ?*const anyopaque) void{
   return function_map.current.?.glIndexPointer(type, stride, pointer);
}
pub fn glInterleavedArrays(format: GLenum, stride: GLsizei, pointer: ?*const anyopaque) void{
   return function_map.current.?.glInterleavedArrays(format, stride, pointer);
}
pub fn glNormalPointer(type: GLenum, stride: GLsizei, pointer: ?*const anyopaque) void{
   return function_map.current.?.glNormalPointer(type, stride, pointer);
}
pub fn glTexCoordPointer(size: GLint, type: GLenum, stride: GLsizei, pointer: ?*const anyopaque) void{
   return function_map.current.?.glTexCoordPointer(size, type, stride, pointer);
}
pub fn glVertexPointer(size: GLint, type: GLenum, stride: GLsizei, pointer: ?*const anyopaque) void{
   return function_map.current.?.glVertexPointer(size, type, stride, pointer);
}
pub fn glAreTexturesResident(n: GLsizei, textures: GLuint, residences: GLboolean) GLboolean{
   return function_map.current.?.glAreTexturesResident(n, textures, residences);
}
pub fn glPrioritizeTextures(n: GLsizei, textures: GLuint, priorities: GLfloat) void{
   return function_map.current.?.glPrioritizeTextures(n, textures, priorities);
}
pub fn glIndexub(c: GLubyte) void{
   return function_map.current.?.glIndexub(c);
}
pub fn glIndexubv(c: GLubyte) void{
   return function_map.current.?.glIndexubv(c);
}
pub fn glPopClientAttrib() void{
   return function_map.current.?.glPopClientAttrib();
}
pub fn glPushClientAttrib(mask: GLbitfield) void{
   return function_map.current.?.glPushClientAttrib(mask);
}
pub const GL_UNSIGNED_BYTE_3_3_2: comptime_int = 0x8032;
pub const GL_UNSIGNED_SHORT_4_4_4_4: comptime_int = 0x8033;
pub const GL_UNSIGNED_SHORT_5_5_5_1: comptime_int = 0x8034;
pub const GL_UNSIGNED_INT_8_8_8_8: comptime_int = 0x8035;
pub const GL_UNSIGNED_INT_10_10_10_2: comptime_int = 0x8036;
pub const GL_TEXTURE_BINDING_3D: comptime_int = 0x806A;
pub const GL_PACK_SKIP_IMAGES: comptime_int = 0x806B;
pub const GL_PACK_IMAGE_HEIGHT: comptime_int = 0x806C;
pub const GL_UNPACK_SKIP_IMAGES: comptime_int = 0x806D;
pub const GL_UNPACK_IMAGE_HEIGHT: comptime_int = 0x806E;
pub const GL_TEXTURE_3D: comptime_int = 0x806F;
pub const GL_PROXY_TEXTURE_3D: comptime_int = 0x8070;
pub const GL_TEXTURE_DEPTH: comptime_int = 0x8071;
pub const GL_TEXTURE_WRAP_R: comptime_int = 0x8072;
pub const GL_MAX_3D_TEXTURE_SIZE: comptime_int = 0x8073;
pub const GL_UNSIGNED_BYTE_2_3_3_REV: comptime_int = 0x8362;
pub const GL_UNSIGNED_SHORT_5_6_5: comptime_int = 0x8363;
pub const GL_UNSIGNED_SHORT_5_6_5_REV: comptime_int = 0x8364;
pub const GL_UNSIGNED_SHORT_4_4_4_4_REV: comptime_int = 0x8365;
pub const GL_UNSIGNED_SHORT_1_5_5_5_REV: comptime_int = 0x8366;
pub const GL_UNSIGNED_INT_8_8_8_8_REV: comptime_int = 0x8367;
pub const GL_UNSIGNED_INT_2_10_10_10_REV: comptime_int = 0x8368;
pub const GL_BGR: comptime_int = 0x80E0;
pub const GL_BGRA: comptime_int = 0x80E1;
pub const GL_MAX_ELEMENTS_VERTICES: comptime_int = 0x80E8;
pub const GL_MAX_ELEMENTS_INDICES: comptime_int = 0x80E9;
pub const GL_CLAMP_TO_EDGE: comptime_int = 0x812F;
pub const GL_TEXTURE_MIN_LOD: comptime_int = 0x813A;
pub const GL_TEXTURE_MAX_LOD: comptime_int = 0x813B;
pub const GL_TEXTURE_BASE_LEVEL: comptime_int = 0x813C;
pub const GL_TEXTURE_MAX_LEVEL: comptime_int = 0x813D;
pub const GL_SMOOTH_POINT_SIZE_RANGE: comptime_int = 0x0B12;
pub const GL_SMOOTH_POINT_SIZE_GRANULARITY: comptime_int = 0x0B13;
pub const GL_SMOOTH_LINE_WIDTH_RANGE: comptime_int = 0x0B22;
pub const GL_SMOOTH_LINE_WIDTH_GRANULARITY: comptime_int = 0x0B23;
pub const GL_ALIASED_LINE_WIDTH_RANGE: comptime_int = 0x846E;
pub const GL_RESCALE_NORMAL: comptime_int = 0x803A;
pub const GL_LIGHT_MODEL_COLOR_CONTROL: comptime_int = 0x81F8;
pub const GL_SINGLE_COLOR: comptime_int = 0x81F9;
pub const GL_SEPARATE_SPECULAR_COLOR: comptime_int = 0x81FA;
pub const GL_ALIASED_POINT_SIZE_RANGE: comptime_int = 0x846D;
pub fn glDrawRangeElements(mode: GLenum, start: GLuint, end: GLuint, count: GLsizei, type: GLenum, indices: ?*const anyopaque) void{
   return function_map.current.?.glDrawRangeElements(mode, start, end, count, type, indices);
}
pub fn glTexImage3D(target: GLenum, level: GLint, internalformat: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, format: GLenum, type: GLenum, pixels: ?*const anyopaque) void{
   return function_map.current.?.glTexImage3D(target, level, internalformat, width, height, depth, border, format, type, pixels);
}
pub fn glTexSubImage3D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: GLenum, type: GLenum, pixels: ?*const anyopaque) void{
   return function_map.current.?.glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels);
}
pub fn glCopyTexSubImage3D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) void{
   return function_map.current.?.glCopyTexSubImage3D(target, level, xoffset, yoffset, zoffset, x, y, width, height);
}
pub const GL_TEXTURE0: comptime_int = 0x84C0;
pub const GL_TEXTURE1: comptime_int = 0x84C1;
pub const GL_TEXTURE2: comptime_int = 0x84C2;
pub const GL_TEXTURE3: comptime_int = 0x84C3;
pub const GL_TEXTURE4: comptime_int = 0x84C4;
pub const GL_TEXTURE5: comptime_int = 0x84C5;
pub const GL_TEXTURE6: comptime_int = 0x84C6;
pub const GL_TEXTURE7: comptime_int = 0x84C7;
pub const GL_TEXTURE8: comptime_int = 0x84C8;
pub const GL_TEXTURE9: comptime_int = 0x84C9;
pub const GL_TEXTURE10: comptime_int = 0x84CA;
pub const GL_TEXTURE11: comptime_int = 0x84CB;
pub const GL_TEXTURE12: comptime_int = 0x84CC;
pub const GL_TEXTURE13: comptime_int = 0x84CD;
pub const GL_TEXTURE14: comptime_int = 0x84CE;
pub const GL_TEXTURE15: comptime_int = 0x84CF;
pub const GL_TEXTURE16: comptime_int = 0x84D0;
pub const GL_TEXTURE17: comptime_int = 0x84D1;
pub const GL_TEXTURE18: comptime_int = 0x84D2;
pub const GL_TEXTURE19: comptime_int = 0x84D3;
pub const GL_TEXTURE20: comptime_int = 0x84D4;
pub const GL_TEXTURE21: comptime_int = 0x84D5;
pub const GL_TEXTURE22: comptime_int = 0x84D6;
pub const GL_TEXTURE23: comptime_int = 0x84D7;
pub const GL_TEXTURE24: comptime_int = 0x84D8;
pub const GL_TEXTURE25: comptime_int = 0x84D9;
pub const GL_TEXTURE26: comptime_int = 0x84DA;
pub const GL_TEXTURE27: comptime_int = 0x84DB;
pub const GL_TEXTURE28: comptime_int = 0x84DC;
pub const GL_TEXTURE29: comptime_int = 0x84DD;
pub const GL_TEXTURE30: comptime_int = 0x84DE;
pub const GL_TEXTURE31: comptime_int = 0x84DF;
pub const GL_ACTIVE_TEXTURE: comptime_int = 0x84E0;
pub const GL_MULTISAMPLE: comptime_int = 0x809D;
pub const GL_SAMPLE_ALPHA_TO_COVERAGE: comptime_int = 0x809E;
pub const GL_SAMPLE_ALPHA_TO_ONE: comptime_int = 0x809F;
pub const GL_SAMPLE_COVERAGE: comptime_int = 0x80A0;
pub const GL_SAMPLE_BUFFERS: comptime_int = 0x80A8;
pub const GL_SAMPLES: comptime_int = 0x80A9;
pub const GL_SAMPLE_COVERAGE_VALUE: comptime_int = 0x80AA;
pub const GL_SAMPLE_COVERAGE_INVERT: comptime_int = 0x80AB;
pub const GL_TEXTURE_CUBE_MAP: comptime_int = 0x8513;
pub const GL_TEXTURE_BINDING_CUBE_MAP: comptime_int = 0x8514;
pub const GL_TEXTURE_CUBE_MAP_POSITIVE_X: comptime_int = 0x8515;
pub const GL_TEXTURE_CUBE_MAP_NEGATIVE_X: comptime_int = 0x8516;
pub const GL_TEXTURE_CUBE_MAP_POSITIVE_Y: comptime_int = 0x8517;
pub const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y: comptime_int = 0x8518;
pub const GL_TEXTURE_CUBE_MAP_POSITIVE_Z: comptime_int = 0x8519;
pub const GL_TEXTURE_CUBE_MAP_NEGATIVE_Z: comptime_int = 0x851A;
pub const GL_PROXY_TEXTURE_CUBE_MAP: comptime_int = 0x851B;
pub const GL_MAX_CUBE_MAP_TEXTURE_SIZE: comptime_int = 0x851C;
pub const GL_COMPRESSED_RGB: comptime_int = 0x84ED;
pub const GL_COMPRESSED_RGBA: comptime_int = 0x84EE;
pub const GL_TEXTURE_COMPRESSION_HINT: comptime_int = 0x84EF;
pub const GL_TEXTURE_COMPRESSED_IMAGE_SIZE: comptime_int = 0x86A0;
pub const GL_TEXTURE_COMPRESSED: comptime_int = 0x86A1;
pub const GL_NUM_COMPRESSED_TEXTURE_FORMATS: comptime_int = 0x86A2;
pub const GL_COMPRESSED_TEXTURE_FORMATS: comptime_int = 0x86A3;
pub const GL_CLAMP_TO_BORDER: comptime_int = 0x812D;
pub const GL_CLIENT_ACTIVE_TEXTURE: comptime_int = 0x84E1;
pub const GL_MAX_TEXTURE_UNITS: comptime_int = 0x84E2;
pub const GL_TRANSPOSE_MODELVIEW_MATRIX: comptime_int = 0x84E3;
pub const GL_TRANSPOSE_PROJECTION_MATRIX: comptime_int = 0x84E4;
pub const GL_TRANSPOSE_TEXTURE_MATRIX: comptime_int = 0x84E5;
pub const GL_TRANSPOSE_COLOR_MATRIX: comptime_int = 0x84E6;
pub const GL_MULTISAMPLE_BIT: comptime_int = 0x20000000;
pub const GL_NORMAL_MAP: comptime_int = 0x8511;
pub const GL_REFLECTION_MAP: comptime_int = 0x8512;
pub const GL_COMPRESSED_ALPHA: comptime_int = 0x84E9;
pub const GL_COMPRESSED_LUMINANCE: comptime_int = 0x84EA;
pub const GL_COMPRESSED_LUMINANCE_ALPHA: comptime_int = 0x84EB;
pub const GL_COMPRESSED_INTENSITY: comptime_int = 0x84EC;
pub const GL_COMBINE: comptime_int = 0x8570;
pub const GL_COMBINE_RGB: comptime_int = 0x8571;
pub const GL_COMBINE_ALPHA: comptime_int = 0x8572;
pub const GL_SOURCE0_RGB: comptime_int = 0x8580;
pub const GL_SOURCE1_RGB: comptime_int = 0x8581;
pub const GL_SOURCE2_RGB: comptime_int = 0x8582;
pub const GL_SOURCE0_ALPHA: comptime_int = 0x8588;
pub const GL_SOURCE1_ALPHA: comptime_int = 0x8589;
pub const GL_SOURCE2_ALPHA: comptime_int = 0x858A;
pub const GL_OPERAND0_RGB: comptime_int = 0x8590;
pub const GL_OPERAND1_RGB: comptime_int = 0x8591;
pub const GL_OPERAND2_RGB: comptime_int = 0x8592;
pub const GL_OPERAND0_ALPHA: comptime_int = 0x8598;
pub const GL_OPERAND1_ALPHA: comptime_int = 0x8599;
pub const GL_OPERAND2_ALPHA: comptime_int = 0x859A;
pub const GL_RGB_SCALE: comptime_int = 0x8573;
pub const GL_ADD_SIGNED: comptime_int = 0x8574;
pub const GL_INTERPOLATE: comptime_int = 0x8575;
pub const GL_SUBTRACT: comptime_int = 0x84E7;
pub const GL_CONSTANT: comptime_int = 0x8576;
pub const GL_PRIMARY_COLOR: comptime_int = 0x8577;
pub const GL_PREVIOUS: comptime_int = 0x8578;
pub const GL_DOT3_RGB: comptime_int = 0x86AE;
pub const GL_DOT3_RGBA: comptime_int = 0x86AF;
pub fn glActiveTexture(texture: GLenum) void{
   return function_map.current.?.glActiveTexture(texture);
}
pub fn glSampleCoverage(value: GLfloat, invert: GLboolean) void{
   return function_map.current.?.glSampleCoverage(value, invert);
}
pub fn glCompressedTexImage3D(target: GLenum, level: GLint, internalformat: GLenum, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, imageSize: GLsizei, data: ?*const anyopaque) void{
   return function_map.current.?.glCompressedTexImage3D(target, level, internalformat, width, height, depth, border, imageSize, data);
}
pub fn glCompressedTexImage2D(target: GLenum, level: GLint, internalformat: GLenum, width: GLsizei, height: GLsizei, border: GLint, imageSize: GLsizei, data: ?*const anyopaque) void{
   return function_map.current.?.glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data);
}
pub fn glCompressedTexImage1D(target: GLenum, level: GLint, internalformat: GLenum, width: GLsizei, border: GLint, imageSize: GLsizei, data: ?*const anyopaque) void{
   return function_map.current.?.glCompressedTexImage1D(target, level, internalformat, width, border, imageSize, data);
}
pub fn glCompressedTexSubImage3D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: GLenum, imageSize: GLsizei, data: ?*const anyopaque) void{
   return function_map.current.?.glCompressedTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, data);
}
pub fn glCompressedTexSubImage2D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, imageSize: GLsizei, data: ?*const anyopaque) void{
   return function_map.current.?.glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data);
}
pub fn glCompressedTexSubImage1D(target: GLenum, level: GLint, xoffset: GLint, width: GLsizei, format: GLenum, imageSize: GLsizei, data: ?*const anyopaque) void{
   return function_map.current.?.glCompressedTexSubImage1D(target, level, xoffset, width, format, imageSize, data);
}
pub fn glGetCompressedTexImage(target: GLenum, level: GLint, img: ?*const anyopaque) void{
   return function_map.current.?.glGetCompressedTexImage(target, level, img);
}
pub fn glClientActiveTexture(texture: GLenum) void{
   return function_map.current.?.glClientActiveTexture(texture);
}
pub fn glMultiTexCoord1d(target: GLenum, s: GLdouble) void{
   return function_map.current.?.glMultiTexCoord1d(target, s);
}
pub fn glMultiTexCoord1dv(target: GLenum, v: GLdouble) void{
   return function_map.current.?.glMultiTexCoord1dv(target, v);
}
pub fn glMultiTexCoord1f(target: GLenum, s: GLfloat) void{
   return function_map.current.?.glMultiTexCoord1f(target, s);
}
pub fn glMultiTexCoord1fv(target: GLenum, v: GLfloat) void{
   return function_map.current.?.glMultiTexCoord1fv(target, v);
}
pub fn glMultiTexCoord1i(target: GLenum, s: GLint) void{
   return function_map.current.?.glMultiTexCoord1i(target, s);
}
pub fn glMultiTexCoord1iv(target: GLenum, v: GLint) void{
   return function_map.current.?.glMultiTexCoord1iv(target, v);
}
pub fn glMultiTexCoord1s(target: GLenum, s: GLshort) void{
   return function_map.current.?.glMultiTexCoord1s(target, s);
}
pub fn glMultiTexCoord1sv(target: GLenum, v: GLshort) void{
   return function_map.current.?.glMultiTexCoord1sv(target, v);
}
pub fn glMultiTexCoord2d(target: GLenum, s: GLdouble, t: GLdouble) void{
   return function_map.current.?.glMultiTexCoord2d(target, s, t);
}
pub fn glMultiTexCoord2dv(target: GLenum, v: GLdouble) void{
   return function_map.current.?.glMultiTexCoord2dv(target, v);
}
pub fn glMultiTexCoord2f(target: GLenum, s: GLfloat, t: GLfloat) void{
   return function_map.current.?.glMultiTexCoord2f(target, s, t);
}
pub fn glMultiTexCoord2fv(target: GLenum, v: GLfloat) void{
   return function_map.current.?.glMultiTexCoord2fv(target, v);
}
pub fn glMultiTexCoord2i(target: GLenum, s: GLint, t: GLint) void{
   return function_map.current.?.glMultiTexCoord2i(target, s, t);
}
pub fn glMultiTexCoord2iv(target: GLenum, v: GLint) void{
   return function_map.current.?.glMultiTexCoord2iv(target, v);
}
pub fn glMultiTexCoord2s(target: GLenum, s: GLshort, t: GLshort) void{
   return function_map.current.?.glMultiTexCoord2s(target, s, t);
}
pub fn glMultiTexCoord2sv(target: GLenum, v: GLshort) void{
   return function_map.current.?.glMultiTexCoord2sv(target, v);
}
pub fn glMultiTexCoord3d(target: GLenum, s: GLdouble, t: GLdouble, r: GLdouble) void{
   return function_map.current.?.glMultiTexCoord3d(target, s, t, r);
}
pub fn glMultiTexCoord3dv(target: GLenum, v: GLdouble) void{
   return function_map.current.?.glMultiTexCoord3dv(target, v);
}
pub fn glMultiTexCoord3f(target: GLenum, s: GLfloat, t: GLfloat, r: GLfloat) void{
   return function_map.current.?.glMultiTexCoord3f(target, s, t, r);
}
pub fn glMultiTexCoord3fv(target: GLenum, v: GLfloat) void{
   return function_map.current.?.glMultiTexCoord3fv(target, v);
}
pub fn glMultiTexCoord3i(target: GLenum, s: GLint, t: GLint, r: GLint) void{
   return function_map.current.?.glMultiTexCoord3i(target, s, t, r);
}
pub fn glMultiTexCoord3iv(target: GLenum, v: GLint) void{
   return function_map.current.?.glMultiTexCoord3iv(target, v);
}
pub fn glMultiTexCoord3s(target: GLenum, s: GLshort, t: GLshort, r: GLshort) void{
   return function_map.current.?.glMultiTexCoord3s(target, s, t, r);
}
pub fn glMultiTexCoord3sv(target: GLenum, v: GLshort) void{
   return function_map.current.?.glMultiTexCoord3sv(target, v);
}
pub fn glMultiTexCoord4d(target: GLenum, s: GLdouble, t: GLdouble, r: GLdouble, q: GLdouble) void{
   return function_map.current.?.glMultiTexCoord4d(target, s, t, r, q);
}
pub fn glMultiTexCoord4dv(target: GLenum, v: GLdouble) void{
   return function_map.current.?.glMultiTexCoord4dv(target, v);
}
pub fn glMultiTexCoord4f(target: GLenum, s: GLfloat, t: GLfloat, r: GLfloat, q: GLfloat) void{
   return function_map.current.?.glMultiTexCoord4f(target, s, t, r, q);
}
pub fn glMultiTexCoord4fv(target: GLenum, v: GLfloat) void{
   return function_map.current.?.glMultiTexCoord4fv(target, v);
}
pub fn glMultiTexCoord4i(target: GLenum, s: GLint, t: GLint, r: GLint, q: GLint) void{
   return function_map.current.?.glMultiTexCoord4i(target, s, t, r, q);
}
pub fn glMultiTexCoord4iv(target: GLenum, v: GLint) void{
   return function_map.current.?.glMultiTexCoord4iv(target, v);
}
pub fn glMultiTexCoord4s(target: GLenum, s: GLshort, t: GLshort, r: GLshort, q: GLshort) void{
   return function_map.current.?.glMultiTexCoord4s(target, s, t, r, q);
}
pub fn glMultiTexCoord4sv(target: GLenum, v: GLshort) void{
   return function_map.current.?.glMultiTexCoord4sv(target, v);
}
pub fn glLoadTransposeMatrixf(m: GLfloat) void{
   return function_map.current.?.glLoadTransposeMatrixf(m);
}
pub fn glLoadTransposeMatrixd(m: GLdouble) void{
   return function_map.current.?.glLoadTransposeMatrixd(m);
}
pub fn glMultTransposeMatrixf(m: GLfloat) void{
   return function_map.current.?.glMultTransposeMatrixf(m);
}
pub fn glMultTransposeMatrixd(m: GLdouble) void{
   return function_map.current.?.glMultTransposeMatrixd(m);
}
pub const GL_BLEND_DST_RGB: comptime_int = 0x80C8;
pub const GL_BLEND_SRC_RGB: comptime_int = 0x80C9;
pub const GL_BLEND_DST_ALPHA: comptime_int = 0x80CA;
pub const GL_BLEND_SRC_ALPHA: comptime_int = 0x80CB;
pub const GL_POINT_FADE_THRESHOLD_SIZE: comptime_int = 0x8128;
pub const GL_DEPTH_COMPONENT16: comptime_int = 0x81A5;
pub const GL_DEPTH_COMPONENT24: comptime_int = 0x81A6;
pub const GL_DEPTH_COMPONENT32: comptime_int = 0x81A7;
pub const GL_MIRRORED_REPEAT: comptime_int = 0x8370;
pub const GL_MAX_TEXTURE_LOD_BIAS: comptime_int = 0x84FD;
pub const GL_TEXTURE_LOD_BIAS: comptime_int = 0x8501;
pub const GL_INCR_WRAP: comptime_int = 0x8507;
pub const GL_DECR_WRAP: comptime_int = 0x8508;
pub const GL_TEXTURE_DEPTH_SIZE: comptime_int = 0x884A;
pub const GL_TEXTURE_COMPARE_MODE: comptime_int = 0x884C;
pub const GL_TEXTURE_COMPARE_FUNC: comptime_int = 0x884D;
pub const GL_POINT_SIZE_MIN: comptime_int = 0x8126;
pub const GL_POINT_SIZE_MAX: comptime_int = 0x8127;
pub const GL_POINT_DISTANCE_ATTENUATION: comptime_int = 0x8129;
pub const GL_GENERATE_MIPMAP: comptime_int = 0x8191;
pub const GL_GENERATE_MIPMAP_HINT: comptime_int = 0x8192;
pub const GL_FOG_COORDINATE_SOURCE: comptime_int = 0x8450;
pub const GL_FOG_COORDINATE: comptime_int = 0x8451;
pub const GL_FRAGMENT_DEPTH: comptime_int = 0x8452;
pub const GL_CURRENT_FOG_COORDINATE: comptime_int = 0x8453;
pub const GL_FOG_COORDINATE_ARRAY_TYPE: comptime_int = 0x8454;
pub const GL_FOG_COORDINATE_ARRAY_STRIDE: comptime_int = 0x8455;
pub const GL_FOG_COORDINATE_ARRAY_POINTER: comptime_int = 0x8456;
pub const GL_FOG_COORDINATE_ARRAY: comptime_int = 0x8457;
pub const GL_COLOR_SUM: comptime_int = 0x8458;
pub const GL_CURRENT_SECONDARY_COLOR: comptime_int = 0x8459;
pub const GL_SECONDARY_COLOR_ARRAY_SIZE: comptime_int = 0x845A;
pub const GL_SECONDARY_COLOR_ARRAY_TYPE: comptime_int = 0x845B;
pub const GL_SECONDARY_COLOR_ARRAY_STRIDE: comptime_int = 0x845C;
pub const GL_SECONDARY_COLOR_ARRAY_POINTER: comptime_int = 0x845D;
pub const GL_SECONDARY_COLOR_ARRAY: comptime_int = 0x845E;
pub const GL_TEXTURE_FILTER_CONTROL: comptime_int = 0x8500;
pub const GL_DEPTH_TEXTURE_MODE: comptime_int = 0x884B;
pub const GL_COMPARE_R_TO_TEXTURE: comptime_int = 0x884E;
pub fn glBlendFuncSeparate(sfactorRGB: GLenum, dfactorRGB: GLenum, sfactorAlpha: GLenum, dfactorAlpha: GLenum) void{
   return function_map.current.?.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
}
pub fn glMultiDrawArrays(mode: GLenum, first: GLint, count: GLsizei, drawcount: GLsizei) void{
   return function_map.current.?.glMultiDrawArrays(mode, first, count, drawcount);
}
pub fn glMultiDrawElements(mode: GLenum, count: GLsizei, type: GLenum, indices: ?*const anyopaque, drawcount: GLsizei) void{
   return function_map.current.?.glMultiDrawElements(mode, count, type, indices, drawcount);
}
pub fn glPointParameterf(pname: GLenum, param: GLfloat) void{
   return function_map.current.?.glPointParameterf(pname, param);
}
pub fn glPointParameterfv(pname: GLenum, params: GLfloat) void{
   return function_map.current.?.glPointParameterfv(pname, params);
}
pub fn glPointParameteri(pname: GLenum, param: GLint) void{
   return function_map.current.?.glPointParameteri(pname, param);
}
pub fn glPointParameteriv(pname: GLenum, params: GLint) void{
   return function_map.current.?.glPointParameteriv(pname, params);
}
pub fn glFogCoordf(coord: GLfloat) void{
   return function_map.current.?.glFogCoordf(coord);
}
pub fn glFogCoordfv(coord: GLfloat) void{
   return function_map.current.?.glFogCoordfv(coord);
}
pub fn glFogCoordd(coord: GLdouble) void{
   return function_map.current.?.glFogCoordd(coord);
}
pub fn glFogCoorddv(coord: GLdouble) void{
   return function_map.current.?.glFogCoorddv(coord);
}
pub fn glFogCoordPointer(type: GLenum, stride: GLsizei, pointer: ?*const anyopaque) void{
   return function_map.current.?.glFogCoordPointer(type, stride, pointer);
}
pub fn glSecondaryColor3b(red: GLbyte, green: GLbyte, blue: GLbyte) void{
   return function_map.current.?.glSecondaryColor3b(red, green, blue);
}
pub fn glSecondaryColor3bv(v: GLbyte) void{
   return function_map.current.?.glSecondaryColor3bv(v);
}
pub fn glSecondaryColor3d(red: GLdouble, green: GLdouble, blue: GLdouble) void{
   return function_map.current.?.glSecondaryColor3d(red, green, blue);
}
pub fn glSecondaryColor3dv(v: GLdouble) void{
   return function_map.current.?.glSecondaryColor3dv(v);
}
pub fn glSecondaryColor3f(red: GLfloat, green: GLfloat, blue: GLfloat) void{
   return function_map.current.?.glSecondaryColor3f(red, green, blue);
}
pub fn glSecondaryColor3fv(v: GLfloat) void{
   return function_map.current.?.glSecondaryColor3fv(v);
}
pub fn glSecondaryColor3i(red: GLint, green: GLint, blue: GLint) void{
   return function_map.current.?.glSecondaryColor3i(red, green, blue);
}
pub fn glSecondaryColor3iv(v: GLint) void{
   return function_map.current.?.glSecondaryColor3iv(v);
}
pub fn glSecondaryColor3s(red: GLshort, green: GLshort, blue: GLshort) void{
   return function_map.current.?.glSecondaryColor3s(red, green, blue);
}
pub fn glSecondaryColor3sv(v: GLshort) void{
   return function_map.current.?.glSecondaryColor3sv(v);
}
pub fn glSecondaryColor3ub(red: GLubyte, green: GLubyte, blue: GLubyte) void{
   return function_map.current.?.glSecondaryColor3ub(red, green, blue);
}
pub fn glSecondaryColor3ubv(v: GLubyte) void{
   return function_map.current.?.glSecondaryColor3ubv(v);
}
pub fn glSecondaryColor3ui(red: GLuint, green: GLuint, blue: GLuint) void{
   return function_map.current.?.glSecondaryColor3ui(red, green, blue);
}
pub fn glSecondaryColor3uiv(v: GLuint) void{
   return function_map.current.?.glSecondaryColor3uiv(v);
}
pub fn glSecondaryColor3us(red: GLushort, green: GLushort, blue: GLushort) void{
   return function_map.current.?.glSecondaryColor3us(red, green, blue);
}
pub fn glSecondaryColor3usv(v: GLushort) void{
   return function_map.current.?.glSecondaryColor3usv(v);
}
pub fn glSecondaryColorPointer(size: GLint, type: GLenum, stride: GLsizei, pointer: ?*const anyopaque) void{
   return function_map.current.?.glSecondaryColorPointer(size, type, stride, pointer);
}
pub fn glWindowPos2d(x: GLdouble, y: GLdouble) void{
   return function_map.current.?.glWindowPos2d(x, y);
}
pub fn glWindowPos2dv(v: GLdouble) void{
   return function_map.current.?.glWindowPos2dv(v);
}
pub fn glWindowPos2f(x: GLfloat, y: GLfloat) void{
   return function_map.current.?.glWindowPos2f(x, y);
}
pub fn glWindowPos2fv(v: GLfloat) void{
   return function_map.current.?.glWindowPos2fv(v);
}
pub fn glWindowPos2i(x: GLint, y: GLint) void{
   return function_map.current.?.glWindowPos2i(x, y);
}
pub fn glWindowPos2iv(v: GLint) void{
   return function_map.current.?.glWindowPos2iv(v);
}
pub fn glWindowPos2s(x: GLshort, y: GLshort) void{
   return function_map.current.?.glWindowPos2s(x, y);
}
pub fn glWindowPos2sv(v: GLshort) void{
   return function_map.current.?.glWindowPos2sv(v);
}
pub fn glWindowPos3d(x: GLdouble, y: GLdouble, z: GLdouble) void{
   return function_map.current.?.glWindowPos3d(x, y, z);
}
pub fn glWindowPos3dv(v: GLdouble) void{
   return function_map.current.?.glWindowPos3dv(v);
}
pub fn glWindowPos3f(x: GLfloat, y: GLfloat, z: GLfloat) void{
   return function_map.current.?.glWindowPos3f(x, y, z);
}
pub fn glWindowPos3fv(v: GLfloat) void{
   return function_map.current.?.glWindowPos3fv(v);
}
pub fn glWindowPos3i(x: GLint, y: GLint, z: GLint) void{
   return function_map.current.?.glWindowPos3i(x, y, z);
}
pub fn glWindowPos3iv(v: GLint) void{
   return function_map.current.?.glWindowPos3iv(v);
}
pub fn glWindowPos3s(x: GLshort, y: GLshort, z: GLshort) void{
   return function_map.current.?.glWindowPos3s(x, y, z);
}
pub fn glWindowPos3sv(v: GLshort) void{
   return function_map.current.?.glWindowPos3sv(v);
}
pub const GL_BLEND_COLOR: comptime_int = 0x8005;
pub const GL_BLEND_EQUATION: comptime_int = 0x8009;
pub const GL_CONSTANT_COLOR: comptime_int = 0x8001;
pub const GL_ONE_MINUS_CONSTANT_COLOR: comptime_int = 0x8002;
pub const GL_CONSTANT_ALPHA: comptime_int = 0x8003;
pub const GL_ONE_MINUS_CONSTANT_ALPHA: comptime_int = 0x8004;
pub const GL_FUNC_ADD: comptime_int = 0x8006;
pub const GL_FUNC_REVERSE_SUBTRACT: comptime_int = 0x800B;
pub const GL_FUNC_SUBTRACT: comptime_int = 0x800A;
pub const GL_MIN: comptime_int = 0x8007;
pub const GL_MAX: comptime_int = 0x8008;
pub fn glBlendColor(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void{
   return function_map.current.?.glBlendColor(red, green, blue, alpha);
}
pub fn glBlendEquation(mode: GLenum) void{
   return function_map.current.?.glBlendEquation(mode);
}
pub const GL_BUFFER_SIZE: comptime_int = 0x8764;
pub const GL_BUFFER_USAGE: comptime_int = 0x8765;
pub const GL_QUERY_COUNTER_BITS: comptime_int = 0x8864;
pub const GL_CURRENT_QUERY: comptime_int = 0x8865;
pub const GL_QUERY_RESULT: comptime_int = 0x8866;
pub const GL_QUERY_RESULT_AVAILABLE: comptime_int = 0x8867;
pub const GL_ARRAY_BUFFER: comptime_int = 0x8892;
pub const GL_ELEMENT_ARRAY_BUFFER: comptime_int = 0x8893;
pub const GL_ARRAY_BUFFER_BINDING: comptime_int = 0x8894;
pub const GL_ELEMENT_ARRAY_BUFFER_BINDING: comptime_int = 0x8895;
pub const GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING: comptime_int = 0x889F;
pub const GL_READ_ONLY: comptime_int = 0x88B8;
pub const GL_WRITE_ONLY: comptime_int = 0x88B9;
pub const GL_READ_WRITE: comptime_int = 0x88BA;
pub const GL_BUFFER_ACCESS: comptime_int = 0x88BB;
pub const GL_BUFFER_MAPPED: comptime_int = 0x88BC;
pub const GL_BUFFER_MAP_POINTER: comptime_int = 0x88BD;
pub const GL_STREAM_DRAW: comptime_int = 0x88E0;
pub const GL_STREAM_READ: comptime_int = 0x88E1;
pub const GL_STREAM_COPY: comptime_int = 0x88E2;
pub const GL_STATIC_DRAW: comptime_int = 0x88E4;
pub const GL_STATIC_READ: comptime_int = 0x88E5;
pub const GL_STATIC_COPY: comptime_int = 0x88E6;
pub const GL_DYNAMIC_DRAW: comptime_int = 0x88E8;
pub const GL_DYNAMIC_READ: comptime_int = 0x88E9;
pub const GL_DYNAMIC_COPY: comptime_int = 0x88EA;
pub const GL_SAMPLES_PASSED: comptime_int = 0x8914;
pub const GL_SRC1_ALPHA: comptime_int = 0x8589;
pub const GL_VERTEX_ARRAY_BUFFER_BINDING: comptime_int = 0x8896;
pub const GL_NORMAL_ARRAY_BUFFER_BINDING: comptime_int = 0x8897;
pub const GL_COLOR_ARRAY_BUFFER_BINDING: comptime_int = 0x8898;
pub const GL_INDEX_ARRAY_BUFFER_BINDING: comptime_int = 0x8899;
pub const GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING: comptime_int = 0x889A;
pub const GL_EDGE_FLAG_ARRAY_BUFFER_BINDING: comptime_int = 0x889B;
pub const GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING: comptime_int = 0x889C;
pub const GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING: comptime_int = 0x889D;
pub const GL_WEIGHT_ARRAY_BUFFER_BINDING: comptime_int = 0x889E;
pub const GL_FOG_COORD_SRC: comptime_int = 0x8450;
pub const GL_FOG_COORD: comptime_int = 0x8451;
pub const GL_CURRENT_FOG_COORD: comptime_int = 0x8453;
pub const GL_FOG_COORD_ARRAY_TYPE: comptime_int = 0x8454;
pub const GL_FOG_COORD_ARRAY_STRIDE: comptime_int = 0x8455;
pub const GL_FOG_COORD_ARRAY_POINTER: comptime_int = 0x8456;
pub const GL_FOG_COORD_ARRAY: comptime_int = 0x8457;
pub const GL_FOG_COORD_ARRAY_BUFFER_BINDING: comptime_int = 0x889D;
pub const GL_SRC0_RGB: comptime_int = 0x8580;
pub const GL_SRC1_RGB: comptime_int = 0x8581;
pub const GL_SRC2_RGB: comptime_int = 0x8582;
pub const GL_SRC0_ALPHA: comptime_int = 0x8588;
pub const GL_SRC2_ALPHA: comptime_int = 0x858A;
pub fn glGenQueries(n: GLsizei, ids: GLuint) void{
   return function_map.current.?.glGenQueries(n, ids);
}
pub fn glDeleteQueries(n: GLsizei, ids: GLuint) void{
   return function_map.current.?.glDeleteQueries(n, ids);
}
pub fn glIsQuery(id: GLuint) GLboolean{
   return function_map.current.?.glIsQuery(id);
}
pub fn glBeginQuery(target: GLenum, id: GLuint) void{
   return function_map.current.?.glBeginQuery(target, id);
}
pub fn glEndQuery(target: GLenum) void{
   return function_map.current.?.glEndQuery(target);
}
pub fn glGetQueryiv(target: GLenum, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetQueryiv(target, pname, params);
}
pub fn glGetQueryObjectiv(id: GLuint, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetQueryObjectiv(id, pname, params);
}
pub fn glGetQueryObjectuiv(id: GLuint, pname: GLenum, params: GLuint) void{
   return function_map.current.?.glGetQueryObjectuiv(id, pname, params);
}
pub fn glBindBuffer(target: GLenum, buffer: GLuint) void{
   return function_map.current.?.glBindBuffer(target, buffer);
}
pub fn glDeleteBuffers(n: GLsizei, buffers: GLuint) void{
   return function_map.current.?.glDeleteBuffers(n, buffers);
}
pub fn glGenBuffers(n: GLsizei, buffers: GLuint) void{
   return function_map.current.?.glGenBuffers(n, buffers);
}
pub fn glIsBuffer(buffer: GLuint) GLboolean{
   return function_map.current.?.glIsBuffer(buffer);
}
pub fn glBufferData(target: GLenum, size: GLsizeiptr, data: ?*const anyopaque, usage: GLenum) void{
   return function_map.current.?.glBufferData(target, size, data, usage);
}
pub fn glBufferSubData(target: GLenum, offset: GLintptr, size: GLsizeiptr, data: ?*const anyopaque) void{
   return function_map.current.?.glBufferSubData(target, offset, size, data);
}
pub fn glGetBufferSubData(target: GLenum, offset: GLintptr, size: GLsizeiptr, data: ?*const anyopaque) void{
   return function_map.current.?.glGetBufferSubData(target, offset, size, data);
}
pub fn glMapBuffer(target: GLenum, access: GLenum) void{
   return function_map.current.?.glMapBuffer(target, access);
}
pub fn glUnmapBuffer(target: GLenum) GLboolean{
   return function_map.current.?.glUnmapBuffer(target);
}
pub fn glGetBufferParameteriv(target: GLenum, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetBufferParameteriv(target, pname, params);
}
pub fn glGetBufferPointerv(target: GLenum, pname: GLenum, params: ?*const anyopaque) void{
   return function_map.current.?.glGetBufferPointerv(target, pname, params);
}
pub const GL_BLEND_EQUATION_RGB: comptime_int = 0x8009;
pub const GL_VERTEX_ATTRIB_ARRAY_ENABLED: comptime_int = 0x8622;
pub const GL_VERTEX_ATTRIB_ARRAY_SIZE: comptime_int = 0x8623;
pub const GL_VERTEX_ATTRIB_ARRAY_STRIDE: comptime_int = 0x8624;
pub const GL_VERTEX_ATTRIB_ARRAY_TYPE: comptime_int = 0x8625;
pub const GL_CURRENT_VERTEX_ATTRIB: comptime_int = 0x8626;
pub const GL_VERTEX_PROGRAM_POINT_SIZE: comptime_int = 0x8642;
pub const GL_VERTEX_ATTRIB_ARRAY_POINTER: comptime_int = 0x8645;
pub const GL_STENCIL_BACK_FUNC: comptime_int = 0x8800;
pub const GL_STENCIL_BACK_FAIL: comptime_int = 0x8801;
pub const GL_STENCIL_BACK_PASS_DEPTH_FAIL: comptime_int = 0x8802;
pub const GL_STENCIL_BACK_PASS_DEPTH_PASS: comptime_int = 0x8803;
pub const GL_MAX_DRAW_BUFFERS: comptime_int = 0x8824;
pub const GL_DRAW_BUFFER0: comptime_int = 0x8825;
pub const GL_DRAW_BUFFER1: comptime_int = 0x8826;
pub const GL_DRAW_BUFFER2: comptime_int = 0x8827;
pub const GL_DRAW_BUFFER3: comptime_int = 0x8828;
pub const GL_DRAW_BUFFER4: comptime_int = 0x8829;
pub const GL_DRAW_BUFFER5: comptime_int = 0x882A;
pub const GL_DRAW_BUFFER6: comptime_int = 0x882B;
pub const GL_DRAW_BUFFER7: comptime_int = 0x882C;
pub const GL_DRAW_BUFFER8: comptime_int = 0x882D;
pub const GL_DRAW_BUFFER9: comptime_int = 0x882E;
pub const GL_DRAW_BUFFER10: comptime_int = 0x882F;
pub const GL_DRAW_BUFFER11: comptime_int = 0x8830;
pub const GL_DRAW_BUFFER12: comptime_int = 0x8831;
pub const GL_DRAW_BUFFER13: comptime_int = 0x8832;
pub const GL_DRAW_BUFFER14: comptime_int = 0x8833;
pub const GL_DRAW_BUFFER15: comptime_int = 0x8834;
pub const GL_BLEND_EQUATION_ALPHA: comptime_int = 0x883D;
pub const GL_MAX_VERTEX_ATTRIBS: comptime_int = 0x8869;
pub const GL_VERTEX_ATTRIB_ARRAY_NORMALIZED: comptime_int = 0x886A;
pub const GL_MAX_TEXTURE_IMAGE_UNITS: comptime_int = 0x8872;
pub const GL_FRAGMENT_SHADER: comptime_int = 0x8B30;
pub const GL_VERTEX_SHADER: comptime_int = 0x8B31;
pub const GL_MAX_FRAGMENT_UNIFORM_COMPONENTS: comptime_int = 0x8B49;
pub const GL_MAX_VERTEX_UNIFORM_COMPONENTS: comptime_int = 0x8B4A;
pub const GL_MAX_VARYING_FLOATS: comptime_int = 0x8B4B;
pub const GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS: comptime_int = 0x8B4C;
pub const GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS: comptime_int = 0x8B4D;
pub const GL_SHADER_TYPE: comptime_int = 0x8B4F;
pub const GL_FLOAT_VEC2: comptime_int = 0x8B50;
pub const GL_FLOAT_VEC3: comptime_int = 0x8B51;
pub const GL_FLOAT_VEC4: comptime_int = 0x8B52;
pub const GL_INT_VEC2: comptime_int = 0x8B53;
pub const GL_INT_VEC3: comptime_int = 0x8B54;
pub const GL_INT_VEC4: comptime_int = 0x8B55;
pub const GL_BOOL: comptime_int = 0x8B56;
pub const GL_BOOL_VEC2: comptime_int = 0x8B57;
pub const GL_BOOL_VEC3: comptime_int = 0x8B58;
pub const GL_BOOL_VEC4: comptime_int = 0x8B59;
pub const GL_FLOAT_MAT2: comptime_int = 0x8B5A;
pub const GL_FLOAT_MAT3: comptime_int = 0x8B5B;
pub const GL_FLOAT_MAT4: comptime_int = 0x8B5C;
pub const GL_SAMPLER_1D: comptime_int = 0x8B5D;
pub const GL_SAMPLER_2D: comptime_int = 0x8B5E;
pub const GL_SAMPLER_3D: comptime_int = 0x8B5F;
pub const GL_SAMPLER_CUBE: comptime_int = 0x8B60;
pub const GL_SAMPLER_1D_SHADOW: comptime_int = 0x8B61;
pub const GL_SAMPLER_2D_SHADOW: comptime_int = 0x8B62;
pub const GL_DELETE_STATUS: comptime_int = 0x8B80;
pub const GL_COMPILE_STATUS: comptime_int = 0x8B81;
pub const GL_LINK_STATUS: comptime_int = 0x8B82;
pub const GL_VALIDATE_STATUS: comptime_int = 0x8B83;
pub const GL_INFO_LOG_LENGTH: comptime_int = 0x8B84;
pub const GL_ATTACHED_SHADERS: comptime_int = 0x8B85;
pub const GL_ACTIVE_UNIFORMS: comptime_int = 0x8B86;
pub const GL_ACTIVE_UNIFORM_MAX_LENGTH: comptime_int = 0x8B87;
pub const GL_SHADER_SOURCE_LENGTH: comptime_int = 0x8B88;
pub const GL_ACTIVE_ATTRIBUTES: comptime_int = 0x8B89;
pub const GL_ACTIVE_ATTRIBUTE_MAX_LENGTH: comptime_int = 0x8B8A;
pub const GL_FRAGMENT_SHADER_DERIVATIVE_HINT: comptime_int = 0x8B8B;
pub const GL_SHADING_LANGUAGE_VERSION: comptime_int = 0x8B8C;
pub const GL_CURRENT_PROGRAM: comptime_int = 0x8B8D;
pub const GL_POINT_SPRITE_COORD_ORIGIN: comptime_int = 0x8CA0;
pub const GL_LOWER_LEFT: comptime_int = 0x8CA1;
pub const GL_UPPER_LEFT: comptime_int = 0x8CA2;
pub const GL_STENCIL_BACK_REF: comptime_int = 0x8CA3;
pub const GL_STENCIL_BACK_VALUE_MASK: comptime_int = 0x8CA4;
pub const GL_STENCIL_BACK_WRITEMASK: comptime_int = 0x8CA5;
pub const GL_VERTEX_PROGRAM_TWO_SIDE: comptime_int = 0x8643;
pub const GL_POINT_SPRITE: comptime_int = 0x8861;
pub const GL_COORD_REPLACE: comptime_int = 0x8862;
pub const GL_MAX_TEXTURE_COORDS: comptime_int = 0x8871;
pub fn glBlendEquationSeparate(modeRGB: GLenum, modeAlpha: GLenum) void{
   return function_map.current.?.glBlendEquationSeparate(modeRGB, modeAlpha);
}
pub fn glDrawBuffers(n: GLsizei, bufs: GLenum) void{
   return function_map.current.?.glDrawBuffers(n, bufs);
}
pub fn glStencilOpSeparate(face: GLenum, sfail: GLenum, dpfail: GLenum, dppass: GLenum) void{
   return function_map.current.?.glStencilOpSeparate(face, sfail, dpfail, dppass);
}
pub fn glStencilFuncSeparate(face: GLenum, func: GLenum, ref: GLint, mask: GLuint) void{
   return function_map.current.?.glStencilFuncSeparate(face, func, ref, mask);
}
pub fn glStencilMaskSeparate(face: GLenum, mask: GLuint) void{
   return function_map.current.?.glStencilMaskSeparate(face, mask);
}
pub fn glAttachShader(program: GLuint, shader: GLuint) void{
   return function_map.current.?.glAttachShader(program, shader);
}
pub fn glBindAttribLocation(program: GLuint, index: GLuint, name: GLchar) void{
   return function_map.current.?.glBindAttribLocation(program, index, name);
}
pub fn glCompileShader(shader: GLuint) void{
   return function_map.current.?.glCompileShader(shader);
}
pub fn glCreateProgram() GLuint{
   return function_map.current.?.glCreateProgram();
}
pub fn glCreateShader(type: GLenum) GLuint{
   return function_map.current.?.glCreateShader(type);
}
pub fn glDeleteProgram(program: GLuint) void{
   return function_map.current.?.glDeleteProgram(program);
}
pub fn glDeleteShader(shader: GLuint) void{
   return function_map.current.?.glDeleteShader(shader);
}
pub fn glDetachShader(program: GLuint, shader: GLuint) void{
   return function_map.current.?.glDetachShader(program, shader);
}
pub fn glDisableVertexAttribArray(index: GLuint) void{
   return function_map.current.?.glDisableVertexAttribArray(index);
}
pub fn glEnableVertexAttribArray(index: GLuint) void{
   return function_map.current.?.glEnableVertexAttribArray(index);
}
pub fn glGetActiveAttrib(program: GLuint, index: GLuint, bufSize: GLsizei, length: GLsizei, size: GLint, type: GLenum, name: GLchar) void{
   return function_map.current.?.glGetActiveAttrib(program, index, bufSize, length, size, type, name);
}
pub fn glGetActiveUniform(program: GLuint, index: GLuint, bufSize: GLsizei, length: GLsizei, size: GLint, type: GLenum, name: GLchar) void{
   return function_map.current.?.glGetActiveUniform(program, index, bufSize, length, size, type, name);
}
pub fn glGetAttachedShaders(program: GLuint, maxCount: GLsizei, count: GLsizei, shaders: GLuint) void{
   return function_map.current.?.glGetAttachedShaders(program, maxCount, count, shaders);
}
pub fn glGetAttribLocation(program: GLuint, name: GLchar) GLint{
   return function_map.current.?.glGetAttribLocation(program, name);
}
pub fn glGetProgramiv(program: GLuint, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetProgramiv(program, pname, params);
}
pub fn glGetProgramInfoLog(program: GLuint, bufSize: GLsizei, length: GLsizei, infoLog: GLchar) void{
   return function_map.current.?.glGetProgramInfoLog(program, bufSize, length, infoLog);
}
pub fn glGetShaderiv(shader: GLuint, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetShaderiv(shader, pname, params);
}
pub fn glGetShaderInfoLog(shader: GLuint, bufSize: GLsizei, length: GLsizei, infoLog: GLchar) void{
   return function_map.current.?.glGetShaderInfoLog(shader, bufSize, length, infoLog);
}
pub fn glGetShaderSource(shader: GLuint, bufSize: GLsizei, length: GLsizei, source: GLchar) void{
   return function_map.current.?.glGetShaderSource(shader, bufSize, length, source);
}
pub fn glGetUniformLocation(program: GLuint, name: GLchar) GLint{
   return function_map.current.?.glGetUniformLocation(program, name);
}
pub fn glGetUniformfv(program: GLuint, location: GLint, params: GLfloat) void{
   return function_map.current.?.glGetUniformfv(program, location, params);
}
pub fn glGetUniformiv(program: GLuint, location: GLint, params: GLint) void{
   return function_map.current.?.glGetUniformiv(program, location, params);
}
pub fn glGetVertexAttribdv(index: GLuint, pname: GLenum, params: GLdouble) void{
   return function_map.current.?.glGetVertexAttribdv(index, pname, params);
}
pub fn glGetVertexAttribfv(index: GLuint, pname: GLenum, params: GLfloat) void{
   return function_map.current.?.glGetVertexAttribfv(index, pname, params);
}
pub fn glGetVertexAttribiv(index: GLuint, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetVertexAttribiv(index, pname, params);
}
pub fn glGetVertexAttribPointerv(index: GLuint, pname: GLenum, pointer: ?*const anyopaque) void{
   return function_map.current.?.glGetVertexAttribPointerv(index, pname, pointer);
}
pub fn glIsProgram(program: GLuint) GLboolean{
   return function_map.current.?.glIsProgram(program);
}
pub fn glIsShader(shader: GLuint) GLboolean{
   return function_map.current.?.glIsShader(shader);
}
pub fn glLinkProgram(program: GLuint) void{
   return function_map.current.?.glLinkProgram(program);
}
pub fn glShaderSource(shader: GLuint, count: GLsizei, string: GLchar, length: GLint) void{
   return function_map.current.?.glShaderSource(shader, count, string, length);
}
pub fn glUseProgram(program: GLuint) void{
   return function_map.current.?.glUseProgram(program);
}
pub fn glUniform1f(location: GLint, v0: GLfloat) void{
   return function_map.current.?.glUniform1f(location, v0);
}
pub fn glUniform2f(location: GLint, v0: GLfloat, v1: GLfloat) void{
   return function_map.current.?.glUniform2f(location, v0, v1);
}
pub fn glUniform3f(location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat) void{
   return function_map.current.?.glUniform3f(location, v0, v1, v2);
}
pub fn glUniform4f(location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat) void{
   return function_map.current.?.glUniform4f(location, v0, v1, v2, v3);
}
pub fn glUniform1i(location: GLint, v0: GLint) void{
   return function_map.current.?.glUniform1i(location, v0);
}
pub fn glUniform2i(location: GLint, v0: GLint, v1: GLint) void{
   return function_map.current.?.glUniform2i(location, v0, v1);
}
pub fn glUniform3i(location: GLint, v0: GLint, v1: GLint, v2: GLint) void{
   return function_map.current.?.glUniform3i(location, v0, v1, v2);
}
pub fn glUniform4i(location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint) void{
   return function_map.current.?.glUniform4i(location, v0, v1, v2, v3);
}
pub fn glUniform1fv(location: GLint, count: GLsizei, value: GLfloat) void{
   return function_map.current.?.glUniform1fv(location, count, value);
}
pub fn glUniform2fv(location: GLint, count: GLsizei, value: GLfloat) void{
   return function_map.current.?.glUniform2fv(location, count, value);
}
pub fn glUniform3fv(location: GLint, count: GLsizei, value: GLfloat) void{
   return function_map.current.?.glUniform3fv(location, count, value);
}
pub fn glUniform4fv(location: GLint, count: GLsizei, value: GLfloat) void{
   return function_map.current.?.glUniform4fv(location, count, value);
}
pub fn glUniform1iv(location: GLint, count: GLsizei, value: GLint) void{
   return function_map.current.?.glUniform1iv(location, count, value);
}
pub fn glUniform2iv(location: GLint, count: GLsizei, value: GLint) void{
   return function_map.current.?.glUniform2iv(location, count, value);
}
pub fn glUniform3iv(location: GLint, count: GLsizei, value: GLint) void{
   return function_map.current.?.glUniform3iv(location, count, value);
}
pub fn glUniform4iv(location: GLint, count: GLsizei, value: GLint) void{
   return function_map.current.?.glUniform4iv(location, count, value);
}
pub fn glUniformMatrix2fv(location: GLint, count: GLsizei, transpose: GLboolean, value: GLfloat) void{
   return function_map.current.?.glUniformMatrix2fv(location, count, transpose, value);
}
pub fn glUniformMatrix3fv(location: GLint, count: GLsizei, transpose: GLboolean, value: GLfloat) void{
   return function_map.current.?.glUniformMatrix3fv(location, count, transpose, value);
}
pub fn glUniformMatrix4fv(location: GLint, count: GLsizei, transpose: GLboolean, value: GLfloat) void{
   return function_map.current.?.glUniformMatrix4fv(location, count, transpose, value);
}
pub fn glValidateProgram(program: GLuint) void{
   return function_map.current.?.glValidateProgram(program);
}
pub fn glVertexAttrib1d(index: GLuint, x: GLdouble) void{
   return function_map.current.?.glVertexAttrib1d(index, x);
}
pub fn glVertexAttrib1dv(index: GLuint, v: GLdouble) void{
   return function_map.current.?.glVertexAttrib1dv(index, v);
}
pub fn glVertexAttrib1f(index: GLuint, x: GLfloat) void{
   return function_map.current.?.glVertexAttrib1f(index, x);
}
pub fn glVertexAttrib1fv(index: GLuint, v: GLfloat) void{
   return function_map.current.?.glVertexAttrib1fv(index, v);
}
pub fn glVertexAttrib1s(index: GLuint, x: GLshort) void{
   return function_map.current.?.glVertexAttrib1s(index, x);
}
pub fn glVertexAttrib1sv(index: GLuint, v: GLshort) void{
   return function_map.current.?.glVertexAttrib1sv(index, v);
}
pub fn glVertexAttrib2d(index: GLuint, x: GLdouble, y: GLdouble) void{
   return function_map.current.?.glVertexAttrib2d(index, x, y);
}
pub fn glVertexAttrib2dv(index: GLuint, v: GLdouble) void{
   return function_map.current.?.glVertexAttrib2dv(index, v);
}
pub fn glVertexAttrib2f(index: GLuint, x: GLfloat, y: GLfloat) void{
   return function_map.current.?.glVertexAttrib2f(index, x, y);
}
pub fn glVertexAttrib2fv(index: GLuint, v: GLfloat) void{
   return function_map.current.?.glVertexAttrib2fv(index, v);
}
pub fn glVertexAttrib2s(index: GLuint, x: GLshort, y: GLshort) void{
   return function_map.current.?.glVertexAttrib2s(index, x, y);
}
pub fn glVertexAttrib2sv(index: GLuint, v: GLshort) void{
   return function_map.current.?.glVertexAttrib2sv(index, v);
}
pub fn glVertexAttrib3d(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble) void{
   return function_map.current.?.glVertexAttrib3d(index, x, y, z);
}
pub fn glVertexAttrib3dv(index: GLuint, v: GLdouble) void{
   return function_map.current.?.glVertexAttrib3dv(index, v);
}
pub fn glVertexAttrib3f(index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat) void{
   return function_map.current.?.glVertexAttrib3f(index, x, y, z);
}
pub fn glVertexAttrib3fv(index: GLuint, v: GLfloat) void{
   return function_map.current.?.glVertexAttrib3fv(index, v);
}
pub fn glVertexAttrib3s(index: GLuint, x: GLshort, y: GLshort, z: GLshort) void{
   return function_map.current.?.glVertexAttrib3s(index, x, y, z);
}
pub fn glVertexAttrib3sv(index: GLuint, v: GLshort) void{
   return function_map.current.?.glVertexAttrib3sv(index, v);
}
pub fn glVertexAttrib4Nbv(index: GLuint, v: GLbyte) void{
   return function_map.current.?.glVertexAttrib4Nbv(index, v);
}
pub fn glVertexAttrib4Niv(index: GLuint, v: GLint) void{
   return function_map.current.?.glVertexAttrib4Niv(index, v);
}
pub fn glVertexAttrib4Nsv(index: GLuint, v: GLshort) void{
   return function_map.current.?.glVertexAttrib4Nsv(index, v);
}
pub fn glVertexAttrib4Nub(index: GLuint, x: GLubyte, y: GLubyte, z: GLubyte, w: GLubyte) void{
   return function_map.current.?.glVertexAttrib4Nub(index, x, y, z, w);
}
pub fn glVertexAttrib4Nubv(index: GLuint, v: GLubyte) void{
   return function_map.current.?.glVertexAttrib4Nubv(index, v);
}
pub fn glVertexAttrib4Nuiv(index: GLuint, v: GLuint) void{
   return function_map.current.?.glVertexAttrib4Nuiv(index, v);
}
pub fn glVertexAttrib4Nusv(index: GLuint, v: GLushort) void{
   return function_map.current.?.glVertexAttrib4Nusv(index, v);
}
pub fn glVertexAttrib4bv(index: GLuint, v: GLbyte) void{
   return function_map.current.?.glVertexAttrib4bv(index, v);
}
pub fn glVertexAttrib4d(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) void{
   return function_map.current.?.glVertexAttrib4d(index, x, y, z, w);
}
pub fn glVertexAttrib4dv(index: GLuint, v: GLdouble) void{
   return function_map.current.?.glVertexAttrib4dv(index, v);
}
pub fn glVertexAttrib4f(index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat) void{
   return function_map.current.?.glVertexAttrib4f(index, x, y, z, w);
}
pub fn glVertexAttrib4fv(index: GLuint, v: GLfloat) void{
   return function_map.current.?.glVertexAttrib4fv(index, v);
}
pub fn glVertexAttrib4iv(index: GLuint, v: GLint) void{
   return function_map.current.?.glVertexAttrib4iv(index, v);
}
pub fn glVertexAttrib4s(index: GLuint, x: GLshort, y: GLshort, z: GLshort, w: GLshort) void{
   return function_map.current.?.glVertexAttrib4s(index, x, y, z, w);
}
pub fn glVertexAttrib4sv(index: GLuint, v: GLshort) void{
   return function_map.current.?.glVertexAttrib4sv(index, v);
}
pub fn glVertexAttrib4ubv(index: GLuint, v: GLubyte) void{
   return function_map.current.?.glVertexAttrib4ubv(index, v);
}
pub fn glVertexAttrib4uiv(index: GLuint, v: GLuint) void{
   return function_map.current.?.glVertexAttrib4uiv(index, v);
}
pub fn glVertexAttrib4usv(index: GLuint, v: GLushort) void{
   return function_map.current.?.glVertexAttrib4usv(index, v);
}
pub fn glVertexAttribPointer(index: GLuint, size: GLint, type: GLenum, normalized: GLboolean, stride: GLsizei, pointer: ?*const anyopaque) void{
   return function_map.current.?.glVertexAttribPointer(index, size, type, normalized, stride, pointer);
}
pub const GL_PIXEL_PACK_BUFFER: comptime_int = 0x88EB;
pub const GL_PIXEL_UNPACK_BUFFER: comptime_int = 0x88EC;
pub const GL_PIXEL_PACK_BUFFER_BINDING: comptime_int = 0x88ED;
pub const GL_PIXEL_UNPACK_BUFFER_BINDING: comptime_int = 0x88EF;
pub const GL_FLOAT_MAT2x3: comptime_int = 0x8B65;
pub const GL_FLOAT_MAT2x4: comptime_int = 0x8B66;
pub const GL_FLOAT_MAT3x2: comptime_int = 0x8B67;
pub const GL_FLOAT_MAT3x4: comptime_int = 0x8B68;
pub const GL_FLOAT_MAT4x2: comptime_int = 0x8B69;
pub const GL_FLOAT_MAT4x3: comptime_int = 0x8B6A;
pub const GL_SRGB: comptime_int = 0x8C40;
pub const GL_SRGB8: comptime_int = 0x8C41;
pub const GL_SRGB_ALPHA: comptime_int = 0x8C42;
pub const GL_SRGB8_ALPHA8: comptime_int = 0x8C43;
pub const GL_COMPRESSED_SRGB: comptime_int = 0x8C48;
pub const GL_COMPRESSED_SRGB_ALPHA: comptime_int = 0x8C49;
pub const GL_CURRENT_RASTER_SECONDARY_COLOR: comptime_int = 0x845F;
pub const GL_SLUMINANCE_ALPHA: comptime_int = 0x8C44;
pub const GL_SLUMINANCE8_ALPHA8: comptime_int = 0x8C45;
pub const GL_SLUMINANCE: comptime_int = 0x8C46;
pub const GL_SLUMINANCE8: comptime_int = 0x8C47;
pub const GL_COMPRESSED_SLUMINANCE: comptime_int = 0x8C4A;
pub const GL_COMPRESSED_SLUMINANCE_ALPHA: comptime_int = 0x8C4B;
pub fn glUniformMatrix2x3fv(location: GLint, count: GLsizei, transpose: GLboolean, value: GLfloat) void{
   return function_map.current.?.glUniformMatrix2x3fv(location, count, transpose, value);
}
pub fn glUniformMatrix3x2fv(location: GLint, count: GLsizei, transpose: GLboolean, value: GLfloat) void{
   return function_map.current.?.glUniformMatrix3x2fv(location, count, transpose, value);
}
pub fn glUniformMatrix2x4fv(location: GLint, count: GLsizei, transpose: GLboolean, value: GLfloat) void{
   return function_map.current.?.glUniformMatrix2x4fv(location, count, transpose, value);
}
pub fn glUniformMatrix4x2fv(location: GLint, count: GLsizei, transpose: GLboolean, value: GLfloat) void{
   return function_map.current.?.glUniformMatrix4x2fv(location, count, transpose, value);
}
pub fn glUniformMatrix3x4fv(location: GLint, count: GLsizei, transpose: GLboolean, value: GLfloat) void{
   return function_map.current.?.glUniformMatrix3x4fv(location, count, transpose, value);
}
pub fn glUniformMatrix4x3fv(location: GLint, count: GLsizei, transpose: GLboolean, value: GLfloat) void{
   return function_map.current.?.glUniformMatrix4x3fv(location, count, transpose, value);
}
pub const GL_COMPARE_REF_TO_TEXTURE: comptime_int = 0x884E;
pub const GL_CLIP_DISTANCE0: comptime_int = 0x3000;
pub const GL_CLIP_DISTANCE1: comptime_int = 0x3001;
pub const GL_CLIP_DISTANCE2: comptime_int = 0x3002;
pub const GL_CLIP_DISTANCE3: comptime_int = 0x3003;
pub const GL_CLIP_DISTANCE4: comptime_int = 0x3004;
pub const GL_CLIP_DISTANCE5: comptime_int = 0x3005;
pub const GL_CLIP_DISTANCE6: comptime_int = 0x3006;
pub const GL_CLIP_DISTANCE7: comptime_int = 0x3007;
pub const GL_MAX_CLIP_DISTANCES: comptime_int = 0x0D32;
pub const GL_MAJOR_VERSION: comptime_int = 0x821B;
pub const GL_MINOR_VERSION: comptime_int = 0x821C;
pub const GL_NUM_EXTENSIONS: comptime_int = 0x821D;
pub const GL_CONTEXT_FLAGS: comptime_int = 0x821E;
pub const GL_COMPRESSED_RED: comptime_int = 0x8225;
pub const GL_COMPRESSED_RG: comptime_int = 0x8226;
pub const GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT: comptime_int = 0x00000001;
pub const GL_RGBA32F: comptime_int = 0x8814;
pub const GL_RGB32F: comptime_int = 0x8815;
pub const GL_RGBA16F: comptime_int = 0x881A;
pub const GL_RGB16F: comptime_int = 0x881B;
pub const GL_VERTEX_ATTRIB_ARRAY_INTEGER: comptime_int = 0x88FD;
pub const GL_MAX_ARRAY_TEXTURE_LAYERS: comptime_int = 0x88FF;
pub const GL_MIN_PROGRAM_TEXEL_OFFSET: comptime_int = 0x8904;
pub const GL_MAX_PROGRAM_TEXEL_OFFSET: comptime_int = 0x8905;
pub const GL_CLAMP_READ_COLOR: comptime_int = 0x891C;
pub const GL_FIXED_ONLY: comptime_int = 0x891D;
pub const GL_MAX_VARYING_COMPONENTS: comptime_int = 0x8B4B;
pub const GL_TEXTURE_1D_ARRAY: comptime_int = 0x8C18;
pub const GL_PROXY_TEXTURE_1D_ARRAY: comptime_int = 0x8C19;
pub const GL_TEXTURE_2D_ARRAY: comptime_int = 0x8C1A;
pub const GL_PROXY_TEXTURE_2D_ARRAY: comptime_int = 0x8C1B;
pub const GL_TEXTURE_BINDING_1D_ARRAY: comptime_int = 0x8C1C;
pub const GL_TEXTURE_BINDING_2D_ARRAY: comptime_int = 0x8C1D;
pub const GL_R11F_G11F_B10F: comptime_int = 0x8C3A;
pub const GL_UNSIGNED_INT_10F_11F_11F_REV: comptime_int = 0x8C3B;
pub const GL_RGB9_E5: comptime_int = 0x8C3D;
pub const GL_UNSIGNED_INT_5_9_9_9_REV: comptime_int = 0x8C3E;
pub const GL_TEXTURE_SHARED_SIZE: comptime_int = 0x8C3F;
pub const GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH: comptime_int = 0x8C76;
pub const GL_TRANSFORM_FEEDBACK_BUFFER_MODE: comptime_int = 0x8C7F;
pub const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS: comptime_int = 0x8C80;
pub const GL_TRANSFORM_FEEDBACK_VARYINGS: comptime_int = 0x8C83;
pub const GL_TRANSFORM_FEEDBACK_BUFFER_START: comptime_int = 0x8C84;
pub const GL_TRANSFORM_FEEDBACK_BUFFER_SIZE: comptime_int = 0x8C85;
pub const GL_PRIMITIVES_GENERATED: comptime_int = 0x8C87;
pub const GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN: comptime_int = 0x8C88;
pub const GL_RASTERIZER_DISCARD: comptime_int = 0x8C89;
pub const GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS: comptime_int = 0x8C8A;
pub const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS: comptime_int = 0x8C8B;
pub const GL_INTERLEAVED_ATTRIBS: comptime_int = 0x8C8C;
pub const GL_SEPARATE_ATTRIBS: comptime_int = 0x8C8D;
pub const GL_TRANSFORM_FEEDBACK_BUFFER: comptime_int = 0x8C8E;
pub const GL_TRANSFORM_FEEDBACK_BUFFER_BINDING: comptime_int = 0x8C8F;
pub const GL_RGBA32UI: comptime_int = 0x8D70;
pub const GL_RGB32UI: comptime_int = 0x8D71;
pub const GL_RGBA16UI: comptime_int = 0x8D76;
pub const GL_RGB16UI: comptime_int = 0x8D77;
pub const GL_RGBA8UI: comptime_int = 0x8D7C;
pub const GL_RGB8UI: comptime_int = 0x8D7D;
pub const GL_RGBA32I: comptime_int = 0x8D82;
pub const GL_RGB32I: comptime_int = 0x8D83;
pub const GL_RGBA16I: comptime_int = 0x8D88;
pub const GL_RGB16I: comptime_int = 0x8D89;
pub const GL_RGBA8I: comptime_int = 0x8D8E;
pub const GL_RGB8I: comptime_int = 0x8D8F;
pub const GL_RED_INTEGER: comptime_int = 0x8D94;
pub const GL_GREEN_INTEGER: comptime_int = 0x8D95;
pub const GL_BLUE_INTEGER: comptime_int = 0x8D96;
pub const GL_RGB_INTEGER: comptime_int = 0x8D98;
pub const GL_RGBA_INTEGER: comptime_int = 0x8D99;
pub const GL_BGR_INTEGER: comptime_int = 0x8D9A;
pub const GL_BGRA_INTEGER: comptime_int = 0x8D9B;
pub const GL_SAMPLER_1D_ARRAY: comptime_int = 0x8DC0;
pub const GL_SAMPLER_2D_ARRAY: comptime_int = 0x8DC1;
pub const GL_SAMPLER_1D_ARRAY_SHADOW: comptime_int = 0x8DC3;
pub const GL_SAMPLER_2D_ARRAY_SHADOW: comptime_int = 0x8DC4;
pub const GL_SAMPLER_CUBE_SHADOW: comptime_int = 0x8DC5;
pub const GL_UNSIGNED_INT_VEC2: comptime_int = 0x8DC6;
pub const GL_UNSIGNED_INT_VEC3: comptime_int = 0x8DC7;
pub const GL_UNSIGNED_INT_VEC4: comptime_int = 0x8DC8;
pub const GL_INT_SAMPLER_1D: comptime_int = 0x8DC9;
pub const GL_INT_SAMPLER_2D: comptime_int = 0x8DCA;
pub const GL_INT_SAMPLER_3D: comptime_int = 0x8DCB;
pub const GL_INT_SAMPLER_CUBE: comptime_int = 0x8DCC;
pub const GL_INT_SAMPLER_1D_ARRAY: comptime_int = 0x8DCE;
pub const GL_INT_SAMPLER_2D_ARRAY: comptime_int = 0x8DCF;
pub const GL_UNSIGNED_INT_SAMPLER_1D: comptime_int = 0x8DD1;
pub const GL_UNSIGNED_INT_SAMPLER_2D: comptime_int = 0x8DD2;
pub const GL_UNSIGNED_INT_SAMPLER_3D: comptime_int = 0x8DD3;
pub const GL_UNSIGNED_INT_SAMPLER_CUBE: comptime_int = 0x8DD4;
pub const GL_UNSIGNED_INT_SAMPLER_1D_ARRAY: comptime_int = 0x8DD6;
pub const GL_UNSIGNED_INT_SAMPLER_2D_ARRAY: comptime_int = 0x8DD7;
pub const GL_QUERY_WAIT: comptime_int = 0x8E13;
pub const GL_QUERY_NO_WAIT: comptime_int = 0x8E14;
pub const GL_QUERY_BY_REGION_WAIT: comptime_int = 0x8E15;
pub const GL_QUERY_BY_REGION_NO_WAIT: comptime_int = 0x8E16;
pub const GL_BUFFER_ACCESS_FLAGS: comptime_int = 0x911F;
pub const GL_BUFFER_MAP_LENGTH: comptime_int = 0x9120;
pub const GL_BUFFER_MAP_OFFSET: comptime_int = 0x9121;
pub fn glColorMaski(index: GLuint, r: GLboolean, g: GLboolean, b: GLboolean, a: GLboolean) void{
   return function_map.current.?.glColorMaski(index, r, g, b, a);
}
pub fn glGetBooleani_v(target: GLenum, index: GLuint, data: GLboolean) void{
   return function_map.current.?.glGetBooleani_v(target, index, data);
}
pub fn glGetIntegeri_v(target: GLenum, index: GLuint, data: GLint) void{
   return function_map.current.?.glGetIntegeri_v(target, index, data);
}
pub fn glEnablei(target: GLenum, index: GLuint) void{
   return function_map.current.?.glEnablei(target, index);
}
pub fn glDisablei(target: GLenum, index: GLuint) void{
   return function_map.current.?.glDisablei(target, index);
}
pub fn glIsEnabledi(target: GLenum, index: GLuint) GLboolean{
   return function_map.current.?.glIsEnabledi(target, index);
}
pub fn glBeginTransformFeedback(primitiveMode: GLenum) void{
   return function_map.current.?.glBeginTransformFeedback(primitiveMode);
}
pub fn glEndTransformFeedback() void{
   return function_map.current.?.glEndTransformFeedback();
}
pub fn glBindBufferRange(target: GLenum, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr) void{
   return function_map.current.?.glBindBufferRange(target, index, buffer, offset, size);
}
pub fn glBindBufferBase(target: GLenum, index: GLuint, buffer: GLuint) void{
   return function_map.current.?.glBindBufferBase(target, index, buffer);
}
pub fn glTransformFeedbackVaryings(program: GLuint, count: GLsizei, varyings: GLchar, bufferMode: GLenum) void{
   return function_map.current.?.glTransformFeedbackVaryings(program, count, varyings, bufferMode);
}
pub fn glGetTransformFeedbackVarying(program: GLuint, index: GLuint, bufSize: GLsizei, length: GLsizei, size: GLsizei, type: GLenum, name: GLchar) void{
   return function_map.current.?.glGetTransformFeedbackVarying(program, index, bufSize, length, size, type, name);
}
pub fn glClampColor(target: GLenum, clamp: GLenum) void{
   return function_map.current.?.glClampColor(target, clamp);
}
pub fn glBeginConditionalRender(id: GLuint, mode: GLenum) void{
   return function_map.current.?.glBeginConditionalRender(id, mode);
}
pub fn glEndConditionalRender() void{
   return function_map.current.?.glEndConditionalRender();
}
pub fn glVertexAttribIPointer(index: GLuint, size: GLint, type: GLenum, stride: GLsizei, pointer: ?*const anyopaque) void{
   return function_map.current.?.glVertexAttribIPointer(index, size, type, stride, pointer);
}
pub fn glGetVertexAttribIiv(index: GLuint, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetVertexAttribIiv(index, pname, params);
}
pub fn glGetVertexAttribIuiv(index: GLuint, pname: GLenum, params: GLuint) void{
   return function_map.current.?.glGetVertexAttribIuiv(index, pname, params);
}
pub fn glVertexAttribI1i(index: GLuint, x: GLint) void{
   return function_map.current.?.glVertexAttribI1i(index, x);
}
pub fn glVertexAttribI2i(index: GLuint, x: GLint, y: GLint) void{
   return function_map.current.?.glVertexAttribI2i(index, x, y);
}
pub fn glVertexAttribI3i(index: GLuint, x: GLint, y: GLint, z: GLint) void{
   return function_map.current.?.glVertexAttribI3i(index, x, y, z);
}
pub fn glVertexAttribI4i(index: GLuint, x: GLint, y: GLint, z: GLint, w: GLint) void{
   return function_map.current.?.glVertexAttribI4i(index, x, y, z, w);
}
pub fn glVertexAttribI1ui(index: GLuint, x: GLuint) void{
   return function_map.current.?.glVertexAttribI1ui(index, x);
}
pub fn glVertexAttribI2ui(index: GLuint, x: GLuint, y: GLuint) void{
   return function_map.current.?.glVertexAttribI2ui(index, x, y);
}
pub fn glVertexAttribI3ui(index: GLuint, x: GLuint, y: GLuint, z: GLuint) void{
   return function_map.current.?.glVertexAttribI3ui(index, x, y, z);
}
pub fn glVertexAttribI4ui(index: GLuint, x: GLuint, y: GLuint, z: GLuint, w: GLuint) void{
   return function_map.current.?.glVertexAttribI4ui(index, x, y, z, w);
}
pub fn glVertexAttribI1iv(index: GLuint, v: GLint) void{
   return function_map.current.?.glVertexAttribI1iv(index, v);
}
pub fn glVertexAttribI2iv(index: GLuint, v: GLint) void{
   return function_map.current.?.glVertexAttribI2iv(index, v);
}
pub fn glVertexAttribI3iv(index: GLuint, v: GLint) void{
   return function_map.current.?.glVertexAttribI3iv(index, v);
}
pub fn glVertexAttribI4iv(index: GLuint, v: GLint) void{
   return function_map.current.?.glVertexAttribI4iv(index, v);
}
pub fn glVertexAttribI1uiv(index: GLuint, v: GLuint) void{
   return function_map.current.?.glVertexAttribI1uiv(index, v);
}
pub fn glVertexAttribI2uiv(index: GLuint, v: GLuint) void{
   return function_map.current.?.glVertexAttribI2uiv(index, v);
}
pub fn glVertexAttribI3uiv(index: GLuint, v: GLuint) void{
   return function_map.current.?.glVertexAttribI3uiv(index, v);
}
pub fn glVertexAttribI4uiv(index: GLuint, v: GLuint) void{
   return function_map.current.?.glVertexAttribI4uiv(index, v);
}
pub fn glVertexAttribI4bv(index: GLuint, v: GLbyte) void{
   return function_map.current.?.glVertexAttribI4bv(index, v);
}
pub fn glVertexAttribI4sv(index: GLuint, v: GLshort) void{
   return function_map.current.?.glVertexAttribI4sv(index, v);
}
pub fn glVertexAttribI4ubv(index: GLuint, v: GLubyte) void{
   return function_map.current.?.glVertexAttribI4ubv(index, v);
}
pub fn glVertexAttribI4usv(index: GLuint, v: GLushort) void{
   return function_map.current.?.glVertexAttribI4usv(index, v);
}
pub fn glGetUniformuiv(program: GLuint, location: GLint, params: GLuint) void{
   return function_map.current.?.glGetUniformuiv(program, location, params);
}
pub fn glBindFragDataLocation(program: GLuint, color: GLuint, name: GLchar) void{
   return function_map.current.?.glBindFragDataLocation(program, color, name);
}
pub fn glGetFragDataLocation(program: GLuint, name: GLchar) GLint{
   return function_map.current.?.glGetFragDataLocation(program, name);
}
pub fn glUniform1ui(location: GLint, v0: GLuint) void{
   return function_map.current.?.glUniform1ui(location, v0);
}
pub fn glUniform2ui(location: GLint, v0: GLuint, v1: GLuint) void{
   return function_map.current.?.glUniform2ui(location, v0, v1);
}
pub fn glUniform3ui(location: GLint, v0: GLuint, v1: GLuint, v2: GLuint) void{
   return function_map.current.?.glUniform3ui(location, v0, v1, v2);
}
pub fn glUniform4ui(location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint) void{
   return function_map.current.?.glUniform4ui(location, v0, v1, v2, v3);
}
pub fn glUniform1uiv(location: GLint, count: GLsizei, value: GLuint) void{
   return function_map.current.?.glUniform1uiv(location, count, value);
}
pub fn glUniform2uiv(location: GLint, count: GLsizei, value: GLuint) void{
   return function_map.current.?.glUniform2uiv(location, count, value);
}
pub fn glUniform3uiv(location: GLint, count: GLsizei, value: GLuint) void{
   return function_map.current.?.glUniform3uiv(location, count, value);
}
pub fn glUniform4uiv(location: GLint, count: GLsizei, value: GLuint) void{
   return function_map.current.?.glUniform4uiv(location, count, value);
}
pub fn glTexParameterIiv(target: GLenum, pname: GLenum, params: GLint) void{
   return function_map.current.?.glTexParameterIiv(target, pname, params);
}
pub fn glTexParameterIuiv(target: GLenum, pname: GLenum, params: GLuint) void{
   return function_map.current.?.glTexParameterIuiv(target, pname, params);
}
pub fn glGetTexParameterIiv(target: GLenum, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetTexParameterIiv(target, pname, params);
}
pub fn glGetTexParameterIuiv(target: GLenum, pname: GLenum, params: GLuint) void{
   return function_map.current.?.glGetTexParameterIuiv(target, pname, params);
}
pub fn glClearBufferiv(buffer: GLenum, drawbuffer: GLint, value: GLint) void{
   return function_map.current.?.glClearBufferiv(buffer, drawbuffer, value);
}
pub fn glClearBufferuiv(buffer: GLenum, drawbuffer: GLint, value: GLuint) void{
   return function_map.current.?.glClearBufferuiv(buffer, drawbuffer, value);
}
pub fn glClearBufferfv(buffer: GLenum, drawbuffer: GLint, value: GLfloat) void{
   return function_map.current.?.glClearBufferfv(buffer, drawbuffer, value);
}
pub fn glClearBufferfi(buffer: GLenum, drawbuffer: GLint, depth: GLfloat, stencil: GLint) void{
   return function_map.current.?.glClearBufferfi(buffer, drawbuffer, depth, stencil);
}
pub fn glGetStringi(name: GLenum, index: GLuint) GLubyte{
   return function_map.current.?.glGetStringi(name, index);
}
pub const GL_DEPTH_COMPONENT32F: comptime_int = 0x8CAC;
pub const GL_DEPTH32F_STENCIL8: comptime_int = 0x8CAD;
pub const GL_FLOAT_32_UNSIGNED_INT_24_8_REV: comptime_int = 0x8DAD;
pub const GL_INVALID_FRAMEBUFFER_OPERATION: comptime_int = 0x0506;
pub const GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING: comptime_int = 0x8210;
pub const GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE: comptime_int = 0x8211;
pub const GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE: comptime_int = 0x8212;
pub const GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE: comptime_int = 0x8213;
pub const GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE: comptime_int = 0x8214;
pub const GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE: comptime_int = 0x8215;
pub const GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE: comptime_int = 0x8216;
pub const GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE: comptime_int = 0x8217;
pub const GL_FRAMEBUFFER_DEFAULT: comptime_int = 0x8218;
pub const GL_FRAMEBUFFER_UNDEFINED: comptime_int = 0x8219;
pub const GL_DEPTH_STENCIL_ATTACHMENT: comptime_int = 0x821A;
pub const GL_MAX_RENDERBUFFER_SIZE: comptime_int = 0x84E8;
pub const GL_DEPTH_STENCIL: comptime_int = 0x84F9;
pub const GL_UNSIGNED_INT_24_8: comptime_int = 0x84FA;
pub const GL_DEPTH24_STENCIL8: comptime_int = 0x88F0;
pub const GL_TEXTURE_STENCIL_SIZE: comptime_int = 0x88F1;
pub const GL_TEXTURE_RED_TYPE: comptime_int = 0x8C10;
pub const GL_TEXTURE_GREEN_TYPE: comptime_int = 0x8C11;
pub const GL_TEXTURE_BLUE_TYPE: comptime_int = 0x8C12;
pub const GL_TEXTURE_ALPHA_TYPE: comptime_int = 0x8C13;
pub const GL_TEXTURE_DEPTH_TYPE: comptime_int = 0x8C16;
pub const GL_UNSIGNED_NORMALIZED: comptime_int = 0x8C17;
pub const GL_FRAMEBUFFER_BINDING: comptime_int = 0x8CA6;
pub const GL_DRAW_FRAMEBUFFER_BINDING: comptime_int = 0x8CA6;
pub const GL_RENDERBUFFER_BINDING: comptime_int = 0x8CA7;
pub const GL_READ_FRAMEBUFFER: comptime_int = 0x8CA8;
pub const GL_DRAW_FRAMEBUFFER: comptime_int = 0x8CA9;
pub const GL_READ_FRAMEBUFFER_BINDING: comptime_int = 0x8CAA;
pub const GL_RENDERBUFFER_SAMPLES: comptime_int = 0x8CAB;
pub const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE: comptime_int = 0x8CD0;
pub const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME: comptime_int = 0x8CD1;
pub const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL: comptime_int = 0x8CD2;
pub const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE: comptime_int = 0x8CD3;
pub const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER: comptime_int = 0x8CD4;
pub const GL_FRAMEBUFFER_COMPLETE: comptime_int = 0x8CD5;
pub const GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT: comptime_int = 0x8CD6;
pub const GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT: comptime_int = 0x8CD7;
pub const GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER: comptime_int = 0x8CDB;
pub const GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER: comptime_int = 0x8CDC;
pub const GL_FRAMEBUFFER_UNSUPPORTED: comptime_int = 0x8CDD;
pub const GL_MAX_COLOR_ATTACHMENTS: comptime_int = 0x8CDF;
pub const GL_COLOR_ATTACHMENT0: comptime_int = 0x8CE0;
pub const GL_COLOR_ATTACHMENT1: comptime_int = 0x8CE1;
pub const GL_COLOR_ATTACHMENT2: comptime_int = 0x8CE2;
pub const GL_COLOR_ATTACHMENT3: comptime_int = 0x8CE3;
pub const GL_COLOR_ATTACHMENT4: comptime_int = 0x8CE4;
pub const GL_COLOR_ATTACHMENT5: comptime_int = 0x8CE5;
pub const GL_COLOR_ATTACHMENT6: comptime_int = 0x8CE6;
pub const GL_COLOR_ATTACHMENT7: comptime_int = 0x8CE7;
pub const GL_COLOR_ATTACHMENT8: comptime_int = 0x8CE8;
pub const GL_COLOR_ATTACHMENT9: comptime_int = 0x8CE9;
pub const GL_COLOR_ATTACHMENT10: comptime_int = 0x8CEA;
pub const GL_COLOR_ATTACHMENT11: comptime_int = 0x8CEB;
pub const GL_COLOR_ATTACHMENT12: comptime_int = 0x8CEC;
pub const GL_COLOR_ATTACHMENT13: comptime_int = 0x8CED;
pub const GL_COLOR_ATTACHMENT14: comptime_int = 0x8CEE;
pub const GL_COLOR_ATTACHMENT15: comptime_int = 0x8CEF;
pub const GL_COLOR_ATTACHMENT16: comptime_int = 0x8CF0;
pub const GL_COLOR_ATTACHMENT17: comptime_int = 0x8CF1;
pub const GL_COLOR_ATTACHMENT18: comptime_int = 0x8CF2;
pub const GL_COLOR_ATTACHMENT19: comptime_int = 0x8CF3;
pub const GL_COLOR_ATTACHMENT20: comptime_int = 0x8CF4;
pub const GL_COLOR_ATTACHMENT21: comptime_int = 0x8CF5;
pub const GL_COLOR_ATTACHMENT22: comptime_int = 0x8CF6;
pub const GL_COLOR_ATTACHMENT23: comptime_int = 0x8CF7;
pub const GL_COLOR_ATTACHMENT24: comptime_int = 0x8CF8;
pub const GL_COLOR_ATTACHMENT25: comptime_int = 0x8CF9;
pub const GL_COLOR_ATTACHMENT26: comptime_int = 0x8CFA;
pub const GL_COLOR_ATTACHMENT27: comptime_int = 0x8CFB;
pub const GL_COLOR_ATTACHMENT28: comptime_int = 0x8CFC;
pub const GL_COLOR_ATTACHMENT29: comptime_int = 0x8CFD;
pub const GL_COLOR_ATTACHMENT30: comptime_int = 0x8CFE;
pub const GL_COLOR_ATTACHMENT31: comptime_int = 0x8CFF;
pub const GL_DEPTH_ATTACHMENT: comptime_int = 0x8D00;
pub const GL_STENCIL_ATTACHMENT: comptime_int = 0x8D20;
pub const GL_FRAMEBUFFER: comptime_int = 0x8D40;
pub const GL_RENDERBUFFER: comptime_int = 0x8D41;
pub const GL_RENDERBUFFER_WIDTH: comptime_int = 0x8D42;
pub const GL_RENDERBUFFER_HEIGHT: comptime_int = 0x8D43;
pub const GL_RENDERBUFFER_INTERNAL_FORMAT: comptime_int = 0x8D44;
pub const GL_STENCIL_INDEX1: comptime_int = 0x8D46;
pub const GL_STENCIL_INDEX4: comptime_int = 0x8D47;
pub const GL_STENCIL_INDEX8: comptime_int = 0x8D48;
pub const GL_STENCIL_INDEX16: comptime_int = 0x8D49;
pub const GL_RENDERBUFFER_RED_SIZE: comptime_int = 0x8D50;
pub const GL_RENDERBUFFER_GREEN_SIZE: comptime_int = 0x8D51;
pub const GL_RENDERBUFFER_BLUE_SIZE: comptime_int = 0x8D52;
pub const GL_RENDERBUFFER_ALPHA_SIZE: comptime_int = 0x8D53;
pub const GL_RENDERBUFFER_DEPTH_SIZE: comptime_int = 0x8D54;
pub const GL_RENDERBUFFER_STENCIL_SIZE: comptime_int = 0x8D55;
pub const GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE: comptime_int = 0x8D56;
pub const GL_MAX_SAMPLES: comptime_int = 0x8D57;
pub const GL_INDEX: comptime_int = 0x8222;
pub fn glIsRenderbuffer(renderbuffer: GLuint) GLboolean{
   return function_map.current.?.glIsRenderbuffer(renderbuffer);
}
pub fn glBindRenderbuffer(target: GLenum, renderbuffer: GLuint) void{
   return function_map.current.?.glBindRenderbuffer(target, renderbuffer);
}
pub fn glDeleteRenderbuffers(n: GLsizei, renderbuffers: GLuint) void{
   return function_map.current.?.glDeleteRenderbuffers(n, renderbuffers);
}
pub fn glGenRenderbuffers(n: GLsizei, renderbuffers: GLuint) void{
   return function_map.current.?.glGenRenderbuffers(n, renderbuffers);
}
pub fn glRenderbufferStorage(target: GLenum, internalformat: GLenum, width: GLsizei, height: GLsizei) void{
   return function_map.current.?.glRenderbufferStorage(target, internalformat, width, height);
}
pub fn glGetRenderbufferParameteriv(target: GLenum, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetRenderbufferParameteriv(target, pname, params);
}
pub fn glIsFramebuffer(framebuffer: GLuint) GLboolean{
   return function_map.current.?.glIsFramebuffer(framebuffer);
}
pub fn glBindFramebuffer(target: GLenum, framebuffer: GLuint) void{
   return function_map.current.?.glBindFramebuffer(target, framebuffer);
}
pub fn glDeleteFramebuffers(n: GLsizei, framebuffers: GLuint) void{
   return function_map.current.?.glDeleteFramebuffers(n, framebuffers);
}
pub fn glGenFramebuffers(n: GLsizei, framebuffers: GLuint) void{
   return function_map.current.?.glGenFramebuffers(n, framebuffers);
}
pub fn glCheckFramebufferStatus(target: GLenum) GLenum{
   return function_map.current.?.glCheckFramebufferStatus(target);
}
pub fn glFramebufferTexture1D(target: GLenum, attachment: GLenum, textarget: GLenum, texture: GLuint, level: GLint) void{
   return function_map.current.?.glFramebufferTexture1D(target, attachment, textarget, texture, level);
}
pub fn glFramebufferTexture2D(target: GLenum, attachment: GLenum, textarget: GLenum, texture: GLuint, level: GLint) void{
   return function_map.current.?.glFramebufferTexture2D(target, attachment, textarget, texture, level);
}
pub fn glFramebufferTexture3D(target: GLenum, attachment: GLenum, textarget: GLenum, texture: GLuint, level: GLint, zoffset: GLint) void{
   return function_map.current.?.glFramebufferTexture3D(target, attachment, textarget, texture, level, zoffset);
}
pub fn glFramebufferRenderbuffer(target: GLenum, attachment: GLenum, renderbuffertarget: GLenum, renderbuffer: GLuint) void{
   return function_map.current.?.glFramebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer);
}
pub fn glGetFramebufferAttachmentParameteriv(target: GLenum, attachment: GLenum, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetFramebufferAttachmentParameteriv(target, attachment, pname, params);
}
pub fn glGenerateMipmap(target: GLenum) void{
   return function_map.current.?.glGenerateMipmap(target);
}
pub fn glBlitFramebuffer(srcX0: GLint, srcY0: GLint, srcX1: GLint, srcY1: GLint, dstX0: GLint, dstY0: GLint, dstX1: GLint, dstY1: GLint, mask: GLbitfield, filter: GLenum) void{
   return function_map.current.?.glBlitFramebuffer(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter);
}
pub fn glRenderbufferStorageMultisample(target: GLenum, samples: GLsizei, internalformat: GLenum, width: GLsizei, height: GLsizei) void{
   return function_map.current.?.glRenderbufferStorageMultisample(target, samples, internalformat, width, height);
}
pub fn glFramebufferTextureLayer(target: GLenum, attachment: GLenum, texture: GLuint, level: GLint, layer: GLint) void{
   return function_map.current.?.glFramebufferTextureLayer(target, attachment, texture, level, layer);
}
pub const GL_TEXTURE_LUMINANCE_TYPE: comptime_int = 0x8C14;
pub const GL_TEXTURE_INTENSITY_TYPE: comptime_int = 0x8C15;
pub const GL_FRAMEBUFFER_SRGB: comptime_int = 0x8DB9;
pub const GL_HALF_FLOAT: comptime_int = 0x140B;
pub const GL_MAP_READ_BIT: comptime_int = 0x0001;
pub const GL_MAP_WRITE_BIT: comptime_int = 0x0002;
pub const GL_MAP_INVALIDATE_RANGE_BIT: comptime_int = 0x0004;
pub const GL_MAP_INVALIDATE_BUFFER_BIT: comptime_int = 0x0008;
pub const GL_MAP_FLUSH_EXPLICIT_BIT: comptime_int = 0x0010;
pub const GL_MAP_UNSYNCHRONIZED_BIT: comptime_int = 0x0020;
pub fn glMapBufferRange(target: GLenum, offset: GLintptr, length: GLsizeiptr, access: GLbitfield) void{
   return function_map.current.?.glMapBufferRange(target, offset, length, access);
}
pub fn glFlushMappedBufferRange(target: GLenum, offset: GLintptr, length: GLsizeiptr) void{
   return function_map.current.?.glFlushMappedBufferRange(target, offset, length);
}
pub const GL_COMPRESSED_RED_RGTC1: comptime_int = 0x8DBB;
pub const GL_COMPRESSED_SIGNED_RED_RGTC1: comptime_int = 0x8DBC;
pub const GL_COMPRESSED_RG_RGTC2: comptime_int = 0x8DBD;
pub const GL_COMPRESSED_SIGNED_RG_RGTC2: comptime_int = 0x8DBE;
pub const GL_RG: comptime_int = 0x8227;
pub const GL_RG_INTEGER: comptime_int = 0x8228;
pub const GL_R8: comptime_int = 0x8229;
pub const GL_R16: comptime_int = 0x822A;
pub const GL_RG8: comptime_int = 0x822B;
pub const GL_RG16: comptime_int = 0x822C;
pub const GL_R16F: comptime_int = 0x822D;
pub const GL_R32F: comptime_int = 0x822E;
pub const GL_RG16F: comptime_int = 0x822F;
pub const GL_RG32F: comptime_int = 0x8230;
pub const GL_R8I: comptime_int = 0x8231;
pub const GL_R8UI: comptime_int = 0x8232;
pub const GL_R16I: comptime_int = 0x8233;
pub const GL_R16UI: comptime_int = 0x8234;
pub const GL_R32I: comptime_int = 0x8235;
pub const GL_R32UI: comptime_int = 0x8236;
pub const GL_RG8I: comptime_int = 0x8237;
pub const GL_RG8UI: comptime_int = 0x8238;
pub const GL_RG16I: comptime_int = 0x8239;
pub const GL_RG16UI: comptime_int = 0x823A;
pub const GL_RG32I: comptime_int = 0x823B;
pub const GL_RG32UI: comptime_int = 0x823C;
pub const GL_VERTEX_ARRAY_BINDING: comptime_int = 0x85B5;
pub const GL_CLAMP_VERTEX_COLOR: comptime_int = 0x891A;
pub const GL_CLAMP_FRAGMENT_COLOR: comptime_int = 0x891B;
pub const GL_ALPHA_INTEGER: comptime_int = 0x8D97;
pub fn glBindVertexArray(array: GLuint) void{
   return function_map.current.?.glBindVertexArray(array);
}
pub fn glDeleteVertexArrays(n: GLsizei, arrays: GLuint) void{
   return function_map.current.?.glDeleteVertexArrays(n, arrays);
}
pub fn glGenVertexArrays(n: GLsizei, arrays: GLuint) void{
   return function_map.current.?.glGenVertexArrays(n, arrays);
}
pub fn glIsVertexArray(array: GLuint) GLboolean{
   return function_map.current.?.glIsVertexArray(array);
}
pub const GL_SAMPLER_2D_RECT: comptime_int = 0x8B63;
pub const GL_SAMPLER_2D_RECT_SHADOW: comptime_int = 0x8B64;
pub const GL_SAMPLER_BUFFER: comptime_int = 0x8DC2;
pub const GL_INT_SAMPLER_2D_RECT: comptime_int = 0x8DCD;
pub const GL_INT_SAMPLER_BUFFER: comptime_int = 0x8DD0;
pub const GL_UNSIGNED_INT_SAMPLER_2D_RECT: comptime_int = 0x8DD5;
pub const GL_UNSIGNED_INT_SAMPLER_BUFFER: comptime_int = 0x8DD8;
pub const GL_TEXTURE_BUFFER: comptime_int = 0x8C2A;
pub const GL_MAX_TEXTURE_BUFFER_SIZE: comptime_int = 0x8C2B;
pub const GL_TEXTURE_BINDING_BUFFER: comptime_int = 0x8C2C;
pub const GL_TEXTURE_BUFFER_DATA_STORE_BINDING: comptime_int = 0x8C2D;
pub const GL_TEXTURE_RECTANGLE: comptime_int = 0x84F5;
pub const GL_TEXTURE_BINDING_RECTANGLE: comptime_int = 0x84F6;
pub const GL_PROXY_TEXTURE_RECTANGLE: comptime_int = 0x84F7;
pub const GL_MAX_RECTANGLE_TEXTURE_SIZE: comptime_int = 0x84F8;
pub const GL_R8_SNORM: comptime_int = 0x8F94;
pub const GL_RG8_SNORM: comptime_int = 0x8F95;
pub const GL_RGB8_SNORM: comptime_int = 0x8F96;
pub const GL_RGBA8_SNORM: comptime_int = 0x8F97;
pub const GL_R16_SNORM: comptime_int = 0x8F98;
pub const GL_RG16_SNORM: comptime_int = 0x8F99;
pub const GL_RGB16_SNORM: comptime_int = 0x8F9A;
pub const GL_RGBA16_SNORM: comptime_int = 0x8F9B;
pub const GL_SIGNED_NORMALIZED: comptime_int = 0x8F9C;
pub const GL_PRIMITIVE_RESTART: comptime_int = 0x8F9D;
pub const GL_PRIMITIVE_RESTART_INDEX: comptime_int = 0x8F9E;
pub fn glDrawArraysInstanced(mode: GLenum, first: GLint, count: GLsizei, instancecount: GLsizei) void{
   return function_map.current.?.glDrawArraysInstanced(mode, first, count, instancecount);
}
pub fn glDrawElementsInstanced(mode: GLenum, count: GLsizei, type: GLenum, indices: ?*const anyopaque, instancecount: GLsizei) void{
   return function_map.current.?.glDrawElementsInstanced(mode, count, type, indices, instancecount);
}
pub fn glTexBuffer(target: GLenum, internalformat: GLenum, buffer: GLuint) void{
   return function_map.current.?.glTexBuffer(target, internalformat, buffer);
}
pub fn glPrimitiveRestartIndex(index: GLuint) void{
   return function_map.current.?.glPrimitiveRestartIndex(index);
}
pub const GL_COPY_READ_BUFFER: comptime_int = 0x8F36;
pub const GL_COPY_WRITE_BUFFER: comptime_int = 0x8F37;
pub fn glCopyBufferSubData(readTarget: GLenum, writeTarget: GLenum, readOffset: GLintptr, writeOffset: GLintptr, size: GLsizeiptr) void{
   return function_map.current.?.glCopyBufferSubData(readTarget, writeTarget, readOffset, writeOffset, size);
}
pub const GL_UNIFORM_BUFFER: comptime_int = 0x8A11;
pub const GL_UNIFORM_BUFFER_BINDING: comptime_int = 0x8A28;
pub const GL_UNIFORM_BUFFER_START: comptime_int = 0x8A29;
pub const GL_UNIFORM_BUFFER_SIZE: comptime_int = 0x8A2A;
pub const GL_MAX_VERTEX_UNIFORM_BLOCKS: comptime_int = 0x8A2B;
pub const GL_MAX_GEOMETRY_UNIFORM_BLOCKS: comptime_int = 0x8A2C;
pub const GL_MAX_FRAGMENT_UNIFORM_BLOCKS: comptime_int = 0x8A2D;
pub const GL_MAX_COMBINED_UNIFORM_BLOCKS: comptime_int = 0x8A2E;
pub const GL_MAX_UNIFORM_BUFFER_BINDINGS: comptime_int = 0x8A2F;
pub const GL_MAX_UNIFORM_BLOCK_SIZE: comptime_int = 0x8A30;
pub const GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS: comptime_int = 0x8A31;
pub const GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS: comptime_int = 0x8A32;
pub const GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS: comptime_int = 0x8A33;
pub const GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT: comptime_int = 0x8A34;
pub const GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH: comptime_int = 0x8A35;
pub const GL_ACTIVE_UNIFORM_BLOCKS: comptime_int = 0x8A36;
pub const GL_UNIFORM_TYPE: comptime_int = 0x8A37;
pub const GL_UNIFORM_SIZE: comptime_int = 0x8A38;
pub const GL_UNIFORM_NAME_LENGTH: comptime_int = 0x8A39;
pub const GL_UNIFORM_BLOCK_INDEX: comptime_int = 0x8A3A;
pub const GL_UNIFORM_OFFSET: comptime_int = 0x8A3B;
pub const GL_UNIFORM_ARRAY_STRIDE: comptime_int = 0x8A3C;
pub const GL_UNIFORM_MATRIX_STRIDE: comptime_int = 0x8A3D;
pub const GL_UNIFORM_IS_ROW_MAJOR: comptime_int = 0x8A3E;
pub const GL_UNIFORM_BLOCK_BINDING: comptime_int = 0x8A3F;
pub const GL_UNIFORM_BLOCK_DATA_SIZE: comptime_int = 0x8A40;
pub const GL_UNIFORM_BLOCK_NAME_LENGTH: comptime_int = 0x8A41;
pub const GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS: comptime_int = 0x8A42;
pub const GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES: comptime_int = 0x8A43;
pub const GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER: comptime_int = 0x8A44;
pub const GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER: comptime_int = 0x8A45;
pub const GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER: comptime_int = 0x8A46;
pub const GL_INVALID_INDEX: comptime_int = 0xFFFFFFFF;
pub fn glGetUniformIndices(program: GLuint, uniformCount: GLsizei, uniformNames: GLchar, uniformIndices: GLuint) void{
   return function_map.current.?.glGetUniformIndices(program, uniformCount, uniformNames, uniformIndices);
}
pub fn glGetActiveUniformsiv(program: GLuint, uniformCount: GLsizei, uniformIndices: GLuint, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetActiveUniformsiv(program, uniformCount, uniformIndices, pname, params);
}
pub fn glGetActiveUniformName(program: GLuint, uniformIndex: GLuint, bufSize: GLsizei, length: GLsizei, uniformName: GLchar) void{
   return function_map.current.?.glGetActiveUniformName(program, uniformIndex, bufSize, length, uniformName);
}
pub fn glGetUniformBlockIndex(program: GLuint, uniformBlockName: GLchar) GLuint{
   return function_map.current.?.glGetUniformBlockIndex(program, uniformBlockName);
}
pub fn glGetActiveUniformBlockiv(program: GLuint, uniformBlockIndex: GLuint, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetActiveUniformBlockiv(program, uniformBlockIndex, pname, params);
}
pub fn glGetActiveUniformBlockName(program: GLuint, uniformBlockIndex: GLuint, bufSize: GLsizei, length: GLsizei, uniformBlockName: GLchar) void{
   return function_map.current.?.glGetActiveUniformBlockName(program, uniformBlockIndex, bufSize, length, uniformBlockName);
}
pub fn glUniformBlockBinding(program: GLuint, uniformBlockIndex: GLuint, uniformBlockBinding: GLuint) void{
   return function_map.current.?.glUniformBlockBinding(program, uniformBlockIndex, uniformBlockBinding);
}
pub fn glBindBufferRange(target: GLenum, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr) void{
   return function_map.current.?.glBindBufferRange(target, index, buffer, offset, size);
}
pub fn glBindBufferBase(target: GLenum, index: GLuint, buffer: GLuint) void{
   return function_map.current.?.glBindBufferBase(target, index, buffer);
}
pub fn glGetIntegeri_v(target: GLenum, index: GLuint, data: GLint) void{
   return function_map.current.?.glGetIntegeri_v(target, index, data);
}
pub const GL_CONTEXT_CORE_PROFILE_BIT: comptime_int = 0x00000001;
pub const GL_CONTEXT_COMPATIBILITY_PROFILE_BIT: comptime_int = 0x00000002;
pub const GL_LINES_ADJACENCY: comptime_int = 0x000A;
pub const GL_LINE_STRIP_ADJACENCY: comptime_int = 0x000B;
pub const GL_TRIANGLES_ADJACENCY: comptime_int = 0x000C;
pub const GL_TRIANGLE_STRIP_ADJACENCY: comptime_int = 0x000D;
pub const GL_PROGRAM_POINT_SIZE: comptime_int = 0x8642;
pub const GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS: comptime_int = 0x8C29;
pub const GL_FRAMEBUFFER_ATTACHMENT_LAYERED: comptime_int = 0x8DA7;
pub const GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS: comptime_int = 0x8DA8;
pub const GL_GEOMETRY_SHADER: comptime_int = 0x8DD9;
pub const GL_GEOMETRY_VERTICES_OUT: comptime_int = 0x8916;
pub const GL_GEOMETRY_INPUT_TYPE: comptime_int = 0x8917;
pub const GL_GEOMETRY_OUTPUT_TYPE: comptime_int = 0x8918;
pub const GL_MAX_GEOMETRY_UNIFORM_COMPONENTS: comptime_int = 0x8DDF;
pub const GL_MAX_GEOMETRY_OUTPUT_VERTICES: comptime_int = 0x8DE0;
pub const GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS: comptime_int = 0x8DE1;
pub const GL_MAX_VERTEX_OUTPUT_COMPONENTS: comptime_int = 0x9122;
pub const GL_MAX_GEOMETRY_INPUT_COMPONENTS: comptime_int = 0x9123;
pub const GL_MAX_GEOMETRY_OUTPUT_COMPONENTS: comptime_int = 0x9124;
pub const GL_MAX_FRAGMENT_INPUT_COMPONENTS: comptime_int = 0x9125;
pub const GL_CONTEXT_PROFILE_MASK: comptime_int = 0x9126;
pub const GL_DEPTH_CLAMP: comptime_int = 0x864F;
pub fn glDrawElementsBaseVertex(mode: GLenum, count: GLsizei, type: GLenum, indices: ?*const anyopaque, basevertex: GLint) void{
   return function_map.current.?.glDrawElementsBaseVertex(mode, count, type, indices, basevertex);
}
pub fn glDrawRangeElementsBaseVertex(mode: GLenum, start: GLuint, end: GLuint, count: GLsizei, type: GLenum, indices: ?*const anyopaque, basevertex: GLint) void{
   return function_map.current.?.glDrawRangeElementsBaseVertex(mode, start, end, count, type, indices, basevertex);
}
pub fn glDrawElementsInstancedBaseVertex(mode: GLenum, count: GLsizei, type: GLenum, indices: ?*const anyopaque, instancecount: GLsizei, basevertex: GLint) void{
   return function_map.current.?.glDrawElementsInstancedBaseVertex(mode, count, type, indices, instancecount, basevertex);
}
pub fn glMultiDrawElementsBaseVertex(mode: GLenum, count: GLsizei, type: GLenum, indices: ?*const anyopaque, drawcount: GLsizei, basevertex: GLint) void{
   return function_map.current.?.glMultiDrawElementsBaseVertex(mode, count, type, indices, drawcount, basevertex);
}
pub const GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION: comptime_int = 0x8E4C;
pub const GL_FIRST_VERTEX_CONVENTION: comptime_int = 0x8E4D;
pub const GL_LAST_VERTEX_CONVENTION: comptime_int = 0x8E4E;
pub const GL_PROVOKING_VERTEX: comptime_int = 0x8E4F;
pub fn glProvokingVertex(mode: GLenum) void{
   return function_map.current.?.glProvokingVertex(mode);
}
pub const GL_TEXTURE_CUBE_MAP_SEAMLESS: comptime_int = 0x884F;
pub const GL_MAX_SERVER_WAIT_TIMEOUT: comptime_int = 0x9111;
pub const GL_OBJECT_TYPE: comptime_int = 0x9112;
pub const GL_SYNC_CONDITION: comptime_int = 0x9113;
pub const GL_SYNC_STATUS: comptime_int = 0x9114;
pub const GL_SYNC_FLAGS: comptime_int = 0x9115;
pub const GL_SYNC_FENCE: comptime_int = 0x9116;
pub const GL_SYNC_GPU_COMMANDS_COMPLETE: comptime_int = 0x9117;
pub const GL_UNSIGNALED: comptime_int = 0x9118;
pub const GL_SIGNALED: comptime_int = 0x9119;
pub const GL_ALREADY_SIGNALED: comptime_int = 0x911A;
pub const GL_TIMEOUT_EXPIRED: comptime_int = 0x911B;
pub const GL_CONDITION_SATISFIED: comptime_int = 0x911C;
pub const GL_WAIT_FAILED: comptime_int = 0x911D;
pub const GL_TIMEOUT_IGNORED: comptime_int = 0xFFFFFFFFFFFFFFFF;
pub const GL_SYNC_FLUSH_COMMANDS_BIT: comptime_int = 0x00000001;
pub fn glFenceSync(condition: GLenum, flags: GLbitfield) GLsync{
   return function_map.current.?.glFenceSync(condition, flags);
}
pub fn glIsSync(sync: GLsync) GLboolean{
   return function_map.current.?.glIsSync(sync);
}
pub fn glDeleteSync(sync: GLsync) void{
   return function_map.current.?.glDeleteSync(sync);
}
pub fn glClientWaitSync(sync: GLsync, flags: GLbitfield, timeout: GLuint64) GLenum{
   return function_map.current.?.glClientWaitSync(sync, flags, timeout);
}
pub fn glWaitSync(sync: GLsync, flags: GLbitfield, timeout: GLuint64) void{
   return function_map.current.?.glWaitSync(sync, flags, timeout);
}
pub fn glGetInteger64v(pname: GLenum, data: GLint64) void{
   return function_map.current.?.glGetInteger64v(pname, data);
}
pub fn glGetSynciv(sync: GLsync, pname: GLenum, count: GLsizei, length: GLsizei, values: GLint) void{
   return function_map.current.?.glGetSynciv(sync, pname, count, length, values);
}
pub const GL_SAMPLE_POSITION: comptime_int = 0x8E50;
pub const GL_SAMPLE_MASK: comptime_int = 0x8E51;
pub const GL_SAMPLE_MASK_VALUE: comptime_int = 0x8E52;
pub const GL_MAX_SAMPLE_MASK_WORDS: comptime_int = 0x8E59;
pub const GL_TEXTURE_2D_MULTISAMPLE: comptime_int = 0x9100;
pub const GL_PROXY_TEXTURE_2D_MULTISAMPLE: comptime_int = 0x9101;
pub const GL_TEXTURE_2D_MULTISAMPLE_ARRAY: comptime_int = 0x9102;
pub const GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY: comptime_int = 0x9103;
pub const GL_TEXTURE_BINDING_2D_MULTISAMPLE: comptime_int = 0x9104;
pub const GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY: comptime_int = 0x9105;
pub const GL_TEXTURE_SAMPLES: comptime_int = 0x9106;
pub const GL_TEXTURE_FIXED_SAMPLE_LOCATIONS: comptime_int = 0x9107;
pub const GL_SAMPLER_2D_MULTISAMPLE: comptime_int = 0x9108;
pub const GL_INT_SAMPLER_2D_MULTISAMPLE: comptime_int = 0x9109;
pub const GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE: comptime_int = 0x910A;
pub const GL_SAMPLER_2D_MULTISAMPLE_ARRAY: comptime_int = 0x910B;
pub const GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY: comptime_int = 0x910C;
pub const GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY: comptime_int = 0x910D;
pub const GL_MAX_COLOR_TEXTURE_SAMPLES: comptime_int = 0x910E;
pub const GL_MAX_DEPTH_TEXTURE_SAMPLES: comptime_int = 0x910F;
pub const GL_MAX_INTEGER_SAMPLES: comptime_int = 0x9110;
pub fn glGetInteger64i_v(target: GLenum, index: GLuint, data: GLint64) void{
   return function_map.current.?.glGetInteger64i_v(target, index, data);
}
pub fn glGetBufferParameteri64v(target: GLenum, pname: GLenum, params: GLint64) void{
   return function_map.current.?.glGetBufferParameteri64v(target, pname, params);
}
pub fn glFramebufferTexture(target: GLenum, attachment: GLenum, texture: GLuint, level: GLint) void{
   return function_map.current.?.glFramebufferTexture(target, attachment, texture, level);
}
pub fn glTexImage2DMultisample(target: GLenum, samples: GLsizei, internalformat: GLenum, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean) void{
   return function_map.current.?.glTexImage2DMultisample(target, samples, internalformat, width, height, fixedsamplelocations);
}
pub fn glTexImage3DMultisample(target: GLenum, samples: GLsizei, internalformat: GLenum, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean) void{
   return function_map.current.?.glTexImage3DMultisample(target, samples, internalformat, width, height, depth, fixedsamplelocations);
}
pub fn glGetMultisamplefv(pname: GLenum, index: GLuint, val: GLfloat) void{
   return function_map.current.?.glGetMultisamplefv(pname, index, val);
}
pub fn glSampleMaski(maskNumber: GLuint, mask: GLbitfield) void{
   return function_map.current.?.glSampleMaski(maskNumber, mask);
}
pub const GL_VERTEX_ATTRIB_ARRAY_DIVISOR: comptime_int = 0x88FE;
pub const GL_SRC1_COLOR: comptime_int = 0x88F9;
pub const GL_ONE_MINUS_SRC1_COLOR: comptime_int = 0x88FA;
pub const GL_ONE_MINUS_SRC1_ALPHA: comptime_int = 0x88FB;
pub const GL_MAX_DUAL_SOURCE_DRAW_BUFFERS: comptime_int = 0x88FC;
pub fn glBindFragDataLocationIndexed(program: GLuint, colorNumber: GLuint, index: GLuint, name: GLchar) void{
   return function_map.current.?.glBindFragDataLocationIndexed(program, colorNumber, index, name);
}
pub fn glGetFragDataIndex(program: GLuint, name: GLchar) GLint{
   return function_map.current.?.glGetFragDataIndex(program, name);
}
pub const GL_ANY_SAMPLES_PASSED: comptime_int = 0x8C2F;
pub const GL_SAMPLER_BINDING: comptime_int = 0x8919;
pub fn glGenSamplers(count: GLsizei, samplers: GLuint) void{
   return function_map.current.?.glGenSamplers(count, samplers);
}
pub fn glDeleteSamplers(count: GLsizei, samplers: GLuint) void{
   return function_map.current.?.glDeleteSamplers(count, samplers);
}
pub fn glIsSampler(sampler: GLuint) GLboolean{
   return function_map.current.?.glIsSampler(sampler);
}
pub fn glBindSampler(unit: GLuint, sampler: GLuint) void{
   return function_map.current.?.glBindSampler(unit, sampler);
}
pub fn glSamplerParameteri(sampler: GLuint, pname: GLenum, param: GLint) void{
   return function_map.current.?.glSamplerParameteri(sampler, pname, param);
}
pub fn glSamplerParameteriv(sampler: GLuint, pname: GLenum, param: GLint) void{
   return function_map.current.?.glSamplerParameteriv(sampler, pname, param);
}
pub fn glSamplerParameterf(sampler: GLuint, pname: GLenum, param: GLfloat) void{
   return function_map.current.?.glSamplerParameterf(sampler, pname, param);
}
pub fn glSamplerParameterfv(sampler: GLuint, pname: GLenum, param: GLfloat) void{
   return function_map.current.?.glSamplerParameterfv(sampler, pname, param);
}
pub fn glSamplerParameterIiv(sampler: GLuint, pname: GLenum, param: GLint) void{
   return function_map.current.?.glSamplerParameterIiv(sampler, pname, param);
}
pub fn glSamplerParameterIuiv(sampler: GLuint, pname: GLenum, param: GLuint) void{
   return function_map.current.?.glSamplerParameterIuiv(sampler, pname, param);
}
pub fn glGetSamplerParameteriv(sampler: GLuint, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetSamplerParameteriv(sampler, pname, params);
}
pub fn glGetSamplerParameterIiv(sampler: GLuint, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetSamplerParameterIiv(sampler, pname, params);
}
pub fn glGetSamplerParameterfv(sampler: GLuint, pname: GLenum, params: GLfloat) void{
   return function_map.current.?.glGetSamplerParameterfv(sampler, pname, params);
}
pub fn glGetSamplerParameterIuiv(sampler: GLuint, pname: GLenum, params: GLuint) void{
   return function_map.current.?.glGetSamplerParameterIuiv(sampler, pname, params);
}
pub const GL_RGB10_A2UI: comptime_int = 0x906F;
pub const GL_TEXTURE_SWIZZLE_R: comptime_int = 0x8E42;
pub const GL_TEXTURE_SWIZZLE_G: comptime_int = 0x8E43;
pub const GL_TEXTURE_SWIZZLE_B: comptime_int = 0x8E44;
pub const GL_TEXTURE_SWIZZLE_A: comptime_int = 0x8E45;
pub const GL_TEXTURE_SWIZZLE_RGBA: comptime_int = 0x8E46;
pub const GL_TIME_ELAPSED: comptime_int = 0x88BF;
pub const GL_TIMESTAMP: comptime_int = 0x8E28;
pub fn glQueryCounter(id: GLuint, target: GLenum) void{
   return function_map.current.?.glQueryCounter(id, target);
}
pub fn glGetQueryObjecti64v(id: GLuint, pname: GLenum, params: GLint64) void{
   return function_map.current.?.glGetQueryObjecti64v(id, pname, params);
}
pub fn glGetQueryObjectui64v(id: GLuint, pname: GLenum, params: GLuint64) void{
   return function_map.current.?.glGetQueryObjectui64v(id, pname, params);
}
pub const GL_INT_2_10_10_10_REV: comptime_int = 0x8D9F;
pub fn glVertexAttribDivisor(index: GLuint, divisor: GLuint) void{
   return function_map.current.?.glVertexAttribDivisor(index, divisor);
}
pub fn glVertexAttribP1ui(index: GLuint, type: GLenum, normalized: GLboolean, value: GLuint) void{
   return function_map.current.?.glVertexAttribP1ui(index, type, normalized, value);
}
pub fn glVertexAttribP1uiv(index: GLuint, type: GLenum, normalized: GLboolean, value: GLuint) void{
   return function_map.current.?.glVertexAttribP1uiv(index, type, normalized, value);
}
pub fn glVertexAttribP2ui(index: GLuint, type: GLenum, normalized: GLboolean, value: GLuint) void{
   return function_map.current.?.glVertexAttribP2ui(index, type, normalized, value);
}
pub fn glVertexAttribP2uiv(index: GLuint, type: GLenum, normalized: GLboolean, value: GLuint) void{
   return function_map.current.?.glVertexAttribP2uiv(index, type, normalized, value);
}
pub fn glVertexAttribP3ui(index: GLuint, type: GLenum, normalized: GLboolean, value: GLuint) void{
   return function_map.current.?.glVertexAttribP3ui(index, type, normalized, value);
}
pub fn glVertexAttribP3uiv(index: GLuint, type: GLenum, normalized: GLboolean, value: GLuint) void{
   return function_map.current.?.glVertexAttribP3uiv(index, type, normalized, value);
}
pub fn glVertexAttribP4ui(index: GLuint, type: GLenum, normalized: GLboolean, value: GLuint) void{
   return function_map.current.?.glVertexAttribP4ui(index, type, normalized, value);
}
pub fn glVertexAttribP4uiv(index: GLuint, type: GLenum, normalized: GLboolean, value: GLuint) void{
   return function_map.current.?.glVertexAttribP4uiv(index, type, normalized, value);
}
pub const GL_SAMPLE_SHADING: comptime_int = 0x8C36;
pub const GL_MIN_SAMPLE_SHADING_VALUE: comptime_int = 0x8C37;
pub const GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET: comptime_int = 0x8E5E;
pub const GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET: comptime_int = 0x8E5F;
pub const GL_TEXTURE_CUBE_MAP_ARRAY: comptime_int = 0x9009;
pub const GL_TEXTURE_BINDING_CUBE_MAP_ARRAY: comptime_int = 0x900A;
pub const GL_PROXY_TEXTURE_CUBE_MAP_ARRAY: comptime_int = 0x900B;
pub const GL_SAMPLER_CUBE_MAP_ARRAY: comptime_int = 0x900C;
pub const GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW: comptime_int = 0x900D;
pub const GL_INT_SAMPLER_CUBE_MAP_ARRAY: comptime_int = 0x900E;
pub const GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY: comptime_int = 0x900F;
pub fn glMinSampleShading(value: GLfloat) void{
   return function_map.current.?.glMinSampleShading(value);
}
pub fn glBlendEquationi(buf: GLuint, mode: GLenum) void{
   return function_map.current.?.glBlendEquationi(buf, mode);
}
pub fn glBlendEquationSeparatei(buf: GLuint, modeRGB: GLenum, modeAlpha: GLenum) void{
   return function_map.current.?.glBlendEquationSeparatei(buf, modeRGB, modeAlpha);
}
pub fn glBlendFunci(buf: GLuint, src: GLenum, dst: GLenum) void{
   return function_map.current.?.glBlendFunci(buf, src, dst);
}
pub fn glBlendFuncSeparatei(buf: GLuint, srcRGB: GLenum, dstRGB: GLenum, srcAlpha: GLenum, dstAlpha: GLenum) void{
   return function_map.current.?.glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha);
}
pub const GL_DRAW_INDIRECT_BUFFER: comptime_int = 0x8F3F;
pub const GL_DRAW_INDIRECT_BUFFER_BINDING: comptime_int = 0x8F43;
pub fn glDrawArraysIndirect(mode: GLenum, indirect: ?*const anyopaque) void{
   return function_map.current.?.glDrawArraysIndirect(mode, indirect);
}
pub fn glDrawElementsIndirect(mode: GLenum, type: GLenum, indirect: ?*const anyopaque) void{
   return function_map.current.?.glDrawElementsIndirect(mode, type, indirect);
}
pub const GL_GEOMETRY_SHADER_INVOCATIONS: comptime_int = 0x887F;
pub const GL_MAX_GEOMETRY_SHADER_INVOCATIONS: comptime_int = 0x8E5A;
pub const GL_MIN_FRAGMENT_INTERPOLATION_OFFSET: comptime_int = 0x8E5B;
pub const GL_MAX_FRAGMENT_INTERPOLATION_OFFSET: comptime_int = 0x8E5C;
pub const GL_FRAGMENT_INTERPOLATION_OFFSET_BITS: comptime_int = 0x8E5D;
pub const GL_MAX_VERTEX_STREAMS: comptime_int = 0x8E71;
pub const GL_DOUBLE_VEC2: comptime_int = 0x8FFC;
pub const GL_DOUBLE_VEC3: comptime_int = 0x8FFD;
pub const GL_DOUBLE_VEC4: comptime_int = 0x8FFE;
pub const GL_DOUBLE_MAT2: comptime_int = 0x8F46;
pub const GL_DOUBLE_MAT3: comptime_int = 0x8F47;
pub const GL_DOUBLE_MAT4: comptime_int = 0x8F48;
pub const GL_DOUBLE_MAT2x3: comptime_int = 0x8F49;
pub const GL_DOUBLE_MAT2x4: comptime_int = 0x8F4A;
pub const GL_DOUBLE_MAT3x2: comptime_int = 0x8F4B;
pub const GL_DOUBLE_MAT3x4: comptime_int = 0x8F4C;
pub const GL_DOUBLE_MAT4x2: comptime_int = 0x8F4D;
pub const GL_DOUBLE_MAT4x3: comptime_int = 0x8F4E;
pub fn glUniform1d(location: GLint, x: GLdouble) void{
   return function_map.current.?.glUniform1d(location, x);
}
pub fn glUniform2d(location: GLint, x: GLdouble, y: GLdouble) void{
   return function_map.current.?.glUniform2d(location, x, y);
}
pub fn glUniform3d(location: GLint, x: GLdouble, y: GLdouble, z: GLdouble) void{
   return function_map.current.?.glUniform3d(location, x, y, z);
}
pub fn glUniform4d(location: GLint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) void{
   return function_map.current.?.glUniform4d(location, x, y, z, w);
}
pub fn glUniform1dv(location: GLint, count: GLsizei, value: GLdouble) void{
   return function_map.current.?.glUniform1dv(location, count, value);
}
pub fn glUniform2dv(location: GLint, count: GLsizei, value: GLdouble) void{
   return function_map.current.?.glUniform2dv(location, count, value);
}
pub fn glUniform3dv(location: GLint, count: GLsizei, value: GLdouble) void{
   return function_map.current.?.glUniform3dv(location, count, value);
}
pub fn glUniform4dv(location: GLint, count: GLsizei, value: GLdouble) void{
   return function_map.current.?.glUniform4dv(location, count, value);
}
pub fn glUniformMatrix2dv(location: GLint, count: GLsizei, transpose: GLboolean, value: GLdouble) void{
   return function_map.current.?.glUniformMatrix2dv(location, count, transpose, value);
}
pub fn glUniformMatrix3dv(location: GLint, count: GLsizei, transpose: GLboolean, value: GLdouble) void{
   return function_map.current.?.glUniformMatrix3dv(location, count, transpose, value);
}
pub fn glUniformMatrix4dv(location: GLint, count: GLsizei, transpose: GLboolean, value: GLdouble) void{
   return function_map.current.?.glUniformMatrix4dv(location, count, transpose, value);
}
pub fn glUniformMatrix2x3dv(location: GLint, count: GLsizei, transpose: GLboolean, value: GLdouble) void{
   return function_map.current.?.glUniformMatrix2x3dv(location, count, transpose, value);
}
pub fn glUniformMatrix2x4dv(location: GLint, count: GLsizei, transpose: GLboolean, value: GLdouble) void{
   return function_map.current.?.glUniformMatrix2x4dv(location, count, transpose, value);
}
pub fn glUniformMatrix3x2dv(location: GLint, count: GLsizei, transpose: GLboolean, value: GLdouble) void{
   return function_map.current.?.glUniformMatrix3x2dv(location, count, transpose, value);
}
pub fn glUniformMatrix3x4dv(location: GLint, count: GLsizei, transpose: GLboolean, value: GLdouble) void{
   return function_map.current.?.glUniformMatrix3x4dv(location, count, transpose, value);
}
pub fn glUniformMatrix4x2dv(location: GLint, count: GLsizei, transpose: GLboolean, value: GLdouble) void{
   return function_map.current.?.glUniformMatrix4x2dv(location, count, transpose, value);
}
pub fn glUniformMatrix4x3dv(location: GLint, count: GLsizei, transpose: GLboolean, value: GLdouble) void{
   return function_map.current.?.glUniformMatrix4x3dv(location, count, transpose, value);
}
pub fn glGetUniformdv(program: GLuint, location: GLint, params: GLdouble) void{
   return function_map.current.?.glGetUniformdv(program, location, params);
}
pub const GL_ACTIVE_SUBROUTINES: comptime_int = 0x8DE5;
pub const GL_ACTIVE_SUBROUTINE_UNIFORMS: comptime_int = 0x8DE6;
pub const GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS: comptime_int = 0x8E47;
pub const GL_ACTIVE_SUBROUTINE_MAX_LENGTH: comptime_int = 0x8E48;
pub const GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH: comptime_int = 0x8E49;
pub const GL_MAX_SUBROUTINES: comptime_int = 0x8DE7;
pub const GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS: comptime_int = 0x8DE8;
pub const GL_NUM_COMPATIBLE_SUBROUTINES: comptime_int = 0x8E4A;
pub const GL_COMPATIBLE_SUBROUTINES: comptime_int = 0x8E4B;
pub fn glGetSubroutineUniformLocation(program: GLuint, shadertype: GLenum, name: GLchar) GLint{
   return function_map.current.?.glGetSubroutineUniformLocation(program, shadertype, name);
}
pub fn glGetSubroutineIndex(program: GLuint, shadertype: GLenum, name: GLchar) GLuint{
   return function_map.current.?.glGetSubroutineIndex(program, shadertype, name);
}
pub fn glGetActiveSubroutineUniformiv(program: GLuint, shadertype: GLenum, index: GLuint, pname: GLenum, values: GLint) void{
   return function_map.current.?.glGetActiveSubroutineUniformiv(program, shadertype, index, pname, values);
}
pub fn glGetActiveSubroutineUniformName(program: GLuint, shadertype: GLenum, index: GLuint, bufSize: GLsizei, length: GLsizei, name: GLchar) void{
   return function_map.current.?.glGetActiveSubroutineUniformName(program, shadertype, index, bufSize, length, name);
}
pub fn glGetActiveSubroutineName(program: GLuint, shadertype: GLenum, index: GLuint, bufSize: GLsizei, length: GLsizei, name: GLchar) void{
   return function_map.current.?.glGetActiveSubroutineName(program, shadertype, index, bufSize, length, name);
}
pub fn glUniformSubroutinesuiv(shadertype: GLenum, count: GLsizei, indices: GLuint) void{
   return function_map.current.?.glUniformSubroutinesuiv(shadertype, count, indices);
}
pub fn glGetUniformSubroutineuiv(shadertype: GLenum, location: GLint, params: GLuint) void{
   return function_map.current.?.glGetUniformSubroutineuiv(shadertype, location, params);
}
pub fn glGetProgramStageiv(program: GLuint, shadertype: GLenum, pname: GLenum, values: GLint) void{
   return function_map.current.?.glGetProgramStageiv(program, shadertype, pname, values);
}
pub const GL_PATCHES: comptime_int = 0x000E;
pub const GL_PATCH_VERTICES: comptime_int = 0x8E72;
pub const GL_PATCH_DEFAULT_INNER_LEVEL: comptime_int = 0x8E73;
pub const GL_PATCH_DEFAULT_OUTER_LEVEL: comptime_int = 0x8E74;
pub const GL_TESS_CONTROL_OUTPUT_VERTICES: comptime_int = 0x8E75;
pub const GL_TESS_GEN_MODE: comptime_int = 0x8E76;
pub const GL_TESS_GEN_SPACING: comptime_int = 0x8E77;
pub const GL_TESS_GEN_VERTEX_ORDER: comptime_int = 0x8E78;
pub const GL_TESS_GEN_POINT_MODE: comptime_int = 0x8E79;
pub const GL_ISOLINES: comptime_int = 0x8E7A;
pub const GL_QUADS: comptime_int = 0x0007;
pub const GL_FRACTIONAL_ODD: comptime_int = 0x8E7B;
pub const GL_FRACTIONAL_EVEN: comptime_int = 0x8E7C;
pub const GL_MAX_PATCH_VERTICES: comptime_int = 0x8E7D;
pub const GL_MAX_TESS_GEN_LEVEL: comptime_int = 0x8E7E;
pub const GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS: comptime_int = 0x8E7F;
pub const GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS: comptime_int = 0x8E80;
pub const GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS: comptime_int = 0x8E81;
pub const GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS: comptime_int = 0x8E82;
pub const GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS: comptime_int = 0x8E83;
pub const GL_MAX_TESS_PATCH_COMPONENTS: comptime_int = 0x8E84;
pub const GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS: comptime_int = 0x8E85;
pub const GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS: comptime_int = 0x8E86;
pub const GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS: comptime_int = 0x8E89;
pub const GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS: comptime_int = 0x8E8A;
pub const GL_MAX_TESS_CONTROL_INPUT_COMPONENTS: comptime_int = 0x886C;
pub const GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS: comptime_int = 0x886D;
pub const GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS: comptime_int = 0x8E1E;
pub const GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS: comptime_int = 0x8E1F;
pub const GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER: comptime_int = 0x84F0;
pub const GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER: comptime_int = 0x84F1;
pub const GL_TESS_EVALUATION_SHADER: comptime_int = 0x8E87;
pub const GL_TESS_CONTROL_SHADER: comptime_int = 0x8E88;
pub fn glPatchParameteri(pname: GLenum, value: GLint) void{
   return function_map.current.?.glPatchParameteri(pname, value);
}
pub fn glPatchParameterfv(pname: GLenum, values: GLfloat) void{
   return function_map.current.?.glPatchParameterfv(pname, values);
}
pub const GL_TRANSFORM_FEEDBACK: comptime_int = 0x8E22;
pub const GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED: comptime_int = 0x8E23;
pub const GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE: comptime_int = 0x8E24;
pub const GL_TRANSFORM_FEEDBACK_BINDING: comptime_int = 0x8E25;
pub fn glBindTransformFeedback(target: GLenum, id: GLuint) void{
   return function_map.current.?.glBindTransformFeedback(target, id);
}
pub fn glDeleteTransformFeedbacks(n: GLsizei, ids: GLuint) void{
   return function_map.current.?.glDeleteTransformFeedbacks(n, ids);
}
pub fn glGenTransformFeedbacks(n: GLsizei, ids: GLuint) void{
   return function_map.current.?.glGenTransformFeedbacks(n, ids);
}
pub fn glIsTransformFeedback(id: GLuint) GLboolean{
   return function_map.current.?.glIsTransformFeedback(id);
}
pub fn glPauseTransformFeedback() void{
   return function_map.current.?.glPauseTransformFeedback();
}
pub fn glResumeTransformFeedback() void{
   return function_map.current.?.glResumeTransformFeedback();
}
pub fn glDrawTransformFeedback(mode: GLenum, id: GLuint) void{
   return function_map.current.?.glDrawTransformFeedback(mode, id);
}
pub const GL_MAX_TRANSFORM_FEEDBACK_BUFFERS: comptime_int = 0x8E70;
pub const GL_MAX_VERTEX_STREAMS: comptime_int = 0x8E71;
pub fn glDrawTransformFeedbackStream(mode: GLenum, id: GLuint, stream: GLuint) void{
   return function_map.current.?.glDrawTransformFeedbackStream(mode, id, stream);
}
pub fn glBeginQueryIndexed(target: GLenum, index: GLuint, id: GLuint) void{
   return function_map.current.?.glBeginQueryIndexed(target, index, id);
}
pub fn glEndQueryIndexed(target: GLenum, index: GLuint) void{
   return function_map.current.?.glEndQueryIndexed(target, index);
}
pub fn glGetQueryIndexediv(target: GLenum, index: GLuint, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetQueryIndexediv(target, index, pname, params);
}
pub const GL_FIXED: comptime_int = 0x140C;
pub const GL_IMPLEMENTATION_COLOR_READ_TYPE: comptime_int = 0x8B9A;
pub const GL_IMPLEMENTATION_COLOR_READ_FORMAT: comptime_int = 0x8B9B;
pub const GL_LOW_FLOAT: comptime_int = 0x8DF0;
pub const GL_MEDIUM_FLOAT: comptime_int = 0x8DF1;
pub const GL_HIGH_FLOAT: comptime_int = 0x8DF2;
pub const GL_LOW_INT: comptime_int = 0x8DF3;
pub const GL_MEDIUM_INT: comptime_int = 0x8DF4;
pub const GL_HIGH_INT: comptime_int = 0x8DF5;
pub const GL_SHADER_COMPILER: comptime_int = 0x8DFA;
pub const GL_SHADER_BINARY_FORMATS: comptime_int = 0x8DF8;
pub const GL_NUM_SHADER_BINARY_FORMATS: comptime_int = 0x8DF9;
pub const GL_MAX_VERTEX_UNIFORM_VECTORS: comptime_int = 0x8DFB;
pub const GL_MAX_VARYING_VECTORS: comptime_int = 0x8DFC;
pub const GL_MAX_FRAGMENT_UNIFORM_VECTORS: comptime_int = 0x8DFD;
pub const GL_RGB565: comptime_int = 0x8D62;
pub const GL_PROGRAM_BINARY_RETRIEVABLE_HINT: comptime_int = 0x8257;
pub const GL_PROGRAM_BINARY_LENGTH: comptime_int = 0x8741;
pub const GL_NUM_PROGRAM_BINARY_FORMATS: comptime_int = 0x87FE;
pub const GL_PROGRAM_BINARY_FORMATS: comptime_int = 0x87FF;
pub const GL_VERTEX_SHADER_BIT: comptime_int = 0x00000001;
pub const GL_FRAGMENT_SHADER_BIT: comptime_int = 0x00000002;
pub const GL_GEOMETRY_SHADER_BIT: comptime_int = 0x00000004;
pub const GL_TESS_CONTROL_SHADER_BIT: comptime_int = 0x00000008;
pub const GL_TESS_EVALUATION_SHADER_BIT: comptime_int = 0x00000010;
pub const GL_ALL_SHADER_BITS: comptime_int = 0xFFFFFFFF;
pub const GL_PROGRAM_SEPARABLE: comptime_int = 0x8258;
pub const GL_ACTIVE_PROGRAM: comptime_int = 0x8259;
pub const GL_PROGRAM_PIPELINE_BINDING: comptime_int = 0x825A;
pub const GL_MAX_VIEWPORTS: comptime_int = 0x825B;
pub const GL_VIEWPORT_SUBPIXEL_BITS: comptime_int = 0x825C;
pub const GL_VIEWPORT_BOUNDS_RANGE: comptime_int = 0x825D;
pub const GL_LAYER_PROVOKING_VERTEX: comptime_int = 0x825E;
pub const GL_VIEWPORT_INDEX_PROVOKING_VERTEX: comptime_int = 0x825F;
pub const GL_UNDEFINED_VERTEX: comptime_int = 0x8260;
pub fn glReleaseShaderCompiler() void{
   return function_map.current.?.glReleaseShaderCompiler();
}
pub fn glShaderBinary(count: GLsizei, shaders: GLuint, binaryFormat: GLenum, binary: ?*const anyopaque, length: GLsizei) void{
   return function_map.current.?.glShaderBinary(count, shaders, binaryFormat, binary, length);
}
pub fn glGetShaderPrecisionFormat(shadertype: GLenum, precisiontype: GLenum, range: GLint, precision: GLint) void{
   return function_map.current.?.glGetShaderPrecisionFormat(shadertype, precisiontype, range, precision);
}
pub fn glDepthRangef(n: GLfloat, f: GLfloat) void{
   return function_map.current.?.glDepthRangef(n, f);
}
pub fn glClearDepthf(d: GLfloat) void{
   return function_map.current.?.glClearDepthf(d);
}
pub fn glGetProgramBinary(program: GLuint, bufSize: GLsizei, length: GLsizei, binaryFormat: GLenum, binary: ?*const anyopaque) void{
   return function_map.current.?.glGetProgramBinary(program, bufSize, length, binaryFormat, binary);
}
pub fn glProgramBinary(program: GLuint, binaryFormat: GLenum, binary: ?*const anyopaque, length: GLsizei) void{
   return function_map.current.?.glProgramBinary(program, binaryFormat, binary, length);
}
pub fn glProgramParameteri(program: GLuint, pname: GLenum, value: GLint) void{
   return function_map.current.?.glProgramParameteri(program, pname, value);
}
pub fn glUseProgramStages(pipeline: GLuint, stages: GLbitfield, program: GLuint) void{
   return function_map.current.?.glUseProgramStages(pipeline, stages, program);
}
pub fn glActiveShaderProgram(pipeline: GLuint, program: GLuint) void{
   return function_map.current.?.glActiveShaderProgram(pipeline, program);
}
pub fn glCreateShaderProgramv(type: GLenum, count: GLsizei, strings: GLchar) GLuint{
   return function_map.current.?.glCreateShaderProgramv(type, count, strings);
}
pub fn glBindProgramPipeline(pipeline: GLuint) void{
   return function_map.current.?.glBindProgramPipeline(pipeline);
}
pub fn glDeleteProgramPipelines(n: GLsizei, pipelines: GLuint) void{
   return function_map.current.?.glDeleteProgramPipelines(n, pipelines);
}
pub fn glGenProgramPipelines(n: GLsizei, pipelines: GLuint) void{
   return function_map.current.?.glGenProgramPipelines(n, pipelines);
}
pub fn glIsProgramPipeline(pipeline: GLuint) GLboolean{
   return function_map.current.?.glIsProgramPipeline(pipeline);
}
pub fn glGetProgramPipelineiv(pipeline: GLuint, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetProgramPipelineiv(pipeline, pname, params);
}
pub fn glProgramParameteri(program: GLuint, pname: GLenum, value: GLint) void{
   return function_map.current.?.glProgramParameteri(program, pname, value);
}
pub fn glProgramUniform1i(program: GLuint, location: GLint, v0: GLint) void{
   return function_map.current.?.glProgramUniform1i(program, location, v0);
}
pub fn glProgramUniform1iv(program: GLuint, location: GLint, count: GLsizei, value: GLint) void{
   return function_map.current.?.glProgramUniform1iv(program, location, count, value);
}
pub fn glProgramUniform1f(program: GLuint, location: GLint, v0: GLfloat) void{
   return function_map.current.?.glProgramUniform1f(program, location, v0);
}
pub fn glProgramUniform1fv(program: GLuint, location: GLint, count: GLsizei, value: GLfloat) void{
   return function_map.current.?.glProgramUniform1fv(program, location, count, value);
}
pub fn glProgramUniform1d(program: GLuint, location: GLint, v0: GLdouble) void{
   return function_map.current.?.glProgramUniform1d(program, location, v0);
}
pub fn glProgramUniform1dv(program: GLuint, location: GLint, count: GLsizei, value: GLdouble) void{
   return function_map.current.?.glProgramUniform1dv(program, location, count, value);
}
pub fn glProgramUniform1ui(program: GLuint, location: GLint, v0: GLuint) void{
   return function_map.current.?.glProgramUniform1ui(program, location, v0);
}
pub fn glProgramUniform1uiv(program: GLuint, location: GLint, count: GLsizei, value: GLuint) void{
   return function_map.current.?.glProgramUniform1uiv(program, location, count, value);
}
pub fn glProgramUniform2i(program: GLuint, location: GLint, v0: GLint, v1: GLint) void{
   return function_map.current.?.glProgramUniform2i(program, location, v0, v1);
}
pub fn glProgramUniform2iv(program: GLuint, location: GLint, count: GLsizei, value: GLint) void{
   return function_map.current.?.glProgramUniform2iv(program, location, count, value);
}
pub fn glProgramUniform2f(program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat) void{
   return function_map.current.?.glProgramUniform2f(program, location, v0, v1);
}
pub fn glProgramUniform2fv(program: GLuint, location: GLint, count: GLsizei, value: GLfloat) void{
   return function_map.current.?.glProgramUniform2fv(program, location, count, value);
}
pub fn glProgramUniform2d(program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble) void{
   return function_map.current.?.glProgramUniform2d(program, location, v0, v1);
}
pub fn glProgramUniform2dv(program: GLuint, location: GLint, count: GLsizei, value: GLdouble) void{
   return function_map.current.?.glProgramUniform2dv(program, location, count, value);
}
pub fn glProgramUniform2ui(program: GLuint, location: GLint, v0: GLuint, v1: GLuint) void{
   return function_map.current.?.glProgramUniform2ui(program, location, v0, v1);
}
pub fn glProgramUniform2uiv(program: GLuint, location: GLint, count: GLsizei, value: GLuint) void{
   return function_map.current.?.glProgramUniform2uiv(program, location, count, value);
}
pub fn glProgramUniform3i(program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint) void{
   return function_map.current.?.glProgramUniform3i(program, location, v0, v1, v2);
}
pub fn glProgramUniform3iv(program: GLuint, location: GLint, count: GLsizei, value: GLint) void{
   return function_map.current.?.glProgramUniform3iv(program, location, count, value);
}
pub fn glProgramUniform3f(program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat) void{
   return function_map.current.?.glProgramUniform3f(program, location, v0, v1, v2);
}
pub fn glProgramUniform3fv(program: GLuint, location: GLint, count: GLsizei, value: GLfloat) void{
   return function_map.current.?.glProgramUniform3fv(program, location, count, value);
}
pub fn glProgramUniform3d(program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble) void{
   return function_map.current.?.glProgramUniform3d(program, location, v0, v1, v2);
}
pub fn glProgramUniform3dv(program: GLuint, location: GLint, count: GLsizei, value: GLdouble) void{
   return function_map.current.?.glProgramUniform3dv(program, location, count, value);
}
pub fn glProgramUniform3ui(program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint) void{
   return function_map.current.?.glProgramUniform3ui(program, location, v0, v1, v2);
}
pub fn glProgramUniform3uiv(program: GLuint, location: GLint, count: GLsizei, value: GLuint) void{
   return function_map.current.?.glProgramUniform3uiv(program, location, count, value);
}
pub fn glProgramUniform4i(program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint) void{
   return function_map.current.?.glProgramUniform4i(program, location, v0, v1, v2, v3);
}
pub fn glProgramUniform4iv(program: GLuint, location: GLint, count: GLsizei, value: GLint) void{
   return function_map.current.?.glProgramUniform4iv(program, location, count, value);
}
pub fn glProgramUniform4f(program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat) void{
   return function_map.current.?.glProgramUniform4f(program, location, v0, v1, v2, v3);
}
pub fn glProgramUniform4fv(program: GLuint, location: GLint, count: GLsizei, value: GLfloat) void{
   return function_map.current.?.glProgramUniform4fv(program, location, count, value);
}
pub fn glProgramUniform4d(program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble, v3: GLdouble) void{
   return function_map.current.?.glProgramUniform4d(program, location, v0, v1, v2, v3);
}
pub fn glProgramUniform4dv(program: GLuint, location: GLint, count: GLsizei, value: GLdouble) void{
   return function_map.current.?.glProgramUniform4dv(program, location, count, value);
}
pub fn glProgramUniform4ui(program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint) void{
   return function_map.current.?.glProgramUniform4ui(program, location, v0, v1, v2, v3);
}
pub fn glProgramUniform4uiv(program: GLuint, location: GLint, count: GLsizei, value: GLuint) void{
   return function_map.current.?.glProgramUniform4uiv(program, location, count, value);
}
pub fn glProgramUniformMatrix2fv(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: GLfloat) void{
   return function_map.current.?.glProgramUniformMatrix2fv(program, location, count, transpose, value);
}
pub fn glProgramUniformMatrix3fv(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: GLfloat) void{
   return function_map.current.?.glProgramUniformMatrix3fv(program, location, count, transpose, value);
}
pub fn glProgramUniformMatrix4fv(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: GLfloat) void{
   return function_map.current.?.glProgramUniformMatrix4fv(program, location, count, transpose, value);
}
pub fn glProgramUniformMatrix2dv(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: GLdouble) void{
   return function_map.current.?.glProgramUniformMatrix2dv(program, location, count, transpose, value);
}
pub fn glProgramUniformMatrix3dv(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: GLdouble) void{
   return function_map.current.?.glProgramUniformMatrix3dv(program, location, count, transpose, value);
}
pub fn glProgramUniformMatrix4dv(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: GLdouble) void{
   return function_map.current.?.glProgramUniformMatrix4dv(program, location, count, transpose, value);
}
pub fn glProgramUniformMatrix2x3fv(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: GLfloat) void{
   return function_map.current.?.glProgramUniformMatrix2x3fv(program, location, count, transpose, value);
}
pub fn glProgramUniformMatrix3x2fv(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: GLfloat) void{
   return function_map.current.?.glProgramUniformMatrix3x2fv(program, location, count, transpose, value);
}
pub fn glProgramUniformMatrix2x4fv(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: GLfloat) void{
   return function_map.current.?.glProgramUniformMatrix2x4fv(program, location, count, transpose, value);
}
pub fn glProgramUniformMatrix4x2fv(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: GLfloat) void{
   return function_map.current.?.glProgramUniformMatrix4x2fv(program, location, count, transpose, value);
}
pub fn glProgramUniformMatrix3x4fv(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: GLfloat) void{
   return function_map.current.?.glProgramUniformMatrix3x4fv(program, location, count, transpose, value);
}
pub fn glProgramUniformMatrix4x3fv(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: GLfloat) void{
   return function_map.current.?.glProgramUniformMatrix4x3fv(program, location, count, transpose, value);
}
pub fn glProgramUniformMatrix2x3dv(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: GLdouble) void{
   return function_map.current.?.glProgramUniformMatrix2x3dv(program, location, count, transpose, value);
}
pub fn glProgramUniformMatrix3x2dv(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: GLdouble) void{
   return function_map.current.?.glProgramUniformMatrix3x2dv(program, location, count, transpose, value);
}
pub fn glProgramUniformMatrix2x4dv(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: GLdouble) void{
   return function_map.current.?.glProgramUniformMatrix2x4dv(program, location, count, transpose, value);
}
pub fn glProgramUniformMatrix4x2dv(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: GLdouble) void{
   return function_map.current.?.glProgramUniformMatrix4x2dv(program, location, count, transpose, value);
}
pub fn glProgramUniformMatrix3x4dv(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: GLdouble) void{
   return function_map.current.?.glProgramUniformMatrix3x4dv(program, location, count, transpose, value);
}
pub fn glProgramUniformMatrix4x3dv(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: GLdouble) void{
   return function_map.current.?.glProgramUniformMatrix4x3dv(program, location, count, transpose, value);
}
pub fn glValidateProgramPipeline(pipeline: GLuint) void{
   return function_map.current.?.glValidateProgramPipeline(pipeline);
}
pub fn glGetProgramPipelineInfoLog(pipeline: GLuint, bufSize: GLsizei, length: GLsizei, infoLog: GLchar) void{
   return function_map.current.?.glGetProgramPipelineInfoLog(pipeline, bufSize, length, infoLog);
}
pub fn glVertexAttribL1d(index: GLuint, x: GLdouble) void{
   return function_map.current.?.glVertexAttribL1d(index, x);
}
pub fn glVertexAttribL2d(index: GLuint, x: GLdouble, y: GLdouble) void{
   return function_map.current.?.glVertexAttribL2d(index, x, y);
}
pub fn glVertexAttribL3d(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble) void{
   return function_map.current.?.glVertexAttribL3d(index, x, y, z);
}
pub fn glVertexAttribL4d(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) void{
   return function_map.current.?.glVertexAttribL4d(index, x, y, z, w);
}
pub fn glVertexAttribL1dv(index: GLuint, v: GLdouble) void{
   return function_map.current.?.glVertexAttribL1dv(index, v);
}
pub fn glVertexAttribL2dv(index: GLuint, v: GLdouble) void{
   return function_map.current.?.glVertexAttribL2dv(index, v);
}
pub fn glVertexAttribL3dv(index: GLuint, v: GLdouble) void{
   return function_map.current.?.glVertexAttribL3dv(index, v);
}
pub fn glVertexAttribL4dv(index: GLuint, v: GLdouble) void{
   return function_map.current.?.glVertexAttribL4dv(index, v);
}
pub fn glVertexAttribLPointer(index: GLuint, size: GLint, type: GLenum, stride: GLsizei, pointer: ?*const anyopaque) void{
   return function_map.current.?.glVertexAttribLPointer(index, size, type, stride, pointer);
}
pub fn glGetVertexAttribLdv(index: GLuint, pname: GLenum, params: GLdouble) void{
   return function_map.current.?.glGetVertexAttribLdv(index, pname, params);
}
pub fn glViewportArrayv(first: GLuint, count: GLsizei, v: GLfloat) void{
   return function_map.current.?.glViewportArrayv(first, count, v);
}
pub fn glViewportIndexedf(index: GLuint, x: GLfloat, y: GLfloat, w: GLfloat, h: GLfloat) void{
   return function_map.current.?.glViewportIndexedf(index, x, y, w, h);
}
pub fn glViewportIndexedfv(index: GLuint, v: GLfloat) void{
   return function_map.current.?.glViewportIndexedfv(index, v);
}
pub fn glScissorArrayv(first: GLuint, count: GLsizei, v: GLint) void{
   return function_map.current.?.glScissorArrayv(first, count, v);
}
pub fn glScissorIndexed(index: GLuint, left: GLint, bottom: GLint, width: GLsizei, height: GLsizei) void{
   return function_map.current.?.glScissorIndexed(index, left, bottom, width, height);
}
pub fn glScissorIndexedv(index: GLuint, v: GLint) void{
   return function_map.current.?.glScissorIndexedv(index, v);
}
pub fn glDepthRangeArrayv(first: GLuint, count: GLsizei, v: GLdouble) void{
   return function_map.current.?.glDepthRangeArrayv(first, count, v);
}
pub fn glDepthRangeIndexed(index: GLuint, n: GLdouble, f: GLdouble) void{
   return function_map.current.?.glDepthRangeIndexed(index, n, f);
}
pub fn glGetFloati_v(target: GLenum, index: GLuint, data: GLfloat) void{
   return function_map.current.?.glGetFloati_v(target, index, data);
}
pub fn glGetDoublei_v(target: GLenum, index: GLuint, data: GLdouble) void{
   return function_map.current.?.glGetDoublei_v(target, index, data);
}
pub const GL_COPY_READ_BUFFER_BINDING: comptime_int = 0x8F36;
pub const GL_COPY_WRITE_BUFFER_BINDING: comptime_int = 0x8F37;
pub const GL_TRANSFORM_FEEDBACK_ACTIVE: comptime_int = 0x8E24;
pub const GL_TRANSFORM_FEEDBACK_PAUSED: comptime_int = 0x8E23;
pub const GL_UNPACK_COMPRESSED_BLOCK_WIDTH: comptime_int = 0x9127;
pub const GL_UNPACK_COMPRESSED_BLOCK_HEIGHT: comptime_int = 0x9128;
pub const GL_UNPACK_COMPRESSED_BLOCK_DEPTH: comptime_int = 0x9129;
pub const GL_UNPACK_COMPRESSED_BLOCK_SIZE: comptime_int = 0x912A;
pub const GL_PACK_COMPRESSED_BLOCK_WIDTH: comptime_int = 0x912B;
pub const GL_PACK_COMPRESSED_BLOCK_HEIGHT: comptime_int = 0x912C;
pub const GL_PACK_COMPRESSED_BLOCK_DEPTH: comptime_int = 0x912D;
pub const GL_PACK_COMPRESSED_BLOCK_SIZE: comptime_int = 0x912E;
pub const GL_NUM_SAMPLE_COUNTS: comptime_int = 0x9380;
pub const GL_MIN_MAP_BUFFER_ALIGNMENT: comptime_int = 0x90BC;
pub const GL_ATOMIC_COUNTER_BUFFER: comptime_int = 0x92C0;
pub const GL_ATOMIC_COUNTER_BUFFER_BINDING: comptime_int = 0x92C1;
pub const GL_ATOMIC_COUNTER_BUFFER_START: comptime_int = 0x92C2;
pub const GL_ATOMIC_COUNTER_BUFFER_SIZE: comptime_int = 0x92C3;
pub const GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE: comptime_int = 0x92C4;
pub const GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS: comptime_int = 0x92C5;
pub const GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES: comptime_int = 0x92C6;
pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER: comptime_int = 0x92C7;
pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER: comptime_int = 0x92C8;
pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER: comptime_int = 0x92C9;
pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER: comptime_int = 0x92CA;
pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER: comptime_int = 0x92CB;
pub const GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS: comptime_int = 0x92CC;
pub const GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS: comptime_int = 0x92CD;
pub const GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS: comptime_int = 0x92CE;
pub const GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS: comptime_int = 0x92CF;
pub const GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS: comptime_int = 0x92D0;
pub const GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS: comptime_int = 0x92D1;
pub const GL_MAX_VERTEX_ATOMIC_COUNTERS: comptime_int = 0x92D2;
pub const GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS: comptime_int = 0x92D3;
pub const GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS: comptime_int = 0x92D4;
pub const GL_MAX_GEOMETRY_ATOMIC_COUNTERS: comptime_int = 0x92D5;
pub const GL_MAX_FRAGMENT_ATOMIC_COUNTERS: comptime_int = 0x92D6;
pub const GL_MAX_COMBINED_ATOMIC_COUNTERS: comptime_int = 0x92D7;
pub const GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE: comptime_int = 0x92D8;
pub const GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS: comptime_int = 0x92DC;
pub const GL_ACTIVE_ATOMIC_COUNTER_BUFFERS: comptime_int = 0x92D9;
pub const GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX: comptime_int = 0x92DA;
pub const GL_UNSIGNED_INT_ATOMIC_COUNTER: comptime_int = 0x92DB;
pub const GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT: comptime_int = 0x00000001;
pub const GL_ELEMENT_ARRAY_BARRIER_BIT: comptime_int = 0x00000002;
pub const GL_UNIFORM_BARRIER_BIT: comptime_int = 0x00000004;
pub const GL_TEXTURE_FETCH_BARRIER_BIT: comptime_int = 0x00000008;
pub const GL_SHADER_IMAGE_ACCESS_BARRIER_BIT: comptime_int = 0x00000020;
pub const GL_COMMAND_BARRIER_BIT: comptime_int = 0x00000040;
pub const GL_PIXEL_BUFFER_BARRIER_BIT: comptime_int = 0x00000080;
pub const GL_TEXTURE_UPDATE_BARRIER_BIT: comptime_int = 0x00000100;
pub const GL_BUFFER_UPDATE_BARRIER_BIT: comptime_int = 0x00000200;
pub const GL_FRAMEBUFFER_BARRIER_BIT: comptime_int = 0x00000400;
pub const GL_TRANSFORM_FEEDBACK_BARRIER_BIT: comptime_int = 0x00000800;
pub const GL_ATOMIC_COUNTER_BARRIER_BIT: comptime_int = 0x00001000;
pub const GL_ALL_BARRIER_BITS: comptime_int = 0xFFFFFFFF;
pub const GL_MAX_IMAGE_UNITS: comptime_int = 0x8F38;
pub const GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS: comptime_int = 0x8F39;
pub const GL_IMAGE_BINDING_NAME: comptime_int = 0x8F3A;
pub const GL_IMAGE_BINDING_LEVEL: comptime_int = 0x8F3B;
pub const GL_IMAGE_BINDING_LAYERED: comptime_int = 0x8F3C;
pub const GL_IMAGE_BINDING_LAYER: comptime_int = 0x8F3D;
pub const GL_IMAGE_BINDING_ACCESS: comptime_int = 0x8F3E;
pub const GL_IMAGE_1D: comptime_int = 0x904C;
pub const GL_IMAGE_2D: comptime_int = 0x904D;
pub const GL_IMAGE_3D: comptime_int = 0x904E;
pub const GL_IMAGE_2D_RECT: comptime_int = 0x904F;
pub const GL_IMAGE_CUBE: comptime_int = 0x9050;
pub const GL_IMAGE_BUFFER: comptime_int = 0x9051;
pub const GL_IMAGE_1D_ARRAY: comptime_int = 0x9052;
pub const GL_IMAGE_2D_ARRAY: comptime_int = 0x9053;
pub const GL_IMAGE_CUBE_MAP_ARRAY: comptime_int = 0x9054;
pub const GL_IMAGE_2D_MULTISAMPLE: comptime_int = 0x9055;
pub const GL_IMAGE_2D_MULTISAMPLE_ARRAY: comptime_int = 0x9056;
pub const GL_INT_IMAGE_1D: comptime_int = 0x9057;
pub const GL_INT_IMAGE_2D: comptime_int = 0x9058;
pub const GL_INT_IMAGE_3D: comptime_int = 0x9059;
pub const GL_INT_IMAGE_2D_RECT: comptime_int = 0x905A;
pub const GL_INT_IMAGE_CUBE: comptime_int = 0x905B;
pub const GL_INT_IMAGE_BUFFER: comptime_int = 0x905C;
pub const GL_INT_IMAGE_1D_ARRAY: comptime_int = 0x905D;
pub const GL_INT_IMAGE_2D_ARRAY: comptime_int = 0x905E;
pub const GL_INT_IMAGE_CUBE_MAP_ARRAY: comptime_int = 0x905F;
pub const GL_INT_IMAGE_2D_MULTISAMPLE: comptime_int = 0x9060;
pub const GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY: comptime_int = 0x9061;
pub const GL_UNSIGNED_INT_IMAGE_1D: comptime_int = 0x9062;
pub const GL_UNSIGNED_INT_IMAGE_2D: comptime_int = 0x9063;
pub const GL_UNSIGNED_INT_IMAGE_3D: comptime_int = 0x9064;
pub const GL_UNSIGNED_INT_IMAGE_2D_RECT: comptime_int = 0x9065;
pub const GL_UNSIGNED_INT_IMAGE_CUBE: comptime_int = 0x9066;
pub const GL_UNSIGNED_INT_IMAGE_BUFFER: comptime_int = 0x9067;
pub const GL_UNSIGNED_INT_IMAGE_1D_ARRAY: comptime_int = 0x9068;
pub const GL_UNSIGNED_INT_IMAGE_2D_ARRAY: comptime_int = 0x9069;
pub const GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY: comptime_int = 0x906A;
pub const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE: comptime_int = 0x906B;
pub const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY: comptime_int = 0x906C;
pub const GL_MAX_IMAGE_SAMPLES: comptime_int = 0x906D;
pub const GL_IMAGE_BINDING_FORMAT: comptime_int = 0x906E;
pub const GL_IMAGE_FORMAT_COMPATIBILITY_TYPE: comptime_int = 0x90C7;
pub const GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE: comptime_int = 0x90C8;
pub const GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS: comptime_int = 0x90C9;
pub const GL_MAX_VERTEX_IMAGE_UNIFORMS: comptime_int = 0x90CA;
pub const GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS: comptime_int = 0x90CB;
pub const GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS: comptime_int = 0x90CC;
pub const GL_MAX_GEOMETRY_IMAGE_UNIFORMS: comptime_int = 0x90CD;
pub const GL_MAX_FRAGMENT_IMAGE_UNIFORMS: comptime_int = 0x90CE;
pub const GL_MAX_COMBINED_IMAGE_UNIFORMS: comptime_int = 0x90CF;
pub const GL_COMPRESSED_RGBA_BPTC_UNORM: comptime_int = 0x8E8C;
pub const GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM: comptime_int = 0x8E8D;
pub const GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT: comptime_int = 0x8E8E;
pub const GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT: comptime_int = 0x8E8F;
pub const GL_TEXTURE_IMMUTABLE_FORMAT: comptime_int = 0x912F;
pub fn glDrawArraysInstancedBaseInstance(mode: GLenum, first: GLint, count: GLsizei, instancecount: GLsizei, baseinstance: GLuint) void{
   return function_map.current.?.glDrawArraysInstancedBaseInstance(mode, first, count, instancecount, baseinstance);
}
pub fn glDrawElementsInstancedBaseInstance(mode: GLenum, count: GLsizei, type: GLenum, indices: ?*const anyopaque, instancecount: GLsizei, baseinstance: GLuint) void{
   return function_map.current.?.glDrawElementsInstancedBaseInstance(mode, count, type, indices, instancecount, baseinstance);
}
pub fn glDrawElementsInstancedBaseVertexBaseInstance(mode: GLenum, count: GLsizei, type: GLenum, indices: ?*const anyopaque, instancecount: GLsizei, basevertex: GLint, baseinstance: GLuint) void{
   return function_map.current.?.glDrawElementsInstancedBaseVertexBaseInstance(mode, count, type, indices, instancecount, basevertex, baseinstance);
}
pub fn glGetInternalformativ(target: GLenum, internalformat: GLenum, pname: GLenum, count: GLsizei, params: GLint) void{
   return function_map.current.?.glGetInternalformativ(target, internalformat, pname, count, params);
}
pub fn glGetActiveAtomicCounterBufferiv(program: GLuint, bufferIndex: GLuint, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetActiveAtomicCounterBufferiv(program, bufferIndex, pname, params);
}
pub fn glBindImageTexture(unit: GLuint, texture: GLuint, level: GLint, layered: GLboolean, layer: GLint, access: GLenum, format: GLenum) void{
   return function_map.current.?.glBindImageTexture(unit, texture, level, layered, layer, access, format);
}
pub fn glMemoryBarrier(barriers: GLbitfield) void{
   return function_map.current.?.glMemoryBarrier(barriers);
}
pub fn glTexStorage1D(target: GLenum, levels: GLsizei, internalformat: GLenum, width: GLsizei) void{
   return function_map.current.?.glTexStorage1D(target, levels, internalformat, width);
}
pub fn glTexStorage2D(target: GLenum, levels: GLsizei, internalformat: GLenum, width: GLsizei, height: GLsizei) void{
   return function_map.current.?.glTexStorage2D(target, levels, internalformat, width, height);
}
pub fn glTexStorage3D(target: GLenum, levels: GLsizei, internalformat: GLenum, width: GLsizei, height: GLsizei, depth: GLsizei) void{
   return function_map.current.?.glTexStorage3D(target, levels, internalformat, width, height, depth);
}
pub fn glDrawTransformFeedbackInstanced(mode: GLenum, id: GLuint, instancecount: GLsizei) void{
   return function_map.current.?.glDrawTransformFeedbackInstanced(mode, id, instancecount);
}
pub fn glDrawTransformFeedbackStreamInstanced(mode: GLenum, id: GLuint, stream: GLuint, instancecount: GLsizei) void{
   return function_map.current.?.glDrawTransformFeedbackStreamInstanced(mode, id, stream, instancecount);
}
pub const GL_NUM_SHADING_LANGUAGE_VERSIONS: comptime_int = 0x82E9;
pub const GL_VERTEX_ATTRIB_ARRAY_LONG: comptime_int = 0x874E;
pub const GL_COMPRESSED_RGB8_ETC2: comptime_int = 0x9274;
pub const GL_COMPRESSED_SRGB8_ETC2: comptime_int = 0x9275;
pub const GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2: comptime_int = 0x9276;
pub const GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2: comptime_int = 0x9277;
pub const GL_COMPRESSED_RGBA8_ETC2_EAC: comptime_int = 0x9278;
pub const GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC: comptime_int = 0x9279;
pub const GL_COMPRESSED_R11_EAC: comptime_int = 0x9270;
pub const GL_COMPRESSED_SIGNED_R11_EAC: comptime_int = 0x9271;
pub const GL_COMPRESSED_RG11_EAC: comptime_int = 0x9272;
pub const GL_COMPRESSED_SIGNED_RG11_EAC: comptime_int = 0x9273;
pub const GL_PRIMITIVE_RESTART_FIXED_INDEX: comptime_int = 0x8D69;
pub const GL_ANY_SAMPLES_PASSED_CONSERVATIVE: comptime_int = 0x8D6A;
pub const GL_MAX_ELEMENT_INDEX: comptime_int = 0x8D6B;
pub const GL_COMPUTE_SHADER: comptime_int = 0x91B9;
pub const GL_MAX_COMPUTE_UNIFORM_BLOCKS: comptime_int = 0x91BB;
pub const GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS: comptime_int = 0x91BC;
pub const GL_MAX_COMPUTE_IMAGE_UNIFORMS: comptime_int = 0x91BD;
pub const GL_MAX_COMPUTE_SHARED_MEMORY_SIZE: comptime_int = 0x8262;
pub const GL_MAX_COMPUTE_UNIFORM_COMPONENTS: comptime_int = 0x8263;
pub const GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS: comptime_int = 0x8264;
pub const GL_MAX_COMPUTE_ATOMIC_COUNTERS: comptime_int = 0x8265;
pub const GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS: comptime_int = 0x8266;
pub const GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS: comptime_int = 0x90EB;
pub const GL_MAX_COMPUTE_WORK_GROUP_COUNT: comptime_int = 0x91BE;
pub const GL_MAX_COMPUTE_WORK_GROUP_SIZE: comptime_int = 0x91BF;
pub const GL_COMPUTE_WORK_GROUP_SIZE: comptime_int = 0x8267;
pub const GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER: comptime_int = 0x90EC;
pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER: comptime_int = 0x90ED;
pub const GL_DISPATCH_INDIRECT_BUFFER: comptime_int = 0x90EE;
pub const GL_DISPATCH_INDIRECT_BUFFER_BINDING: comptime_int = 0x90EF;
pub const GL_COMPUTE_SHADER_BIT: comptime_int = 0x00000020;
pub const GL_DEBUG_OUTPUT_SYNCHRONOUS: comptime_int = 0x8242;
pub const GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH: comptime_int = 0x8243;
pub const GL_DEBUG_CALLBACK_FUNCTION: comptime_int = 0x8244;
pub const GL_DEBUG_CALLBACK_USER_PARAM: comptime_int = 0x8245;
pub const GL_DEBUG_SOURCE_API: comptime_int = 0x8246;
pub const GL_DEBUG_SOURCE_WINDOW_SYSTEM: comptime_int = 0x8247;
pub const GL_DEBUG_SOURCE_SHADER_COMPILER: comptime_int = 0x8248;
pub const GL_DEBUG_SOURCE_THIRD_PARTY: comptime_int = 0x8249;
pub const GL_DEBUG_SOURCE_APPLICATION: comptime_int = 0x824A;
pub const GL_DEBUG_SOURCE_OTHER: comptime_int = 0x824B;
pub const GL_DEBUG_TYPE_ERROR: comptime_int = 0x824C;
pub const GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR: comptime_int = 0x824D;
pub const GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR: comptime_int = 0x824E;
pub const GL_DEBUG_TYPE_PORTABILITY: comptime_int = 0x824F;
pub const GL_DEBUG_TYPE_PERFORMANCE: comptime_int = 0x8250;
pub const GL_DEBUG_TYPE_OTHER: comptime_int = 0x8251;
pub const GL_MAX_DEBUG_MESSAGE_LENGTH: comptime_int = 0x9143;
pub const GL_MAX_DEBUG_LOGGED_MESSAGES: comptime_int = 0x9144;
pub const GL_DEBUG_LOGGED_MESSAGES: comptime_int = 0x9145;
pub const GL_DEBUG_SEVERITY_HIGH: comptime_int = 0x9146;
pub const GL_DEBUG_SEVERITY_MEDIUM: comptime_int = 0x9147;
pub const GL_DEBUG_SEVERITY_LOW: comptime_int = 0x9148;
pub const GL_DEBUG_TYPE_MARKER: comptime_int = 0x8268;
pub const GL_DEBUG_TYPE_PUSH_GROUP: comptime_int = 0x8269;
pub const GL_DEBUG_TYPE_POP_GROUP: comptime_int = 0x826A;
pub const GL_DEBUG_SEVERITY_NOTIFICATION: comptime_int = 0x826B;
pub const GL_MAX_DEBUG_GROUP_STACK_DEPTH: comptime_int = 0x826C;
pub const GL_DEBUG_GROUP_STACK_DEPTH: comptime_int = 0x826D;
pub const GL_BUFFER: comptime_int = 0x82E0;
pub const GL_SHADER: comptime_int = 0x82E1;
pub const GL_PROGRAM: comptime_int = 0x82E2;
pub const GL_VERTEX_ARRAY: comptime_int = 0x8074;
pub const GL_QUERY: comptime_int = 0x82E3;
pub const GL_PROGRAM_PIPELINE: comptime_int = 0x82E4;
pub const GL_SAMPLER: comptime_int = 0x82E6;
pub const GL_MAX_LABEL_LENGTH: comptime_int = 0x82E8;
pub const GL_DEBUG_OUTPUT: comptime_int = 0x92E0;
pub const GL_CONTEXT_FLAG_DEBUG_BIT: comptime_int = 0x00000002;
pub const GL_MAX_UNIFORM_LOCATIONS: comptime_int = 0x826E;
pub const GL_FRAMEBUFFER_DEFAULT_WIDTH: comptime_int = 0x9310;
pub const GL_FRAMEBUFFER_DEFAULT_HEIGHT: comptime_int = 0x9311;
pub const GL_FRAMEBUFFER_DEFAULT_LAYERS: comptime_int = 0x9312;
pub const GL_FRAMEBUFFER_DEFAULT_SAMPLES: comptime_int = 0x9313;
pub const GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS: comptime_int = 0x9314;
pub const GL_MAX_FRAMEBUFFER_WIDTH: comptime_int = 0x9315;
pub const GL_MAX_FRAMEBUFFER_HEIGHT: comptime_int = 0x9316;
pub const GL_MAX_FRAMEBUFFER_LAYERS: comptime_int = 0x9317;
pub const GL_MAX_FRAMEBUFFER_SAMPLES: comptime_int = 0x9318;
pub const GL_INTERNALFORMAT_SUPPORTED: comptime_int = 0x826F;
pub const GL_INTERNALFORMAT_PREFERRED: comptime_int = 0x8270;
pub const GL_INTERNALFORMAT_RED_SIZE: comptime_int = 0x8271;
pub const GL_INTERNALFORMAT_GREEN_SIZE: comptime_int = 0x8272;
pub const GL_INTERNALFORMAT_BLUE_SIZE: comptime_int = 0x8273;
pub const GL_INTERNALFORMAT_ALPHA_SIZE: comptime_int = 0x8274;
pub const GL_INTERNALFORMAT_DEPTH_SIZE: comptime_int = 0x8275;
pub const GL_INTERNALFORMAT_STENCIL_SIZE: comptime_int = 0x8276;
pub const GL_INTERNALFORMAT_SHARED_SIZE: comptime_int = 0x8277;
pub const GL_INTERNALFORMAT_RED_TYPE: comptime_int = 0x8278;
pub const GL_INTERNALFORMAT_GREEN_TYPE: comptime_int = 0x8279;
pub const GL_INTERNALFORMAT_BLUE_TYPE: comptime_int = 0x827A;
pub const GL_INTERNALFORMAT_ALPHA_TYPE: comptime_int = 0x827B;
pub const GL_INTERNALFORMAT_DEPTH_TYPE: comptime_int = 0x827C;
pub const GL_INTERNALFORMAT_STENCIL_TYPE: comptime_int = 0x827D;
pub const GL_MAX_WIDTH: comptime_int = 0x827E;
pub const GL_MAX_HEIGHT: comptime_int = 0x827F;
pub const GL_MAX_DEPTH: comptime_int = 0x8280;
pub const GL_MAX_LAYERS: comptime_int = 0x8281;
pub const GL_MAX_COMBINED_DIMENSIONS: comptime_int = 0x8282;
pub const GL_COLOR_COMPONENTS: comptime_int = 0x8283;
pub const GL_DEPTH_COMPONENTS: comptime_int = 0x8284;
pub const GL_STENCIL_COMPONENTS: comptime_int = 0x8285;
pub const GL_COLOR_RENDERABLE: comptime_int = 0x8286;
pub const GL_DEPTH_RENDERABLE: comptime_int = 0x8287;
pub const GL_STENCIL_RENDERABLE: comptime_int = 0x8288;
pub const GL_FRAMEBUFFER_RENDERABLE: comptime_int = 0x8289;
pub const GL_FRAMEBUFFER_RENDERABLE_LAYERED: comptime_int = 0x828A;
pub const GL_FRAMEBUFFER_BLEND: comptime_int = 0x828B;
pub const GL_READ_PIXELS: comptime_int = 0x828C;
pub const GL_READ_PIXELS_FORMAT: comptime_int = 0x828D;
pub const GL_READ_PIXELS_TYPE: comptime_int = 0x828E;
pub const GL_TEXTURE_IMAGE_FORMAT: comptime_int = 0x828F;
pub const GL_TEXTURE_IMAGE_TYPE: comptime_int = 0x8290;
pub const GL_GET_TEXTURE_IMAGE_FORMAT: comptime_int = 0x8291;
pub const GL_GET_TEXTURE_IMAGE_TYPE: comptime_int = 0x8292;
pub const GL_MIPMAP: comptime_int = 0x8293;
pub const GL_MANUAL_GENERATE_MIPMAP: comptime_int = 0x8294;
pub const GL_AUTO_GENERATE_MIPMAP: comptime_int = 0x8295;
pub const GL_COLOR_ENCODING: comptime_int = 0x8296;
pub const GL_SRGB_READ: comptime_int = 0x8297;
pub const GL_SRGB_WRITE: comptime_int = 0x8298;
pub const GL_FILTER: comptime_int = 0x829A;
pub const GL_VERTEX_TEXTURE: comptime_int = 0x829B;
pub const GL_TESS_CONTROL_TEXTURE: comptime_int = 0x829C;
pub const GL_TESS_EVALUATION_TEXTURE: comptime_int = 0x829D;
pub const GL_GEOMETRY_TEXTURE: comptime_int = 0x829E;
pub const GL_FRAGMENT_TEXTURE: comptime_int = 0x829F;
pub const GL_COMPUTE_TEXTURE: comptime_int = 0x82A0;
pub const GL_TEXTURE_SHADOW: comptime_int = 0x82A1;
pub const GL_TEXTURE_GATHER: comptime_int = 0x82A2;
pub const GL_TEXTURE_GATHER_SHADOW: comptime_int = 0x82A3;
pub const GL_SHADER_IMAGE_LOAD: comptime_int = 0x82A4;
pub const GL_SHADER_IMAGE_STORE: comptime_int = 0x82A5;
pub const GL_SHADER_IMAGE_ATOMIC: comptime_int = 0x82A6;
pub const GL_IMAGE_TEXEL_SIZE: comptime_int = 0x82A7;
pub const GL_IMAGE_COMPATIBILITY_CLASS: comptime_int = 0x82A8;
pub const GL_IMAGE_PIXEL_FORMAT: comptime_int = 0x82A9;
pub const GL_IMAGE_PIXEL_TYPE: comptime_int = 0x82AA;
pub const GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST: comptime_int = 0x82AC;
pub const GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST: comptime_int = 0x82AD;
pub const GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE: comptime_int = 0x82AE;
pub const GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE: comptime_int = 0x82AF;
pub const GL_TEXTURE_COMPRESSED_BLOCK_WIDTH: comptime_int = 0x82B1;
pub const GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT: comptime_int = 0x82B2;
pub const GL_TEXTURE_COMPRESSED_BLOCK_SIZE: comptime_int = 0x82B3;
pub const GL_CLEAR_BUFFER: comptime_int = 0x82B4;
pub const GL_TEXTURE_VIEW: comptime_int = 0x82B5;
pub const GL_VIEW_COMPATIBILITY_CLASS: comptime_int = 0x82B6;
pub const GL_FULL_SUPPORT: comptime_int = 0x82B7;
pub const GL_CAVEAT_SUPPORT: comptime_int = 0x82B8;
pub const GL_IMAGE_CLASS_4_X_32: comptime_int = 0x82B9;
pub const GL_IMAGE_CLASS_2_X_32: comptime_int = 0x82BA;
pub const GL_IMAGE_CLASS_1_X_32: comptime_int = 0x82BB;
pub const GL_IMAGE_CLASS_4_X_16: comptime_int = 0x82BC;
pub const GL_IMAGE_CLASS_2_X_16: comptime_int = 0x82BD;
pub const GL_IMAGE_CLASS_1_X_16: comptime_int = 0x82BE;
pub const GL_IMAGE_CLASS_4_X_8: comptime_int = 0x82BF;
pub const GL_IMAGE_CLASS_2_X_8: comptime_int = 0x82C0;
pub const GL_IMAGE_CLASS_1_X_8: comptime_int = 0x82C1;
pub const GL_IMAGE_CLASS_11_11_10: comptime_int = 0x82C2;
pub const GL_IMAGE_CLASS_10_10_10_2: comptime_int = 0x82C3;
pub const GL_VIEW_CLASS_128_BITS: comptime_int = 0x82C4;
pub const GL_VIEW_CLASS_96_BITS: comptime_int = 0x82C5;
pub const GL_VIEW_CLASS_64_BITS: comptime_int = 0x82C6;
pub const GL_VIEW_CLASS_48_BITS: comptime_int = 0x82C7;
pub const GL_VIEW_CLASS_32_BITS: comptime_int = 0x82C8;
pub const GL_VIEW_CLASS_24_BITS: comptime_int = 0x82C9;
pub const GL_VIEW_CLASS_16_BITS: comptime_int = 0x82CA;
pub const GL_VIEW_CLASS_8_BITS: comptime_int = 0x82CB;
pub const GL_VIEW_CLASS_S3TC_DXT1_RGB: comptime_int = 0x82CC;
pub const GL_VIEW_CLASS_S3TC_DXT1_RGBA: comptime_int = 0x82CD;
pub const GL_VIEW_CLASS_S3TC_DXT3_RGBA: comptime_int = 0x82CE;
pub const GL_VIEW_CLASS_S3TC_DXT5_RGBA: comptime_int = 0x82CF;
pub const GL_VIEW_CLASS_RGTC1_RED: comptime_int = 0x82D0;
pub const GL_VIEW_CLASS_RGTC2_RG: comptime_int = 0x82D1;
pub const GL_VIEW_CLASS_BPTC_UNORM: comptime_int = 0x82D2;
pub const GL_VIEW_CLASS_BPTC_FLOAT: comptime_int = 0x82D3;
pub const GL_UNIFORM: comptime_int = 0x92E1;
pub const GL_UNIFORM_BLOCK: comptime_int = 0x92E2;
pub const GL_PROGRAM_INPUT: comptime_int = 0x92E3;
pub const GL_PROGRAM_OUTPUT: comptime_int = 0x92E4;
pub const GL_BUFFER_VARIABLE: comptime_int = 0x92E5;
pub const GL_SHADER_STORAGE_BLOCK: comptime_int = 0x92E6;
pub const GL_VERTEX_SUBROUTINE: comptime_int = 0x92E8;
pub const GL_TESS_CONTROL_SUBROUTINE: comptime_int = 0x92E9;
pub const GL_TESS_EVALUATION_SUBROUTINE: comptime_int = 0x92EA;
pub const GL_GEOMETRY_SUBROUTINE: comptime_int = 0x92EB;
pub const GL_FRAGMENT_SUBROUTINE: comptime_int = 0x92EC;
pub const GL_COMPUTE_SUBROUTINE: comptime_int = 0x92ED;
pub const GL_VERTEX_SUBROUTINE_UNIFORM: comptime_int = 0x92EE;
pub const GL_TESS_CONTROL_SUBROUTINE_UNIFORM: comptime_int = 0x92EF;
pub const GL_TESS_EVALUATION_SUBROUTINE_UNIFORM: comptime_int = 0x92F0;
pub const GL_GEOMETRY_SUBROUTINE_UNIFORM: comptime_int = 0x92F1;
pub const GL_FRAGMENT_SUBROUTINE_UNIFORM: comptime_int = 0x92F2;
pub const GL_COMPUTE_SUBROUTINE_UNIFORM: comptime_int = 0x92F3;
pub const GL_TRANSFORM_FEEDBACK_VARYING: comptime_int = 0x92F4;
pub const GL_ACTIVE_RESOURCES: comptime_int = 0x92F5;
pub const GL_MAX_NAME_LENGTH: comptime_int = 0x92F6;
pub const GL_MAX_NUM_ACTIVE_VARIABLES: comptime_int = 0x92F7;
pub const GL_MAX_NUM_COMPATIBLE_SUBROUTINES: comptime_int = 0x92F8;
pub const GL_NAME_LENGTH: comptime_int = 0x92F9;
pub const GL_TYPE: comptime_int = 0x92FA;
pub const GL_ARRAY_SIZE: comptime_int = 0x92FB;
pub const GL_OFFSET: comptime_int = 0x92FC;
pub const GL_BLOCK_INDEX: comptime_int = 0x92FD;
pub const GL_ARRAY_STRIDE: comptime_int = 0x92FE;
pub const GL_MATRIX_STRIDE: comptime_int = 0x92FF;
pub const GL_IS_ROW_MAJOR: comptime_int = 0x9300;
pub const GL_ATOMIC_COUNTER_BUFFER_INDEX: comptime_int = 0x9301;
pub const GL_BUFFER_BINDING: comptime_int = 0x9302;
pub const GL_BUFFER_DATA_SIZE: comptime_int = 0x9303;
pub const GL_NUM_ACTIVE_VARIABLES: comptime_int = 0x9304;
pub const GL_ACTIVE_VARIABLES: comptime_int = 0x9305;
pub const GL_REFERENCED_BY_VERTEX_SHADER: comptime_int = 0x9306;
pub const GL_REFERENCED_BY_TESS_CONTROL_SHADER: comptime_int = 0x9307;
pub const GL_REFERENCED_BY_TESS_EVALUATION_SHADER: comptime_int = 0x9308;
pub const GL_REFERENCED_BY_GEOMETRY_SHADER: comptime_int = 0x9309;
pub const GL_REFERENCED_BY_FRAGMENT_SHADER: comptime_int = 0x930A;
pub const GL_REFERENCED_BY_COMPUTE_SHADER: comptime_int = 0x930B;
pub const GL_TOP_LEVEL_ARRAY_SIZE: comptime_int = 0x930C;
pub const GL_TOP_LEVEL_ARRAY_STRIDE: comptime_int = 0x930D;
pub const GL_LOCATION: comptime_int = 0x930E;
pub const GL_LOCATION_INDEX: comptime_int = 0x930F;
pub const GL_IS_PER_PATCH: comptime_int = 0x92E7;
pub const GL_SHADER_STORAGE_BUFFER: comptime_int = 0x90D2;
pub const GL_SHADER_STORAGE_BUFFER_BINDING: comptime_int = 0x90D3;
pub const GL_SHADER_STORAGE_BUFFER_START: comptime_int = 0x90D4;
pub const GL_SHADER_STORAGE_BUFFER_SIZE: comptime_int = 0x90D5;
pub const GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS: comptime_int = 0x90D6;
pub const GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS: comptime_int = 0x90D7;
pub const GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS: comptime_int = 0x90D8;
pub const GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS: comptime_int = 0x90D9;
pub const GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS: comptime_int = 0x90DA;
pub const GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS: comptime_int = 0x90DB;
pub const GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS: comptime_int = 0x90DC;
pub const GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS: comptime_int = 0x90DD;
pub const GL_MAX_SHADER_STORAGE_BLOCK_SIZE: comptime_int = 0x90DE;
pub const GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT: comptime_int = 0x90DF;
pub const GL_SHADER_STORAGE_BARRIER_BIT: comptime_int = 0x00002000;
pub const GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES: comptime_int = 0x8F39;
pub const GL_DEPTH_STENCIL_TEXTURE_MODE: comptime_int = 0x90EA;
pub const GL_TEXTURE_BUFFER_OFFSET: comptime_int = 0x919D;
pub const GL_TEXTURE_BUFFER_SIZE: comptime_int = 0x919E;
pub const GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT: comptime_int = 0x919F;
pub const GL_TEXTURE_VIEW_MIN_LEVEL: comptime_int = 0x82DB;
pub const GL_TEXTURE_VIEW_NUM_LEVELS: comptime_int = 0x82DC;
pub const GL_TEXTURE_VIEW_MIN_LAYER: comptime_int = 0x82DD;
pub const GL_TEXTURE_VIEW_NUM_LAYERS: comptime_int = 0x82DE;
pub const GL_TEXTURE_IMMUTABLE_LEVELS: comptime_int = 0x82DF;
pub const GL_VERTEX_ATTRIB_BINDING: comptime_int = 0x82D4;
pub const GL_VERTEX_ATTRIB_RELATIVE_OFFSET: comptime_int = 0x82D5;
pub const GL_VERTEX_BINDING_DIVISOR: comptime_int = 0x82D6;
pub const GL_VERTEX_BINDING_OFFSET: comptime_int = 0x82D7;
pub const GL_VERTEX_BINDING_STRIDE: comptime_int = 0x82D8;
pub const GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET: comptime_int = 0x82D9;
pub const GL_MAX_VERTEX_ATTRIB_BINDINGS: comptime_int = 0x82DA;
pub const GL_VERTEX_BINDING_BUFFER: comptime_int = 0x8F4F;
pub fn glClearBufferData(target: GLenum, internalformat: GLenum, format: GLenum, type: GLenum, data: ?*const anyopaque) void{
   return function_map.current.?.glClearBufferData(target, internalformat, format, type, data);
}
pub fn glClearBufferSubData(target: GLenum, internalformat: GLenum, offset: GLintptr, size: GLsizeiptr, format: GLenum, type: GLenum, data: ?*const anyopaque) void{
   return function_map.current.?.glClearBufferSubData(target, internalformat, offset, size, format, type, data);
}
pub fn glDispatchCompute(num_groups_x: GLuint, num_groups_y: GLuint, num_groups_z: GLuint) void{
   return function_map.current.?.glDispatchCompute(num_groups_x, num_groups_y, num_groups_z);
}
pub fn glDispatchComputeIndirect(indirect: GLintptr) void{
   return function_map.current.?.glDispatchComputeIndirect(indirect);
}
pub fn glCopyImageSubData(srcName: GLuint, srcTarget: GLenum, srcLevel: GLint, srcX: GLint, srcY: GLint, srcZ: GLint, dstName: GLuint, dstTarget: GLenum, dstLevel: GLint, dstX: GLint, dstY: GLint, dstZ: GLint, srcWidth: GLsizei, srcHeight: GLsizei, srcDepth: GLsizei) void{
   return function_map.current.?.glCopyImageSubData(srcName, srcTarget, srcLevel, srcX, srcY, srcZ, dstName, dstTarget, dstLevel, dstX, dstY, dstZ, srcWidth, srcHeight, srcDepth);
}
pub fn glFramebufferParameteri(target: GLenum, pname: GLenum, param: GLint) void{
   return function_map.current.?.glFramebufferParameteri(target, pname, param);
}
pub fn glGetFramebufferParameteriv(target: GLenum, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetFramebufferParameteriv(target, pname, params);
}
pub fn glGetInternalformati64v(target: GLenum, internalformat: GLenum, pname: GLenum, count: GLsizei, params: GLint64) void{
   return function_map.current.?.glGetInternalformati64v(target, internalformat, pname, count, params);
}
pub fn glInvalidateTexSubImage(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei) void{
   return function_map.current.?.glInvalidateTexSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth);
}
pub fn glInvalidateTexImage(texture: GLuint, level: GLint) void{
   return function_map.current.?.glInvalidateTexImage(texture, level);
}
pub fn glInvalidateBufferSubData(buffer: GLuint, offset: GLintptr, length: GLsizeiptr) void{
   return function_map.current.?.glInvalidateBufferSubData(buffer, offset, length);
}
pub fn glInvalidateBufferData(buffer: GLuint) void{
   return function_map.current.?.glInvalidateBufferData(buffer);
}
pub fn glInvalidateFramebuffer(target: GLenum, numAttachments: GLsizei, attachments: GLenum) void{
   return function_map.current.?.glInvalidateFramebuffer(target, numAttachments, attachments);
}
pub fn glInvalidateSubFramebuffer(target: GLenum, numAttachments: GLsizei, attachments: GLenum, x: GLint, y: GLint, width: GLsizei, height: GLsizei) void{
   return function_map.current.?.glInvalidateSubFramebuffer(target, numAttachments, attachments, x, y, width, height);
}
pub fn glMultiDrawArraysIndirect(mode: GLenum, indirect: ?*const anyopaque, drawcount: GLsizei, stride: GLsizei) void{
   return function_map.current.?.glMultiDrawArraysIndirect(mode, indirect, drawcount, stride);
}
pub fn glMultiDrawElementsIndirect(mode: GLenum, type: GLenum, indirect: ?*const anyopaque, drawcount: GLsizei, stride: GLsizei) void{
   return function_map.current.?.glMultiDrawElementsIndirect(mode, type, indirect, drawcount, stride);
}
pub fn glGetProgramInterfaceiv(program: GLuint, programInterface: GLenum, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetProgramInterfaceiv(program, programInterface, pname, params);
}
pub fn glGetProgramResourceIndex(program: GLuint, programInterface: GLenum, name: GLchar) GLuint{
   return function_map.current.?.glGetProgramResourceIndex(program, programInterface, name);
}
pub fn glGetProgramResourceName(program: GLuint, programInterface: GLenum, index: GLuint, bufSize: GLsizei, length: GLsizei, name: GLchar) void{
   return function_map.current.?.glGetProgramResourceName(program, programInterface, index, bufSize, length, name);
}
pub fn glGetProgramResourceiv(program: GLuint, programInterface: GLenum, index: GLuint, propCount: GLsizei, props: GLenum, count: GLsizei, length: GLsizei, params: GLint) void{
   return function_map.current.?.glGetProgramResourceiv(program, programInterface, index, propCount, props, count, length, params);
}
pub fn glGetProgramResourceLocation(program: GLuint, programInterface: GLenum, name: GLchar) GLint{
   return function_map.current.?.glGetProgramResourceLocation(program, programInterface, name);
}
pub fn glGetProgramResourceLocationIndex(program: GLuint, programInterface: GLenum, name: GLchar) GLint{
   return function_map.current.?.glGetProgramResourceLocationIndex(program, programInterface, name);
}
pub fn glShaderStorageBlockBinding(program: GLuint, storageBlockIndex: GLuint, storageBlockBinding: GLuint) void{
   return function_map.current.?.glShaderStorageBlockBinding(program, storageBlockIndex, storageBlockBinding);
}
pub fn glTexBufferRange(target: GLenum, internalformat: GLenum, buffer: GLuint, offset: GLintptr, size: GLsizeiptr) void{
   return function_map.current.?.glTexBufferRange(target, internalformat, buffer, offset, size);
}
pub fn glTexStorage2DMultisample(target: GLenum, samples: GLsizei, internalformat: GLenum, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean) void{
   return function_map.current.?.glTexStorage2DMultisample(target, samples, internalformat, width, height, fixedsamplelocations);
}
pub fn glTexStorage3DMultisample(target: GLenum, samples: GLsizei, internalformat: GLenum, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean) void{
   return function_map.current.?.glTexStorage3DMultisample(target, samples, internalformat, width, height, depth, fixedsamplelocations);
}
pub fn glTextureView(texture: GLuint, target: GLenum, origtexture: GLuint, internalformat: GLenum, minlevel: GLuint, numlevels: GLuint, minlayer: GLuint, numlayers: GLuint) void{
   return function_map.current.?.glTextureView(texture, target, origtexture, internalformat, minlevel, numlevels, minlayer, numlayers);
}
pub fn glBindVertexBuffer(bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei) void{
   return function_map.current.?.glBindVertexBuffer(bindingindex, buffer, offset, stride);
}
pub fn glVertexAttribFormat(attribindex: GLuint, size: GLint, type: GLenum, normalized: GLboolean, relativeoffset: GLuint) void{
   return function_map.current.?.glVertexAttribFormat(attribindex, size, type, normalized, relativeoffset);
}
pub fn glVertexAttribIFormat(attribindex: GLuint, size: GLint, type: GLenum, relativeoffset: GLuint) void{
   return function_map.current.?.glVertexAttribIFormat(attribindex, size, type, relativeoffset);
}
pub fn glVertexAttribLFormat(attribindex: GLuint, size: GLint, type: GLenum, relativeoffset: GLuint) void{
   return function_map.current.?.glVertexAttribLFormat(attribindex, size, type, relativeoffset);
}
pub fn glVertexAttribBinding(attribindex: GLuint, bindingindex: GLuint) void{
   return function_map.current.?.glVertexAttribBinding(attribindex, bindingindex);
}
pub fn glVertexBindingDivisor(bindingindex: GLuint, divisor: GLuint) void{
   return function_map.current.?.glVertexBindingDivisor(bindingindex, divisor);
}
pub fn glDebugMessageControl(source: GLenum, type: GLenum, severity: GLenum, count: GLsizei, ids: GLuint, enabled: GLboolean) void{
   return function_map.current.?.glDebugMessageControl(source, type, severity, count, ids, enabled);
}
pub fn glDebugMessageInsert(source: GLenum, type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, buf: GLchar) void{
   return function_map.current.?.glDebugMessageInsert(source, type, id, severity, length, buf);
}
pub fn glDebugMessageCallback(callback: GLDEBUGPROC, userParam: ?*const anyopaque) void{
   return function_map.current.?.glDebugMessageCallback(callback, userParam);
}
pub fn glGetDebugMessageLog(count: GLuint, bufSize: GLsizei, sources: GLenum, types: GLenum, ids: GLuint, severities: GLenum, lengths: GLsizei, messageLog: GLchar) GLuint{
   return function_map.current.?.glGetDebugMessageLog(count, bufSize, sources, types, ids, severities, lengths, messageLog);
}
pub fn glPushDebugGroup(source: GLenum, id: GLuint, length: GLsizei, message: GLchar) void{
   return function_map.current.?.glPushDebugGroup(source, id, length, message);
}
pub fn glPopDebugGroup() void{
   return function_map.current.?.glPopDebugGroup();
}
pub fn glObjectLabel(identifier: GLenum, name: GLuint, length: GLsizei, label: GLchar) void{
   return function_map.current.?.glObjectLabel(identifier, name, length, label);
}
pub fn glGetObjectLabel(identifier: GLenum, name: GLuint, bufSize: GLsizei, length: GLsizei, label: GLchar) void{
   return function_map.current.?.glGetObjectLabel(identifier, name, bufSize, length, label);
}
pub fn glObjectPtrLabel(ptr: ?*const anyopaque, length: GLsizei, label: GLchar) void{
   return function_map.current.?.glObjectPtrLabel(ptr, length, label);
}
pub fn glGetObjectPtrLabel(ptr: ?*const anyopaque, bufSize: GLsizei, length: GLsizei, label: GLchar) void{
   return function_map.current.?.glGetObjectPtrLabel(ptr, bufSize, length, label);
}
pub fn glGetPointerv(pname: GLenum, params: ?*const anyopaque) void{
   return function_map.current.?.glGetPointerv(pname, params);
}
pub const GL_STACK_UNDERFLOW: comptime_int = 0x0504;
pub const GL_STACK_OVERFLOW: comptime_int = 0x0503;
pub const GL_MAX_VERTEX_ATTRIB_STRIDE: comptime_int = 0x82E5;
pub const GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED: comptime_int = 0x8221;
pub const GL_TEXTURE_BUFFER_BINDING: comptime_int = 0x8C2A;
pub const GL_MAP_READ_BIT: comptime_int = 0x0001;
pub const GL_MAP_WRITE_BIT: comptime_int = 0x0002;
pub const GL_MAP_PERSISTENT_BIT: comptime_int = 0x0040;
pub const GL_MAP_COHERENT_BIT: comptime_int = 0x0080;
pub const GL_DYNAMIC_STORAGE_BIT: comptime_int = 0x0100;
pub const GL_CLIENT_STORAGE_BIT: comptime_int = 0x0200;
pub const GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT: comptime_int = 0x00004000;
pub const GL_BUFFER_IMMUTABLE_STORAGE: comptime_int = 0x821F;
pub const GL_BUFFER_STORAGE_FLAGS: comptime_int = 0x8220;
pub fn glBufferStorage(target: GLenum, size: GLsizeiptr, data: ?*const anyopaque, flags: GLbitfield) void{
   return function_map.current.?.glBufferStorage(target, size, data, flags);
}
pub const GL_CLEAR_TEXTURE: comptime_int = 0x9365;
pub fn glClearTexImage(texture: GLuint, level: GLint, format: GLenum, type: GLenum, data: ?*const anyopaque) void{
   return function_map.current.?.glClearTexImage(texture, level, format, type, data);
}
pub fn glClearTexSubImage(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: GLenum, type: GLenum, data: ?*const anyopaque) void{
   return function_map.current.?.glClearTexSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, data);
}
pub const GL_LOCATION_COMPONENT: comptime_int = 0x934A;
pub const GL_TRANSFORM_FEEDBACK_BUFFER: comptime_int = 0x8C8E;
pub const GL_TRANSFORM_FEEDBACK_BUFFER_INDEX: comptime_int = 0x934B;
pub const GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE: comptime_int = 0x934C;
pub fn glBindBuffersBase(target: GLenum, first: GLuint, count: GLsizei, buffers: GLuint) void{
   return function_map.current.?.glBindBuffersBase(target, first, count, buffers);
}
pub fn glBindBuffersRange(target: GLenum, first: GLuint, count: GLsizei, buffers: GLuint, offsets: GLintptr, sizes: GLsizeiptr) void{
   return function_map.current.?.glBindBuffersRange(target, first, count, buffers, offsets, sizes);
}
pub fn glBindTextures(first: GLuint, count: GLsizei, textures: GLuint) void{
   return function_map.current.?.glBindTextures(first, count, textures);
}
pub fn glBindSamplers(first: GLuint, count: GLsizei, samplers: GLuint) void{
   return function_map.current.?.glBindSamplers(first, count, samplers);
}
pub fn glBindImageTextures(first: GLuint, count: GLsizei, textures: GLuint) void{
   return function_map.current.?.glBindImageTextures(first, count, textures);
}
pub fn glBindVertexBuffers(first: GLuint, count: GLsizei, buffers: GLuint, offsets: GLintptr, strides: GLsizei) void{
   return function_map.current.?.glBindVertexBuffers(first, count, buffers, offsets, strides);
}
pub const GL_QUERY_BUFFER: comptime_int = 0x9192;
pub const GL_QUERY_BUFFER_BARRIER_BIT: comptime_int = 0x00008000;
pub const GL_QUERY_BUFFER_BINDING: comptime_int = 0x9193;
pub const GL_QUERY_RESULT_NO_WAIT: comptime_int = 0x9194;
pub const GL_MIRROR_CLAMP_TO_EDGE: comptime_int = 0x8743;
pub const GL_STENCIL_INDEX: comptime_int = 0x1901;
pub const GL_STENCIL_INDEX8: comptime_int = 0x8D48;
pub const GL_UNSIGNED_INT_10F_11F_11F_REV: comptime_int = 0x8C3B;
pub const GL_CONTEXT_LOST: comptime_int = 0x0507;
pub const GL_LOWER_LEFT: comptime_int = 0x8CA1;
pub const GL_UPPER_LEFT: comptime_int = 0x8CA2;
pub const GL_NEGATIVE_ONE_TO_ONE: comptime_int = 0x935E;
pub const GL_ZERO_TO_ONE: comptime_int = 0x935F;
pub const GL_CLIP_ORIGIN: comptime_int = 0x935C;
pub const GL_CLIP_DEPTH_MODE: comptime_int = 0x935D;
pub fn glClipControl(origin: GLenum, depth: GLenum) void{
   return function_map.current.?.glClipControl(origin, depth);
}
pub const GL_QUERY_WAIT_INVERTED: comptime_int = 0x8E17;
pub const GL_QUERY_NO_WAIT_INVERTED: comptime_int = 0x8E18;
pub const GL_QUERY_BY_REGION_WAIT_INVERTED: comptime_int = 0x8E19;
pub const GL_QUERY_BY_REGION_NO_WAIT_INVERTED: comptime_int = 0x8E1A;
pub const GL_MAX_CULL_DISTANCES: comptime_int = 0x82F9;
pub const GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES: comptime_int = 0x82FA;
pub const GL_TEXTURE_TARGET: comptime_int = 0x1006;
pub const GL_QUERY_TARGET: comptime_int = 0x82EA;
pub const GL_TEXTURE_BINDING_1D: comptime_int = 0x8068;
pub const GL_TEXTURE_BINDING_1D_ARRAY: comptime_int = 0x8C1C;
pub const GL_TEXTURE_BINDING_2D: comptime_int = 0x8069;
pub const GL_TEXTURE_BINDING_2D_ARRAY: comptime_int = 0x8C1D;
pub const GL_TEXTURE_BINDING_2D_MULTISAMPLE: comptime_int = 0x9104;
pub const GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY: comptime_int = 0x9105;
pub const GL_TEXTURE_BINDING_3D: comptime_int = 0x806A;
pub const GL_TEXTURE_BINDING_BUFFER: comptime_int = 0x8C2C;
pub const GL_TEXTURE_BINDING_CUBE_MAP: comptime_int = 0x8514;
pub const GL_TEXTURE_BINDING_CUBE_MAP_ARRAY: comptime_int = 0x900A;
pub const GL_TEXTURE_BINDING_RECTANGLE: comptime_int = 0x84F6;
pub fn glCreateTransformFeedbacks(n: GLsizei, ids: GLuint) void{
   return function_map.current.?.glCreateTransformFeedbacks(n, ids);
}
pub fn glTransformFeedbackBufferBase(xfb: GLuint, index: GLuint, buffer: GLuint) void{
   return function_map.current.?.glTransformFeedbackBufferBase(xfb, index, buffer);
}
pub fn glTransformFeedbackBufferRange(xfb: GLuint, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr) void{
   return function_map.current.?.glTransformFeedbackBufferRange(xfb, index, buffer, offset, size);
}
pub fn glGetTransformFeedbackiv(xfb: GLuint, pname: GLenum, param: GLint) void{
   return function_map.current.?.glGetTransformFeedbackiv(xfb, pname, param);
}
pub fn glGetTransformFeedbacki_v(xfb: GLuint, pname: GLenum, index: GLuint, param: GLint) void{
   return function_map.current.?.glGetTransformFeedbacki_v(xfb, pname, index, param);
}
pub fn glGetTransformFeedbacki64_v(xfb: GLuint, pname: GLenum, index: GLuint, param: GLint64) void{
   return function_map.current.?.glGetTransformFeedbacki64_v(xfb, pname, index, param);
}
pub fn glCreateBuffers(n: GLsizei, buffers: GLuint) void{
   return function_map.current.?.glCreateBuffers(n, buffers);
}
pub fn glNamedBufferStorage(buffer: GLuint, size: GLsizeiptr, data: ?*const anyopaque, flags: GLbitfield) void{
   return function_map.current.?.glNamedBufferStorage(buffer, size, data, flags);
}
pub fn glNamedBufferData(buffer: GLuint, size: GLsizeiptr, data: ?*const anyopaque, usage: GLenum) void{
   return function_map.current.?.glNamedBufferData(buffer, size, data, usage);
}
pub fn glNamedBufferSubData(buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: ?*const anyopaque) void{
   return function_map.current.?.glNamedBufferSubData(buffer, offset, size, data);
}
pub fn glCopyNamedBufferSubData(readBuffer: GLuint, writeBuffer: GLuint, readOffset: GLintptr, writeOffset: GLintptr, size: GLsizeiptr) void{
   return function_map.current.?.glCopyNamedBufferSubData(readBuffer, writeBuffer, readOffset, writeOffset, size);
}
pub fn glClearNamedBufferData(buffer: GLuint, internalformat: GLenum, format: GLenum, type: GLenum, data: ?*const anyopaque) void{
   return function_map.current.?.glClearNamedBufferData(buffer, internalformat, format, type, data);
}
pub fn glClearNamedBufferSubData(buffer: GLuint, internalformat: GLenum, offset: GLintptr, size: GLsizeiptr, format: GLenum, type: GLenum, data: ?*const anyopaque) void{
   return function_map.current.?.glClearNamedBufferSubData(buffer, internalformat, offset, size, format, type, data);
}
pub fn glMapNamedBuffer(buffer: GLuint, access: GLenum) void{
   return function_map.current.?.glMapNamedBuffer(buffer, access);
}
pub fn glMapNamedBufferRange(buffer: GLuint, offset: GLintptr, length: GLsizeiptr, access: GLbitfield) void{
   return function_map.current.?.glMapNamedBufferRange(buffer, offset, length, access);
}
pub fn glUnmapNamedBuffer(buffer: GLuint) GLboolean{
   return function_map.current.?.glUnmapNamedBuffer(buffer);
}
pub fn glFlushMappedNamedBufferRange(buffer: GLuint, offset: GLintptr, length: GLsizeiptr) void{
   return function_map.current.?.glFlushMappedNamedBufferRange(buffer, offset, length);
}
pub fn glGetNamedBufferParameteriv(buffer: GLuint, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetNamedBufferParameteriv(buffer, pname, params);
}
pub fn glGetNamedBufferParameteri64v(buffer: GLuint, pname: GLenum, params: GLint64) void{
   return function_map.current.?.glGetNamedBufferParameteri64v(buffer, pname, params);
}
pub fn glGetNamedBufferPointerv(buffer: GLuint, pname: GLenum, params: ?*const anyopaque) void{
   return function_map.current.?.glGetNamedBufferPointerv(buffer, pname, params);
}
pub fn glGetNamedBufferSubData(buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: ?*const anyopaque) void{
   return function_map.current.?.glGetNamedBufferSubData(buffer, offset, size, data);
}
pub fn glCreateFramebuffers(n: GLsizei, framebuffers: GLuint) void{
   return function_map.current.?.glCreateFramebuffers(n, framebuffers);
}
pub fn glNamedFramebufferRenderbuffer(framebuffer: GLuint, attachment: GLenum, renderbuffertarget: GLenum, renderbuffer: GLuint) void{
   return function_map.current.?.glNamedFramebufferRenderbuffer(framebuffer, attachment, renderbuffertarget, renderbuffer);
}
pub fn glNamedFramebufferParameteri(framebuffer: GLuint, pname: GLenum, param: GLint) void{
   return function_map.current.?.glNamedFramebufferParameteri(framebuffer, pname, param);
}
pub fn glNamedFramebufferTexture(framebuffer: GLuint, attachment: GLenum, texture: GLuint, level: GLint) void{
   return function_map.current.?.glNamedFramebufferTexture(framebuffer, attachment, texture, level);
}
pub fn glNamedFramebufferTextureLayer(framebuffer: GLuint, attachment: GLenum, texture: GLuint, level: GLint, layer: GLint) void{
   return function_map.current.?.glNamedFramebufferTextureLayer(framebuffer, attachment, texture, level, layer);
}
pub fn glNamedFramebufferDrawBuffer(framebuffer: GLuint, buf: GLenum) void{
   return function_map.current.?.glNamedFramebufferDrawBuffer(framebuffer, buf);
}
pub fn glNamedFramebufferDrawBuffers(framebuffer: GLuint, n: GLsizei, bufs: GLenum) void{
   return function_map.current.?.glNamedFramebufferDrawBuffers(framebuffer, n, bufs);
}
pub fn glNamedFramebufferReadBuffer(framebuffer: GLuint, src: GLenum) void{
   return function_map.current.?.glNamedFramebufferReadBuffer(framebuffer, src);
}
pub fn glInvalidateNamedFramebufferData(framebuffer: GLuint, numAttachments: GLsizei, attachments: GLenum) void{
   return function_map.current.?.glInvalidateNamedFramebufferData(framebuffer, numAttachments, attachments);
}
pub fn glInvalidateNamedFramebufferSubData(framebuffer: GLuint, numAttachments: GLsizei, attachments: GLenum, x: GLint, y: GLint, width: GLsizei, height: GLsizei) void{
   return function_map.current.?.glInvalidateNamedFramebufferSubData(framebuffer, numAttachments, attachments, x, y, width, height);
}
pub fn glClearNamedFramebufferiv(framebuffer: GLuint, buffer: GLenum, drawbuffer: GLint, value: GLint) void{
   return function_map.current.?.glClearNamedFramebufferiv(framebuffer, buffer, drawbuffer, value);
}
pub fn glClearNamedFramebufferuiv(framebuffer: GLuint, buffer: GLenum, drawbuffer: GLint, value: GLuint) void{
   return function_map.current.?.glClearNamedFramebufferuiv(framebuffer, buffer, drawbuffer, value);
}
pub fn glClearNamedFramebufferfv(framebuffer: GLuint, buffer: GLenum, drawbuffer: GLint, value: GLfloat) void{
   return function_map.current.?.glClearNamedFramebufferfv(framebuffer, buffer, drawbuffer, value);
}
pub fn glClearNamedFramebufferfi(framebuffer: GLuint, buffer: GLenum, drawbuffer: GLint, depth: GLfloat, stencil: GLint) void{
   return function_map.current.?.glClearNamedFramebufferfi(framebuffer, buffer, drawbuffer, depth, stencil);
}
pub fn glBlitNamedFramebuffer(readFramebuffer: GLuint, drawFramebuffer: GLuint, srcX0: GLint, srcY0: GLint, srcX1: GLint, srcY1: GLint, dstX0: GLint, dstY0: GLint, dstX1: GLint, dstY1: GLint, mask: GLbitfield, filter: GLenum) void{
   return function_map.current.?.glBlitNamedFramebuffer(readFramebuffer, drawFramebuffer, srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter);
}
pub fn glCheckNamedFramebufferStatus(framebuffer: GLuint, target: GLenum) GLenum{
   return function_map.current.?.glCheckNamedFramebufferStatus(framebuffer, target);
}
pub fn glGetNamedFramebufferParameteriv(framebuffer: GLuint, pname: GLenum, param: GLint) void{
   return function_map.current.?.glGetNamedFramebufferParameteriv(framebuffer, pname, param);
}
pub fn glGetNamedFramebufferAttachmentParameteriv(framebuffer: GLuint, attachment: GLenum, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetNamedFramebufferAttachmentParameteriv(framebuffer, attachment, pname, params);
}
pub fn glCreateRenderbuffers(n: GLsizei, renderbuffers: GLuint) void{
   return function_map.current.?.glCreateRenderbuffers(n, renderbuffers);
}
pub fn glNamedRenderbufferStorage(renderbuffer: GLuint, internalformat: GLenum, width: GLsizei, height: GLsizei) void{
   return function_map.current.?.glNamedRenderbufferStorage(renderbuffer, internalformat, width, height);
}
pub fn glNamedRenderbufferStorageMultisample(renderbuffer: GLuint, samples: GLsizei, internalformat: GLenum, width: GLsizei, height: GLsizei) void{
   return function_map.current.?.glNamedRenderbufferStorageMultisample(renderbuffer, samples, internalformat, width, height);
}
pub fn glGetNamedRenderbufferParameteriv(renderbuffer: GLuint, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetNamedRenderbufferParameteriv(renderbuffer, pname, params);
}
pub fn glCreateTextures(target: GLenum, n: GLsizei, textures: GLuint) void{
   return function_map.current.?.glCreateTextures(target, n, textures);
}
pub fn glTextureBuffer(texture: GLuint, internalformat: GLenum, buffer: GLuint) void{
   return function_map.current.?.glTextureBuffer(texture, internalformat, buffer);
}
pub fn glTextureBufferRange(texture: GLuint, internalformat: GLenum, buffer: GLuint, offset: GLintptr, size: GLsizeiptr) void{
   return function_map.current.?.glTextureBufferRange(texture, internalformat, buffer, offset, size);
}
pub fn glTextureStorage1D(texture: GLuint, levels: GLsizei, internalformat: GLenum, width: GLsizei) void{
   return function_map.current.?.glTextureStorage1D(texture, levels, internalformat, width);
}
pub fn glTextureStorage2D(texture: GLuint, levels: GLsizei, internalformat: GLenum, width: GLsizei, height: GLsizei) void{
   return function_map.current.?.glTextureStorage2D(texture, levels, internalformat, width, height);
}
pub fn glTextureStorage3D(texture: GLuint, levels: GLsizei, internalformat: GLenum, width: GLsizei, height: GLsizei, depth: GLsizei) void{
   return function_map.current.?.glTextureStorage3D(texture, levels, internalformat, width, height, depth);
}
pub fn glTextureStorage2DMultisample(texture: GLuint, samples: GLsizei, internalformat: GLenum, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean) void{
   return function_map.current.?.glTextureStorage2DMultisample(texture, samples, internalformat, width, height, fixedsamplelocations);
}
pub fn glTextureStorage3DMultisample(texture: GLuint, samples: GLsizei, internalformat: GLenum, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean) void{
   return function_map.current.?.glTextureStorage3DMultisample(texture, samples, internalformat, width, height, depth, fixedsamplelocations);
}
pub fn glTextureSubImage1D(texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: GLenum, type: GLenum, pixels: ?*const anyopaque) void{
   return function_map.current.?.glTextureSubImage1D(texture, level, xoffset, width, format, type, pixels);
}
pub fn glTextureSubImage2D(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: ?*const anyopaque) void{
   return function_map.current.?.glTextureSubImage2D(texture, level, xoffset, yoffset, width, height, format, type, pixels);
}
pub fn glTextureSubImage3D(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: GLenum, type: GLenum, pixels: ?*const anyopaque) void{
   return function_map.current.?.glTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels);
}
pub fn glCompressedTextureSubImage1D(texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: GLenum, imageSize: GLsizei, data: ?*const anyopaque) void{
   return function_map.current.?.glCompressedTextureSubImage1D(texture, level, xoffset, width, format, imageSize, data);
}
pub fn glCompressedTextureSubImage2D(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, imageSize: GLsizei, data: ?*const anyopaque) void{
   return function_map.current.?.glCompressedTextureSubImage2D(texture, level, xoffset, yoffset, width, height, format, imageSize, data);
}
pub fn glCompressedTextureSubImage3D(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: GLenum, imageSize: GLsizei, data: ?*const anyopaque) void{
   return function_map.current.?.glCompressedTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, data);
}
pub fn glCopyTextureSubImage1D(texture: GLuint, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei) void{
   return function_map.current.?.glCopyTextureSubImage1D(texture, level, xoffset, x, y, width);
}
pub fn glCopyTextureSubImage2D(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) void{
   return function_map.current.?.glCopyTextureSubImage2D(texture, level, xoffset, yoffset, x, y, width, height);
}
pub fn glCopyTextureSubImage3D(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) void{
   return function_map.current.?.glCopyTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, x, y, width, height);
}
pub fn glTextureParameterf(texture: GLuint, pname: GLenum, param: GLfloat) void{
   return function_map.current.?.glTextureParameterf(texture, pname, param);
}
pub fn glTextureParameterfv(texture: GLuint, pname: GLenum, param: GLfloat) void{
   return function_map.current.?.glTextureParameterfv(texture, pname, param);
}
pub fn glTextureParameteri(texture: GLuint, pname: GLenum, param: GLint) void{
   return function_map.current.?.glTextureParameteri(texture, pname, param);
}
pub fn glTextureParameterIiv(texture: GLuint, pname: GLenum, params: GLint) void{
   return function_map.current.?.glTextureParameterIiv(texture, pname, params);
}
pub fn glTextureParameterIuiv(texture: GLuint, pname: GLenum, params: GLuint) void{
   return function_map.current.?.glTextureParameterIuiv(texture, pname, params);
}
pub fn glTextureParameteriv(texture: GLuint, pname: GLenum, param: GLint) void{
   return function_map.current.?.glTextureParameteriv(texture, pname, param);
}
pub fn glGenerateTextureMipmap(texture: GLuint) void{
   return function_map.current.?.glGenerateTextureMipmap(texture);
}
pub fn glBindTextureUnit(unit: GLuint, texture: GLuint) void{
   return function_map.current.?.glBindTextureUnit(unit, texture);
}
pub fn glGetTextureImage(texture: GLuint, level: GLint, format: GLenum, type: GLenum, bufSize: GLsizei, pixels: ?*const anyopaque) void{
   return function_map.current.?.glGetTextureImage(texture, level, format, type, bufSize, pixels);
}
pub fn glGetCompressedTextureImage(texture: GLuint, level: GLint, bufSize: GLsizei, pixels: ?*const anyopaque) void{
   return function_map.current.?.glGetCompressedTextureImage(texture, level, bufSize, pixels);
}
pub fn glGetTextureLevelParameterfv(texture: GLuint, level: GLint, pname: GLenum, params: GLfloat) void{
   return function_map.current.?.glGetTextureLevelParameterfv(texture, level, pname, params);
}
pub fn glGetTextureLevelParameteriv(texture: GLuint, level: GLint, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetTextureLevelParameteriv(texture, level, pname, params);
}
pub fn glGetTextureParameterfv(texture: GLuint, pname: GLenum, params: GLfloat) void{
   return function_map.current.?.glGetTextureParameterfv(texture, pname, params);
}
pub fn glGetTextureParameterIiv(texture: GLuint, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetTextureParameterIiv(texture, pname, params);
}
pub fn glGetTextureParameterIuiv(texture: GLuint, pname: GLenum, params: GLuint) void{
   return function_map.current.?.glGetTextureParameterIuiv(texture, pname, params);
}
pub fn glGetTextureParameteriv(texture: GLuint, pname: GLenum, params: GLint) void{
   return function_map.current.?.glGetTextureParameteriv(texture, pname, params);
}
pub fn glCreateVertexArrays(n: GLsizei, arrays: GLuint) void{
   return function_map.current.?.glCreateVertexArrays(n, arrays);
}
pub fn glDisableVertexArrayAttrib(vaobj: GLuint, index: GLuint) void{
   return function_map.current.?.glDisableVertexArrayAttrib(vaobj, index);
}
pub fn glEnableVertexArrayAttrib(vaobj: GLuint, index: GLuint) void{
   return function_map.current.?.glEnableVertexArrayAttrib(vaobj, index);
}
pub fn glVertexArrayElementBuffer(vaobj: GLuint, buffer: GLuint) void{
   return function_map.current.?.glVertexArrayElementBuffer(vaobj, buffer);
}
pub fn glVertexArrayVertexBuffer(vaobj: GLuint, bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei) void{
   return function_map.current.?.glVertexArrayVertexBuffer(vaobj, bindingindex, buffer, offset, stride);
}
pub fn glVertexArrayVertexBuffers(vaobj: GLuint, first: GLuint, count: GLsizei, buffers: GLuint, offsets: GLintptr, strides: GLsizei) void{
   return function_map.current.?.glVertexArrayVertexBuffers(vaobj, first, count, buffers, offsets, strides);
}
pub fn glVertexArrayAttribBinding(vaobj: GLuint, attribindex: GLuint, bindingindex: GLuint) void{
   return function_map.current.?.glVertexArrayAttribBinding(vaobj, attribindex, bindingindex);
}
pub fn glVertexArrayAttribFormat(vaobj: GLuint, attribindex: GLuint, size: GLint, type: GLenum, normalized: GLboolean, relativeoffset: GLuint) void{
   return function_map.current.?.glVertexArrayAttribFormat(vaobj, attribindex, size, type, normalized, relativeoffset);
}
pub fn glVertexArrayAttribIFormat(vaobj: GLuint, attribindex: GLuint, size: GLint, type: GLenum, relativeoffset: GLuint) void{
   return function_map.current.?.glVertexArrayAttribIFormat(vaobj, attribindex, size, type, relativeoffset);
}
pub fn glVertexArrayAttribLFormat(vaobj: GLuint, attribindex: GLuint, size: GLint, type: GLenum, relativeoffset: GLuint) void{
   return function_map.current.?.glVertexArrayAttribLFormat(vaobj, attribindex, size, type, relativeoffset);
}
pub fn glVertexArrayBindingDivisor(vaobj: GLuint, bindingindex: GLuint, divisor: GLuint) void{
   return function_map.current.?.glVertexArrayBindingDivisor(vaobj, bindingindex, divisor);
}
pub fn glGetVertexArrayiv(vaobj: GLuint, pname: GLenum, param: GLint) void{
   return function_map.current.?.glGetVertexArrayiv(vaobj, pname, param);
}
pub fn glGetVertexArrayIndexediv(vaobj: GLuint, index: GLuint, pname: GLenum, param: GLint) void{
   return function_map.current.?.glGetVertexArrayIndexediv(vaobj, index, pname, param);
}
pub fn glGetVertexArrayIndexed64iv(vaobj: GLuint, index: GLuint, pname: GLenum, param: GLint64) void{
   return function_map.current.?.glGetVertexArrayIndexed64iv(vaobj, index, pname, param);
}
pub fn glCreateSamplers(n: GLsizei, samplers: GLuint) void{
   return function_map.current.?.glCreateSamplers(n, samplers);
}
pub fn glCreateProgramPipelines(n: GLsizei, pipelines: GLuint) void{
   return function_map.current.?.glCreateProgramPipelines(n, pipelines);
}
pub fn glCreateQueries(target: GLenum, n: GLsizei, ids: GLuint) void{
   return function_map.current.?.glCreateQueries(target, n, ids);
}
pub fn glGetQueryBufferObjecti64v(id: GLuint, buffer: GLuint, pname: GLenum, offset: GLintptr) void{
   return function_map.current.?.glGetQueryBufferObjecti64v(id, buffer, pname, offset);
}
pub fn glGetQueryBufferObjectiv(id: GLuint, buffer: GLuint, pname: GLenum, offset: GLintptr) void{
   return function_map.current.?.glGetQueryBufferObjectiv(id, buffer, pname, offset);
}
pub fn glGetQueryBufferObjectui64v(id: GLuint, buffer: GLuint, pname: GLenum, offset: GLintptr) void{
   return function_map.current.?.glGetQueryBufferObjectui64v(id, buffer, pname, offset);
}
pub fn glGetQueryBufferObjectuiv(id: GLuint, buffer: GLuint, pname: GLenum, offset: GLintptr) void{
   return function_map.current.?.glGetQueryBufferObjectuiv(id, buffer, pname, offset);
}
pub const GL_BACK: comptime_int = 0x0405;
pub fn glMemoryBarrierByRegion(barriers: GLbitfield) void{
   return function_map.current.?.glMemoryBarrierByRegion(barriers);
}
pub fn glGetTextureSubImage(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: GLenum, type: GLenum, bufSize: GLsizei, pixels: ?*const anyopaque) void{
   return function_map.current.?.glGetTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, bufSize, pixels);
}
pub fn glGetCompressedTextureSubImage(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, bufSize: GLsizei, pixels: ?*const anyopaque) void{
   return function_map.current.?.glGetCompressedTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth, bufSize, pixels);
}
pub const GL_NO_ERROR: comptime_int = 0;
pub const GL_GUILTY_CONTEXT_RESET: comptime_int = 0x8253;
pub const GL_INNOCENT_CONTEXT_RESET: comptime_int = 0x8254;
pub const GL_UNKNOWN_CONTEXT_RESET: comptime_int = 0x8255;
pub const GL_RESET_NOTIFICATION_STRATEGY: comptime_int = 0x8256;
pub const GL_LOSE_CONTEXT_ON_RESET: comptime_int = 0x8252;
pub const GL_NO_RESET_NOTIFICATION: comptime_int = 0x8261;
pub const GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT: comptime_int = 0x00000004;
pub const GL_CONTEXT_LOST: comptime_int = 0x0507;
pub fn glGetGraphicsResetStatus() GLenum{
   return function_map.current.?.glGetGraphicsResetStatus();
}
pub fn glGetnCompressedTexImage(target: GLenum, lod: GLint, bufSize: GLsizei, pixels: ?*const anyopaque) void{
   return function_map.current.?.glGetnCompressedTexImage(target, lod, bufSize, pixels);
}
pub fn glGetnTexImage(target: GLenum, level: GLint, format: GLenum, type: GLenum, bufSize: GLsizei, pixels: ?*const anyopaque) void{
   return function_map.current.?.glGetnTexImage(target, level, format, type, bufSize, pixels);
}
pub fn glGetnUniformdv(program: GLuint, location: GLint, bufSize: GLsizei, params: GLdouble) void{
   return function_map.current.?.glGetnUniformdv(program, location, bufSize, params);
}
pub fn glGetnUniformfv(program: GLuint, location: GLint, bufSize: GLsizei, params: GLfloat) void{
   return function_map.current.?.glGetnUniformfv(program, location, bufSize, params);
}
pub fn glGetnUniformiv(program: GLuint, location: GLint, bufSize: GLsizei, params: GLint) void{
   return function_map.current.?.glGetnUniformiv(program, location, bufSize, params);
}
pub fn glGetnUniformuiv(program: GLuint, location: GLint, bufSize: GLsizei, params: GLuint) void{
   return function_map.current.?.glGetnUniformuiv(program, location, bufSize, params);
}
pub fn glReadnPixels(x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, bufSize: GLsizei, data: ?*const anyopaque) void{
   return function_map.current.?.glReadnPixels(x, y, width, height, format, type, bufSize, data);
}
pub fn glTextureBarrier() void{
   return function_map.current.?.glTextureBarrier();
}
pub const GL_CONTEXT_RELEASE_BEHAVIOR: comptime_int = 0x82FB;
pub const GL_NONE: comptime_int = 0;
pub const GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH: comptime_int = 0x82FC;
pub const GL_CONTEXT_RELEASE_BEHAVIOR: comptime_int = 0x82FB;
pub const GL_NONE: comptime_int = 0;
pub const GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH: comptime_int = 0x82FC;
pub const GL_SHADER_BINARY_FORMAT_SPIR_V: comptime_int = 0x9551;
pub const GL_SPIR_V_BINARY: comptime_int = 0x9552;
pub fn glSpecializeShader(shader: GLuint, pEntryPoint: GLchar, numSpecializationConstants: GLuint, pConstantIndex: GLuint, pConstantValue: GLuint) void{
   return function_map.current.?.glSpecializeShader(shader, pEntryPoint, numSpecializationConstants, pConstantIndex, pConstantValue);
}
pub const GL_PARAMETER_BUFFER: comptime_int = 0x80EE;
pub const GL_PARAMETER_BUFFER_BINDING: comptime_int = 0x80EF;
pub fn glMultiDrawArraysIndirectCount(mode: GLenum, indirect: ?*const anyopaque, drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei) void{
   return function_map.current.?.glMultiDrawArraysIndirectCount(mode, indirect, drawcount, maxdrawcount, stride);
}
pub fn glMultiDrawElementsIndirectCount(mode: GLenum, type: GLenum, indirect: ?*const anyopaque, drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei) void{
   return function_map.current.?.glMultiDrawElementsIndirectCount(mode, type, indirect, drawcount, maxdrawcount, stride);
}
pub const GL_CONTEXT_FLAG_NO_ERROR_BIT: comptime_int = 0x00000008;
pub const GL_VERTICES_SUBMITTED: comptime_int = 0x82EE;
pub const GL_PRIMITIVES_SUBMITTED: comptime_int = 0x82EF;
pub const GL_VERTEX_SHADER_INVOCATIONS: comptime_int = 0x82F0;
pub const GL_TESS_CONTROL_SHADER_PATCHES: comptime_int = 0x82F1;
pub const GL_TESS_EVALUATION_SHADER_INVOCATIONS: comptime_int = 0x82F2;
pub const GL_GEOMETRY_SHADER_INVOCATIONS: comptime_int = 0x887F;
pub const GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED: comptime_int = 0x82F3;
pub const GL_FRAGMENT_SHADER_INVOCATIONS: comptime_int = 0x82F4;
pub const GL_COMPUTE_SHADER_INVOCATIONS: comptime_int = 0x82F5;
pub const GL_CLIPPING_INPUT_PRIMITIVES: comptime_int = 0x82F6;
pub const GL_CLIPPING_OUTPUT_PRIMITIVES: comptime_int = 0x82F7;
pub const GL_POLYGON_OFFSET_CLAMP: comptime_int = 0x8E1B;
pub fn glPolygonOffsetClamp(factor: GLfloat, units: GLfloat, clamp: GLfloat) void{
   return function_map.current.?.glPolygonOffsetClamp(factor, units, clamp);
}
pub const GL_SPIR_V_EXTENSIONS: comptime_int = 0x9553;
pub const GL_NUM_SPIR_V_EXTENSIONS: comptime_int = 0x9554;
pub const GL_TEXTURE_MAX_ANISOTROPY: comptime_int = 0x84FE;
pub const GL_MAX_TEXTURE_MAX_ANISOTROPY: comptime_int = 0x84FF;
pub const GL_TRANSFORM_FEEDBACK_OVERFLOW: comptime_int = 0x82EC;
pub const GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW: comptime_int = 0x82ED;
