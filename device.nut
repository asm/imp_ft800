/* Pin out -
Imp pin -> FT800 pin
      2 -> MISO
      5 -> SCLK
      7 -> MOSI
      8 -> CS
      9 -> PD
*/

const RAM_CMD              = 1081344;
const RAM_DL               = 1048576;
const RAM_G                = 0;
const RAM_PAL              = 1056768;
const RAM_REG              = 1057792;

const OPT_CENTER           = 1536;
const OPT_CENTERX          = 512;
const OPT_CENTERY          = 1024;

const FT_GPU_EXTERNAL_OSC  = 0x44;
const FT_GPU_PLL_48M       = 0x62;
const FT_GPU_CORE_RESET    = 0x68;
const FT_GPU_ACTIVE_M      = 0;

/* Definitions used for FT800 co processor command buffer */
const FT_DL_SIZE           = 8192;  //8KB Display List buffer size
const FT_CMD_FIFO_SIZE     = 8192;  //4KB coprocessor Fifo size
const FT_CMD_SIZE          = 4;     //4 byte per coprocessor command of EVE

const REG_ANALOG           = 1058104;
const REG_ANA_COMP         = 1058160;
const REG_CLOCK            = 1057800;
const REG_CMD_DL           = 1058028;
const REG_CMD_READ         = 1058020;
const REG_CMD_WRITE        = 1058024;
const REG_CPURESET         = 1057820;
const REG_CRC              = 1058152;
const REG_CSPREAD          = 1057892;
const REG_CYA0             = 1058000;
const REG_CYA1             = 1058004;
const REG_CYA_TOUCH        = 1058100;
const REG_DATESTAMP        = 1058108;
const REG_DITHER           = 1057884;
const REG_DLSWAP           = 1057872;
const REG_FRAMES           = 1057796;
const REG_FREQUENCY        = 1057804;
const REG_GPIO             = 1057936;
const REG_GPIO_DIR         = 1057932;
const REG_HCYCLE           = 1057832;
const REG_HOFFSET          = 1057836;
const REG_HSIZE            = 1057840;
const REG_HSYNC0           = 1057844;
const REG_HSYNC1           = 1057848;
const REG_ID               = 1057792;
const REG_INT_EN           = 1057948;
const REG_INT_FLAGS        = 1057944;
const REG_INT_MASK         = 1057952;
const REG_MACRO_0          = 1057992;
const REG_MACRO_1          = 1057996;
const REG_OUTBITS          = 1057880;
const REG_PCLK             = 1057900;
const REG_PCLK_POL         = 1057896;
const REG_PLAY             = 1057928;
const REG_PLAYBACK_FORMAT  = 1057972;
const REG_PLAYBACK_FREQ    = 1057968;
const REG_PLAYBACK_LENGTH  = 1057960;
const REG_PLAYBACK_LOOP    = 1057976;
const REG_PLAYBACK_PLAY    = 1057980;
const REG_PLAYBACK_READPTR = 1057964;
const REG_PLAYBACK_START   = 1057956;
const REG_PWM_DUTY         = 1057988;
const REG_PWM_HZ           = 1057984;
const REG_RENDERMODE       = 1057808;
const REG_ROMSUB_SEL       = 1058016;
const REG_ROTATE           = 1057876;
const REG_SNAPSHOT         = 1057816;
const REG_SNAPY            = 1057812;
const REG_SOUND            = 1057924;
const REG_SWIZZLE          = 1057888;
const REG_TAG              = 1057912;
const REG_TAG_X            = 1057904;
const REG_TAG_Y            = 1057908;
const REG_TAP_CRC          = 1057824;
const REG_TAP_MASK         = 1057828;
const REG_TOUCH_ADC_MODE   = 1058036;
const REG_TOUCH_CHARGE     = 1058040;
const REG_TOUCH_DIRECT_XY  = 1058164;
const REG_TOUCH_DIRECT_Z1Z2= 1058168;
const REG_TOUCH_MODE       = 1058032;
const REG_TOUCH_OVERSAMPLE = 1058048;
const REG_TOUCH_RAW_XY     = 1058056;
const REG_TOUCH_RZ         = 1058060;
const REG_TOUCH_RZTHRESH   = 1058052;
const REG_TOUCH_SCREEN_XY  = 1058064;
const REG_TOUCH_SETTLE     = 1058044;
const REG_TOUCH_TAG        = 1058072;
const REG_TOUCH_TAG_XY     = 1058068;
const REG_TOUCH_TRANSFORM_A= 1058076;
const REG_TOUCH_TRANSFORM_B= 1058080;
const REG_TOUCH_TRANSFORM_C= 1058084;
const REG_TOUCH_TRANSFORM_D= 1058088;
const REG_TOUCH_TRANSFORM_E= 1058092;
const REG_TOUCH_TRANSFORM_F= 1058096;
const REG_TRACKER          = 1085440;
const REG_TRIM             = 1058156;
const REG_VCYCLE           = 1057852;
const REG_VOFFSET          = 1057856;
const REG_VOL_PB           = 1057916;
const REG_VOL_SOUND        = 1057920;
const REG_VSIZE            = 1057860;
const REG_VSYNC0           = 1057864;
const REG_VSYNC1           = 1057868;

const DECR                 = 4;
const DECR_WRAP            = 7;
const DLSWAP_DONE          = 0;
const DLSWAP_FRAME         = 2;
const DLSWAP_LINE          = 1;
const DST_ALPHA            = 3;
const EDGE_STRIP_A         = 7;
const EDGE_STRIP_B         = 8;
const EDGE_STRIP_L         = 6;
const EDGE_STRIP_R         = 5;
const EQUAL                = 5;
const GEQUAL               = 4;
const GREATER              = 3;
const INCR                 = 3;
const INCR_WRAP            = 6;
const INT_CMDEMPTY         = 32;
const INT_CMDFLAG          = 64;
const INT_CONVCOMPLETE     = 128;
const INT_PLAYBACK         = 16;
const INT_SOUND            = 8;
const INT_SWAP             = 1;
const INT_TAG              = 4;
const INT_TOUCH            = 2;
const INVERT               = 5;

const CMDBUF_SIZE          = 4096;
const CMD_APPEND           = 4294967070;
const CMD_BGCOLOR          = 4294967049;
const CMD_BITMAP_TRANSFORM = 4294967073;
const CMD_BUTTON           = 4294967053;
const CMD_CALIBRATE        = 4294967061;
const CMD_CLOCK            = 4294967060;
const CMD_COLDSTART        = 4294967090;
const CMD_CRC              = 4294967043;
const CMD_DIAL             = 4294967085;
const CMD_DLSTART          = 4294967040;
const CMD_EXECUTE          = 4294967047;
const CMD_FGCOLOR          = 4294967050;
const CMD_GAUGE            = 4294967059;
const CMD_GETMATRIX        = 4294967091;
const CMD_GETPOINT         = 4294967048;
const CMD_GETPROPS         = 4294967077;
const CMD_GETPTR           = 4294967075;
const CMD_GRADCOLOR        = 4294967092;
const CMD_GRADIENT         = 4294967051;
const CMD_HAMMERAUX        = 4294967044;
const CMD_IDCT             = 4294967046;
const CMD_INFLATE          = 4294967074;
const CMD_INTERRUPT        = 4294967042;
const CMD_KEYS             = 4294967054;
const CMD_LOADIDENTITY     = 4294967078;
const CMD_LOADIMAGE        = 4294967076;
const CMD_LOGO             = 4294967089;
const CMD_MARCH            = 4294967045;
const CMD_MEMCPY           = 4294967069;
const CMD_MEMCRC           = 4294967064;
const CMD_MEMSET           = 4294967067;
const CMD_MEMWRITE         = 4294967066;
const CMD_MEMZERO          = 4294967068;
const CMD_NUMBER           = 4294967086;
const CMD_PROGRESS         = 4294967055;
const CMD_REGREAD          = 4294967065;
const CMD_ROTATE           = 4294967081;
const CMD_SCALE            = 4294967080;
const CMD_SCREENSAVER      = 4294967087;
const CMD_SCROLLBAR        = 4294967057;
const CMD_SETFONT          = 4294967083;
const CMD_SETMATRIX        = 4294967082;
const CMD_SKETCH           = 4294967088;
const CMD_SLIDER           = 4294967056;
const CMD_SNAPSHOT         = 4294967071;
const CMD_SPINNER          = 4294967062;
const CMD_STOP             = 4294967063;
const CMD_SWAP             = 4294967041;
const CMD_TEXT             = 4294967052;
const CMD_TOGGLE           = 4294967058;
const CMD_TOUCH_TRANSFORM  = 4294967072;
const CMD_TRACK            = 4294967084;
const CMD_TRANSLATE        = 4294967079;

const KEEP                 = 1;
const L1                   = 1;
const L4                   = 2;
const L8                   = 3;
const LEQUAL               = 2;
const LESS                 = 1;
const LINEAR_SAMPLES       = 0;
const LINES                = 3;
const LINE_STRIP           = 4;
const NEAREST              = 0;
const NEVER                = 0;
const NOTEQUAL             = 6;
const ONE                  = 1;
const ONE_MINUS_DST_ALPHA  = 5;
const ONE_MINUS_SRC_ALPHA  = 4;
const OPT_CENTER           = 1536;
const OPT_CENTERX          = 512;
const OPT_CENTERY          = 1024;
const OPT_FLAT             = 256;
const OPT_MONO             = 1;
const OPT_NOBACK           = 4096;
const OPT_NODL             = 2;
const OPT_NOHANDS          = 49152;
const OPT_NOHM             = 16384;
const OPT_NOPOINTER        = 16384;
const OPT_NOSECS           = 32768;
const OPT_NOTICKS          = 8192;
const OPT_RIGHTX           = 2048;
const OPT_SIGNED           = 256;
const PALETTED             = 8;
const FTPOINTS             = 2;
const RECTS                = 9;

const REPEAT               = 1;
const REPLACE              = 2;
const RGB332               = 4;
const RGB565               = 7;
const SRC_ALPHA            = 2;
const TEXT8X8              = 9;
const TEXTVGA              = 10;
const TOUCHMODE_CONTINUOUS = 3;
const TOUCHMODE_FRAME      = 2;
const TOUCHMODE_OFF        = 0;
const TOUCHMODE_ONESHOT    = 1;
const ULAW_SAMPLES         = 1;
const ZERO                 = 0;

const ADC_DIFFERENTIAL     = 1;
const ADC_SINGLE_ENDED     = 0;
const ADPCM_SAMPLES        = 2;
const ALWAYS               = 7;
const ARGB1555             = 0;
const ARGB2                = 5;
const ARGB4                = 6;
const BARGRAPH             = 11;
const BILINEAR             = 1;
const BITMAPS              = 1;
const BORDER               = 0;

const FT_DispWidth         = 320;
const FT_DispHeight        = 240;
const FT_DispHCycle        = 408;
const FT_DispHOffset       = 70;
const FT_DispHSync0        = 0;
const FT_DispHSync1        = 10;
const FT_DispVCycle        = 263;
const FT_DispVOffset       = 13;
const FT_DispVSync0        = 0;
const FT_DispVSync1        = 2;
const FT_DispPCLK          = 8;
const FT_DispSwizzle       = 2;
const FT_DispPCLKPol       = 0;

ram_ptr <- 0;
debug <- 0;

bitmap_header <- {
    format = RGB565,
    width  = 40,  
    height = 40,
    stride = 40*2,
};

bitmap_data <- [
    72,57,105,57,171,65,236,73,237,65,236,65,72,41,35,8,70,49,44,139,80,188,243,204,148,213,182,164,120,173,24,198,55,206,214,197,149,197,149,197,83,205,18,213,50,221,214,229,55,230,121,238,217,230,218,230,250,238,27,239,60,247,59,247,
87,238,237,203,198,121,164,48,198,40,43,90,147,172,110,139,40,49,72,49,139,57,238,73,237,65,236,65,104,49,99,16,232,81,141,155,145,188,84,205,149,205,214,172,120,173,248,197,88,206,214,197,117,197,84,197,19,205,18,213,83,221,245,229,
88,238,153,238,185,238,218,238,219,238,27,239,60,247,59,247,152,238,46,212,231,129,196,64,165,40,202,81,83,164,143,139,231,48,8,49,74,57,46,82,237,73,12,66,235,57,70,57,108,147,112,196,84,205,22,214,246,205,22,173,118,181,56,206,
120,206,181,197,83,197,242,204,209,220,18,221,116,229,246,229,88,230,153,238,185,238,250,238,250,238,28,239,92,247,60,247,218,246,209,228,104,146,4,73,133,24,71,57,242,147,208,147,73,57,40,57,8,49,172,65,40,41,106,49,75,82,11,139,
15,180,209,204,147,213,22,214,88,206,87,173,151,181,247,197,214,205,19,205,209,204,210,212,18,221,115,229,148,229,245,229,87,238,152,238,185,238,217,238,250,238,27,247,60,247,92,247,59,247,147,229,11,171,70,89,132,32,230,40,144,139,207,147,
40,49,73,57,105,57,106,49,231,32,104,57,172,106,207,171,209,196,50,205,115,213,246,205,121,206,248,189,150,181,84,189,243,196,210,212,19,229,83,229,116,229,148,229,180,229,213,229,54,230,120,230,185,230,185,238,217,238,250,238,27,247,93,255,
92,247,22,238,140,187,134,105,132,40,165,32,13,115,208,155,9,49,74,57,172,65,40,41,39,41,41,90,141,147,209,196,147,213,83,213,84,205,246,205,186,214,23,198,210,180,238,171,173,179,207,187,48,196,209,204,83,221,181,237,180,229,180,237,
246,229,87,238,120,238,152,238,184,238,217,246,27,247,59,247,250,246,147,229,11,163,69,89,131,32,165,40,140,98,207,147,138,57,138,57,139,65,231,32,233,81,76,139,144,188,179,205,21,214,180,205,181,205,24,206,88,206,50,197,205,179,75,179,
12,179,11,163,234,162,109,171,80,196,51,221,116,229,147,237,180,237,54,238,120,238,119,238,119,230,184,238,151,238,54,230,115,213,46,188,105,146,37,89,132,40,164,32,10,82,239,147,13,74,171,57,8,41,38,41,234,130,80,180,115,205,53,222,
87,214,213,205,215,205,246,205,208,188,140,187,141,195,205,195,173,187,11,171,231,129,198,121,105,146,173,187,18,221,51,229,147,237,245,237,87,230,87,238,119,238,245,237,17,205,237,179,10,147,169,154,72,146,134,105,196,56,133,32,169,65,208,147,
38,41,6,41,197,24,41,90,14,164,50,205,21,222,120,214,153,214,87,214,82,189,204,163,39,146,39,138,231,121,7,122,231,113,230,121,231,121,137,146,170,170,11,187,239,211,209,228,51,229,213,237,120,238,152,246,87,238,209,204,43,163,198,113,
69,89,166,105,198,121,134,105,4,65,132,32,136,65,176,147,99,24,196,32,135,57,141,155,241,188,212,213,86,222,217,214,185,214,17,181,10,139,134,97,228,80,5,81,195,64,70,81,232,89,232,89,5,73,232,121,202,170,76,195,173,211,47,212,
241,228,213,237,185,246,152,230,144,180,138,122,167,89,135,89,135,81,5,73,36,73,5,73,196,56,164,32,71,65,143,147,132,24,5,41,106,106,112,180,114,205,22,214,152,222,251,222,213,205,140,155,166,105,163,64,4,73,5,65,164,48,201,73,
112,123,83,148,10,98,232,121,136,170,43,203,108,203,238,219,241,220,54,238,186,246,212,213,170,122,70,65,71,65,76,98,13,131,70,73,195,56,195,48,196,48,164,40,38,65,143,139,39,49,201,73,110,147,242,196,181,205,119,214,186,214,87,206,
79,188,202,146,134,105,37,89,134,89,232,97,135,81,238,114,88,181,220,222,240,171,137,146,72,162,233,186,43,203,206,211,242,228,119,238,184,238,177,180,8,98,103,65,43,90,112,139,114,180,135,97,196,64,131,40,196,48,229,40,38,57,143,139,
10,82,204,114,81,172,115,197,55,206,185,214,87,206,144,180,43,179,76,187,235,162,105,138,8,130,204,138,14,131,115,156,57,206,219,238,19,221,108,195,201,186,234,186,43,203,141,211,51,229,185,246,152,222,206,179,236,138,206,122,145,131,83,164,
49,188,166,105,195,64,131,40,197,40,38,49,70,57,143,139,108,155,238,163,19,197,22,214,217,214,22,206,79,180,10,179,108,195,206,203,238,203,141,187,12,171,235,170,78,179,16,188,211,196,244,204,20,205,48,204,141,195,11,195,44,195,140,203,
19,229,153,246,218,230,211,196,240,187,143,171,241,171,143,163,105,138,101,105,5,81,228,64,229,48,39,57,38,57,111,139,237,171,111,188,213,213,153,214,245,197,46,180,234,170,43,195,206,211,48,212,80,212,80,212,239,211,173,203,174,195,239,195,
80,196,115,204,244,212,80,212,174,195,76,195,76,203,109,211,211,220,121,238,28,239,182,213,113,204,239,195,174,187,44,163,72,138,7,130,133,113,227,72,196,48,39,57,6,49,79,131,177,196,82,197,119,222,55,198,46,164,201,162,137,170,77,203,
239,211,81,220,146,220,178,228,177,220,145,220,113,212,145,212,211,212,211,212,243,212,113,212,239,203,141,203,108,203,44,203,145,220,89,238,61,239,88,230,243,212,80,204,174,203,76,187,202,170,201,162,230,129,4,81,196,48,38,57,5,49,46,123,
180,213,245,213,151,214,144,156,136,138,71,162,234,186,141,211,239,219,112,220,210,228,18,229,83,221,51,221,51,229,84,229,84,229,117,221,20,221,113,212,239,203,173,203,108,211,76,211,81,220,56,238,93,239,154,222,84,221,145,212,14,212,141,203,
44,195,11,187,39,138,36,89,229,56,37,65,229,48,13,123,184,222,119,214,116,173,231,89,230,129,136,170,43,195,108,203,238,211,80,220,209,228,19,229,116,229,148,229,148,229,149,229,117,229,148,221,18,221,112,220,47,220,238,203,108,211,44,203,
16,212,247,229,61,239,154,230,84,221,209,212,15,212,174,211,76,195,75,195,71,146,69,81,197,56,70,73,196,48,204,114,215,222,148,181,170,90,195,64,230,137,233,186,42,203,107,203,205,211,47,220,145,228,242,228,116,237,181,237,181,229,148,229,
148,229,82,229,242,228,111,212,47,220,238,211,140,211,75,203,15,212,215,229,61,239,219,230,83,213,209,212,47,212,174,211,108,211,75,195,39,138,37,73,196,56,38,65,196,48,139,106,19,157,239,123,229,40,5,73,7,138,201,178,42,203,107,211,
173,211,14,220,112,220,208,228,18,229,148,229,148,229,147,229,115,229,50,221,208,220,79,220,13,212,173,211,107,203,75,203,206,211,150,229,28,239,251,230,83,213,177,212,48,212,206,211,108,203,42,195,231,121,229,72,196,40,38,73,197,56,74,106,
170,82,232,65,164,40,37,81,230,137,169,178,43,203,108,211,141,211,238,219,80,220,145,228,242,228,82,237,84,229,115,229,82,229,17,229,175,220,13,212,173,211,140,203,75,203,10,203,174,211,85,221,219,238,60,239,83,213,177,212,79,212,207,211,
140,203,234,178,167,105,229,56,229,48,102,73,196,56,9,90,163,24,164,32,228,48,101,89,230,137,168,178,42,203,107,203,140,211,237,219,80,220,112,220,209,228,241,228,50,229,50,229,50,229,241,228,143,220,237,211,139,203,107,203,75,203,9,203,
140,203,243,220,154,230,61,239,84,221,145,212,47,212,238,211,108,203,169,170,101,89,229,48,38,57,134,81,196,56,200,81,34,16,132,24,69,65,133,105,230,137,135,170,10,195,75,211,108,211,205,219,14,220,79,220,111,220,144,220,209,228,241,220,
241,228,176,228,47,220,171,203,75,203,75,203,75,203,11,195,140,211,178,220,89,238,125,247,116,221,145,220,47,212,206,211,108,195,72,138,6,65,197,40,37,65,134,89,195,48,103,73,66,24,164,40,102,81,167,113,230,137,135,170,10,195,75,203,
108,211,173,211,238,219,47,220,79,228,111,220,144,220,177,220,209,220,144,220,14,212,75,195,43,203,108,211,172,211,107,211,107,211,145,220,56,238,92,239,84,221,112,212,14,212,173,203,43,179,168,97,197,40,197,32,37,57,133,81,195,56,38,65,
99,32,196,40,135,73,231,121,6,146,135,178,9,195,42,203,75,211,173,219,206,219,47,220,79,220,79,220,144,228,177,220,208,220,176,220,14,212,108,195,42,195,42,187,202,170,201,186,201,194,204,211,83,229,120,230,242,212,79,212,238,211,140,195,
170,154,37,65,197,32,229,48,37,65,69,81,228,64,228,56,99,32,196,48,199,81,39,130,39,154,136,186,9,203,42,203,107,211,140,211,238,219,15,220,46,220,47,220,112,220,144,220,176,220,176,228,79,220,204,211,75,203,234,194,169,170,200,186,
201,186,238,203,51,221,214,229,209,212,48,204,239,203,76,179,40,114,197,32,198,32,6,49,69,73,133,81,4,65,196,40,99,32,228,48,232,81,105,130,103,154,168,186,9,203,42,203,74,211,140,219,205,219,238,219,14,212,47,220,111,220,144,220,
176,220,177,228,111,220,14,212,172,211,75,203,75,203,140,203,238,195,211,212,149,221,148,221,177,212,16,212,205,195,235,154,102,81,165,32,230,32,38,57,134,81,166,89,37,73,164,48,131,40,229,48,200,81,137,130,104,154,200,178,41,203,42,203,
75,203,140,211,205,219,237,219,238,219,15,220,80,228,112,228,144,220,145,220,144,220,111,220,47,220,14,220,112,220,83,229,181,221,88,230,120,222,115,221,112,204,15,204,109,179,106,122,230,40,198,24,6,41,103,57,166,81,166,89,69,73,196,56,
164,40,5,49,200,81,170,130,136,154,200,186,42,203,74,203,74,211,140,211,173,211,205,219,205,219,238,211,46,220,79,220,80,220,111,220,112,220,79,212,79,212,144,220,82,221,121,230,121,230,185,238,152,230,83,221,48,204,15,204,12,163,168,81,
165,32,197,32,6,49,103,65,134,89,101,89,69,81,196,56,164,48,229,56,102,73,106,122,104,146,168,178,9,203,74,211,107,203,140,219,172,211,204,219,205,219,204,211,205,219,238,219,14,220,79,220,79,220,79,212,112,220,176,220,50,221,87,230,
120,238,88,230,247,229,242,212,15,204,174,195,139,130,38,49,165,24,198,32,38,49,102,65,166,89,133,89,69,73,196,48,228,56,5,57,69,73,73,114,39,138,103,170,233,202,74,211,74,211,107,211,140,219,173,219,205,219,205,219,140,211,107,195,
75,195,172,203,204,211,173,211,204,203,204,211,237,211,177,228,209,220,209,212,112,204,239,203,239,203,76,171,233,97,197,32,198,32,230,40,38,49,102,73,166,89,166,89,101,81,228,56,37,65,5,65,37,65,40,106,230,121,70,154,232,194,74,203,
42,203,106,211,139,211,172,219,237,219,12,220,106,203,232,186,167,178,233,194,10,195,42,203,9,195,234,194,11,195,141,211,173,211,108,195,11,187,76,187,206,195,170,122,102,65,197,24,197,40,229,48,37,57,134,81,167,97,166,89,102,81,229,56,
37,73,37,65,37,57,232,97,198,105,38,138,168,186,9,195,10,203,42,203,74,211,172,211,237,211,45,220,172,211,42,195,168,194,104,186,136,194,201,202,12,203,77,203,143,203,17,220,18,212,176,211,110,195,206,203,108,171,168,81,229,40,197,32,
197,32,229,40,37,65,134,81,198,97,133,89,134,81,37,65,69,73,69,73,37,65,166,89,165,97,230,121,136,162,233,186,233,194,9,195,75,203,108,203,204,211,237,211,14,220,204,219,75,211,9,211,233,210,43,227,142,227,50,228,180,236,245,236,
147,220,82,212,16,204,14,196,105,114,5,49,197,32,229,40,196,40,228,48,5,57,101,81,230,97,166,97,102,81,70,65,70,65,70,65,70,65,166,81,133,81,198,105,38,146,167,178,200,178,233,194,42,195,75,203,172,211,206,211,238,219,204,219,
140,211,74,203,42,211,10,211,43,211,109,211,174,219,143,211,240,219,48,220,15,204,75,163,135,73,197,40,197,32,229,48,228,48,229,48,5,57,134,81,231,97,199,97,102,81,69,73,69,65,37,65,38,65,102,73,102,73,134,97,197,121,70,154,
136,170,201,186,9,195,75,195,108,211,173,211,205,211,206,211,173,211,140,211,108,211,140,203,140,211,141,211,141,211,173,211,240,211,47,204,141,179,7,106,5,49,197,32,229,32,5,49,5,49,229,56,4,57,102,81,7,106,230,97,100,89,101,81,
37,65,37,65,5,57,37,65,69,73,69,73,133,97,197,129,38,154,135,170,233,186,42,195,107,203,173,203,173,211,205,203,238,211,238,211,14,212,47,212,111,220,144,220,112,220,144,220,144,220,14,196,202,146,37,65,164,32,197,24,5,41,38,57,
37,57,4,49,5,57,134,89,7,106,199,105,133,89,134,81,36,65,36,65,5,65,4,57,37,65,36,65,36,81,36,89,165,113,38,154,135,170,10,195,107,195,140,203,174,211,238,211,15,212,80,220,177,212,210,220,19,221,84,229,51,229,242,220,
177,220,173,179,41,114,196,40,196,32,229,32,38,41,70,57,69,57,228,48,4,65,199,89,72,114,231,97,198,97,134,89,228,48,4,57,4,65,5,57,37,65,37,65,69,73,36,65,195,72,68,97,229,145,168,170,43,195,108,203,173,211,14,212,
47,212,112,220,211,220,19,229,51,221,51,229,52,229,243,220,177,212,76,155,167,89,228,40,6,33,39,33,70,41,38,57,5,57,196,48,37,65,231,97,73,114,231,105,166,97,198,97,229,40,228,48,5,57,37,57,38,65,38,65,70,73,101,81,
228,64,4,73,101,97,197,129,71,146,169,162,43,179,141,195,205,203,47,212,113,212,210,220,19,221,18,221,209,220,144,212,47,204,202,146,102,73,197,32,39,33,39,41,71,49,70,57,4,49,228,48,70,65,8,98,104,114,7,98,231,105,230,97,
];

BOOT_EXAMPLE <- [
    0,255,0,2, //GPU instruction CLEAR_COLOR_RGB
    7,0,0,38,  //GPU instruction CLEAR
    0,0,0,0,   //GPU instruction DISPLAY
];

cs_pin <- hardware.pin8;
cs_pin.configure(DIGITAL_OUT);
cs_pin.write(0);

pd_pin <- hardware.pin9;
pd_pin.configure(DIGITAL_OUT);

// Configure SPI @ 4Mhz
spi <- hardware.spi257
spi.configure(CLOCK_IDLE_LOW | MSB_FIRST, 4000);

function spi_write(byte) {
    spi.write(format("%c", byte));
    if (debug > 0) {
        server.log("wrote " + byte);
    }
}

function clear_color_rgb(red,green,blue) {
    return (2<<24)|(((red)&255)<<16)|(((green)&255)<<8)|(((blue)&255)<<0);
}

function color_rgb(red, green, blue) {
    return (4<<24)|(((red)&255)<<16)|(((green)&255)<<8)|(((blue)&255)<<0);
}

function color_a(alpha) {
    return (16<<24)|(((alpha)&255)<<0);
}

function clear(c, s, t) {
    return (38<<24)|(((c)&1)<<2)|(((s)&1)<<1)|(((t)&1)<<0);
}

function line_width(width) {
    return (14<<24)|(((width)&4095)<<0);
}

function begin(prim) {
    return (31<<24)|(((prim)&15)<<0);
}

function end() {
    return (33<<24);
}

function vertex2f(x, y) {
    return (1<<30)|(((x)&32767)<<15)|(((y)&32767)<<0);
}

function vertex2ii(x, y, handle, cell) {
    return (2<<30)|(((x)&511)<<21)|(((y)&511)<<12)|(((handle)&31)<<7)|(((cell)&127)<<0);
}

function point_size(size) {
    return (13<<24)|(((size)&8191)<<0);
}
function bitmap_source(addr) {
    return (1<<24)|(((addr)&1048575)<<0);
}
function bitmap_layout(format, linestride, height) {
    return (7<<24)|(((format)&31)<<19)|(((linestride)&1023)<<9)|(((height)&511)<<0);
}

function bitmap_size(filter, wrapx, wrapy, width, height) {
    return (8<<24)|(((filter)&1)<<20)|(((wrapx)&1)<<19)|(((wrapy)&1)<<18)|(((width)&511)<<9)|(((height)&511)<<0);
}

function bitmap_transform_a(a) {
    return (21<<24)|(((a)&131071)<<0);
}

function bitmap_transform_e(e) {
    return (25<<24)|(((e)&131071)<<0);
}

function blend_func(src, dst) {
    return (11<<24)|(((src)&7)<<3)|(((dst)&7)<<0);
}

function gpu_power_down() {
    pd_pin.write(0);
    imp.sleep(0.5);
}

function gpu_power_up() {
    pd_pin.write(1);
    imp.sleep(0.2);
}

function gpu_host_cmd(cmd) {
    cs_pin.write(0);
    spi_write(cmd);
    spi_write(0);
    spi_write(0);
    cs_pin.write(1);
}

function gpu_write_mem(addr, byte_array) {
    gpu_write_start(addr);
    
    foreach (i, byte in byte_array) {
        spi_write(byte);
    }
    cs_pin.write(1);
}

function gpu_write_blob(addr, data) {
    gpu_write_start(addr);
    
    foreach (i, byte in data) {
        spi_write(byte);
    }
    cs_pin.write(1);
}

function gpu_write_start(addr) {
    cs_pin.write(0);
    spi_write(0x80 | (addr >> 16));
    spi_write((addr >> 8) & 0xff);
    spi_write(addr & 0xff);
}

function gpu_write_end() {
    cs_pin.write(1);
}
function gpu_write_mem8(addr, byte) {
    gpu_write_start(addr);
    spi_write(byte);
    cs_pin.write(1);
}

function gpu_write_mem16(addr, int) {
    gpu_write_start(addr);
    spi_write(int & 0xff);
    spi_write((int >> 8) & 0xff);
    cs_pin.write(1);
}

function gpu_write_mem32(addr, int) {
    gpu_write_start(addr);
    spi_write(int & 0xff);
    spi_write((int >> 8) & 0xff);
    spi_write((int >> 16) & 0xff);
    spi_write((int >> 24) & 0xff);  
    cs_pin.write(1);
}

function gpu_read_mem(addr, len) {
    cs_pin.write(0);
    spi_write((addr >> 16) & 0xff);
    spi_write((addr >> 8) & 0xff);
    spi_write(addr & 0xff);
    spi_write(0);
    local ret = spi.readblob(len);
    cs_pin.write(1);
    
    return ret;
}

function gpu_dlswap(swap_type) {
    gpu_write_mem8(REG_DLSWAP, swap_type);
    
    while (true) {
        local swap_done = gpu_read_mem(REG_DLSWAP, 1);
        if (swap_done[0] == DLSWAP_DONE) {
            break;
        }
        
        imp.sleep(0.02);
    }
}

// Make sure you set ram_ptr before using this!
function gpu_write_ram32(int) {
    gpu_write_mem32(ram_ptr, int);
    ram_ptr += 4;
}

function cp_dlstart_cmd() {
    ram_ptr = RAM_CMD;
    gpu_write_start(RAM_CMD);
    cp_send_cmd(CMD_DLSTART);
}

function cp_finish_cmd() {
    gpu_write_end();
    gpu_write_mem16(REG_CMD_WRITE, ram_ptr);
}

function cp_send_cmd(cmd) {
    spi_write(cmd & 0xff);
    spi_write((cmd >> 8) & 0xff);
    spi_write((cmd >> 16) & 0xff);
    spi_write((cmd >> 24) & 0xff);  
    
    ram_ptr += 4;
}

function cp_send_string(string) {
    // For some reason it looks like we have to pad strings with actual bytes
    local padding = "";
    switch (string.len() % 4) {
        case 1:
            padding = "000";
            break;
        case 2:
            padding = "00";
            break;
        case 3:
            padding = "0";
            break;
    }
    
    foreach (char in (string + padding)) {
        spi_write(char);
        ram_ptr += 1;
    }
    
    // 4 byte alignment
    ram_ptr = (ram_ptr + 3) & 0xffffffc
}

function cp_cmd_text(x, y, font, options, string) {
    cp_send_cmd(CMD_TEXT);
    cp_send_cmd(((y << 16) | (x & 0xffff)));
    cp_send_cmd(((options << 16) | font));
    cp_send_string(string + "\0");
}

function cp_cmd_number(x, y, font, options, n) {
    cp_send_cmd(CMD_NUMBER);
    cp_send_cmd(((y << 16) | (x & 0xffff)));
    cp_send_cmd(((options << 16) | font));
    cp_send_cmd(n);
}

function gpu_init() {
    gpu_host_cmd(FT_GPU_EXTERNAL_OSC);
    imp.sleep(0.2);
    
    gpu_host_cmd(FT_GPU_PLL_48M);
    imp.sleep(0.2);
    
    gpu_host_cmd(FT_GPU_CORE_RESET);
    gpu_host_cmd(FT_GPU_ACTIVE_M);
    
    while (1) {
        local chip_id = gpu_read_mem(REG_ID, 1);
        //server.log("waiting for GPU to boot: " + chip_id[0]);
        if (chip_id[0] == 0x7C) {
            server.log("GPU booted!");
            break;
        }
    }
}

function gpu_config() {
    gpu_write_mem16(REG_HCYCLE, FT_DispHCycle);
    gpu_write_mem16(REG_HOFFSET, FT_DispHOffset);
    gpu_write_mem16(REG_HSYNC0, FT_DispHSync0);
    gpu_write_mem16(REG_HSYNC1, FT_DispHSync1);
    gpu_write_mem16(REG_VCYCLE, FT_DispVCycle);
    gpu_write_mem16(REG_VOFFSET, FT_DispVOffset);
    gpu_write_mem16(REG_VSYNC0, FT_DispVSync0);
    gpu_write_mem16(REG_VSYNC1, FT_DispVSync1);
    gpu_write_mem8(REG_SWIZZLE, FT_DispSwizzle);
    gpu_write_mem8(REG_PCLK_POL, FT_DispPCLKPol);
    gpu_write_mem8(REG_PCLK, FT_DispPCLK);
    gpu_write_mem16(REG_HSIZE, FT_DispWidth);
    gpu_write_mem16(REG_VSIZE, FT_DispHeight);

    /*Set DISP_EN to 1*/
    //local reg_gpio_dir = gpu_read_mem(REG_GPIO_DIR, 1);
    //server.log("REG_GPIO_DIR: " + reg_gpio_dir[0]);
    // This seems to control the audio
    //gpu_write_mem8(REG_GPIO_DIR, 0x83); // | reg_gpio_dir[0].tointeger());
    local reg_gpio = gpu_read_mem(REG_GPIO, 1);
    //server.log("REG_GPIO: " + reg_gpio[0]);
    gpu_write_mem8(REG_GPIO, 0x83 | reg_gpio[0].tointeger());
    
    /* Touch configuration - configure the resistance value to 1200 - this value is specific to customer requirement and derived by experiment */
    gpu_write_mem16(REG_TOUCH_RZTHRESH, 1200);
    //server.log("wrote config");
}

function demo_text(string) {  
    cp_dlstart_cmd();
    cp_send_cmd(clear_color_rgb(255, 255, 255));
    cp_send_cmd(clear(1, 1, 1));
    cp_send_cmd(color_rgb(0x80, 0x80, 0x00));
    cp_cmd_text(FT_DispWidth/2, FT_DispHeight/2, 31, OPT_CENTERX, string);
    //cp_cmd_number(FT_DispWidth/2, FT_DispHeight/2, 31, OPT_CENTERX, 42);
    
    cp_send_cmd(0);
    cp_send_cmd(CMD_SWAP);
    cp_finish_cmd();
}

function demo_points() {
    ram_ptr = RAM_DL;
    gpu_write_start(RAM_DL);
    
    /* Construct DL of points */
    gpu_write_ram32(clear_color_rgb(128,128,128));
    gpu_write_ram32(clear(1,1,1));
    gpu_write_ram32(color_rgb(128, 0, 0) );
    gpu_write_ram32(point_size(5 * 16) );
    gpu_write_ram32(begin(FTPOINTS) );
    gpu_write_ram32(vertex2f((FT_DispWidth/5) * 16, (FT_DispHeight/2) * 16) );
    gpu_write_ram32(color_rgb(0, 128, 0) );
    gpu_write_ram32(point_size(15 * 16) );
    gpu_write_ram32(vertex2f((FT_DispWidth*2/5) * 16, (FT_DispHeight/2) * 16) );
    gpu_write_ram32(color_rgb(0, 0, 128) );
    gpu_write_ram32(point_size(25 * 16) );
    gpu_write_ram32(vertex2f((FT_DispWidth*3/5) * 16, (FT_DispHeight/2) * 16) );
    gpu_write_ram32(color_rgb(128, 128, 0) );
    gpu_write_ram32(point_size(35 * 16) );
    gpu_write_ram32(vertex2f((FT_DispWidth*4/5) * 16, (FT_DispHeight/2) * 16) );
    gpu_write_ram32(0); // display the image

  gpu_dlswap(DLSWAP_FRAME);
}

function demo_lines() {
    local line_height = 25;
    
    ram_ptr = RAM_DL;
    gpu_write_start(RAM_DL);
    
    gpu_write_ram32(clear_color_rgb(0, 0, 0));
    gpu_write_ram32(clear(1, 1, 1));
    gpu_write_ram32(color_rgb(128, 0, 0) );
    
    gpu_write_ram32(line_width(5 * 16));
    gpu_write_ram32(begin(LINES));
    gpu_write_ram32(vertex2f((FT_DispWidth/4) * 16,((FT_DispHeight - line_height)/2) * 16));
    gpu_write_ram32(vertex2f((FT_DispWidth/4) * 16,((FT_DispHeight + line_height)/2) * 16));
    gpu_write_ram32(color_rgb(0, 128, 0));
    gpu_write_ram32(line_width(10 * 16));
      
    line_height = 40;
    gpu_write_ram32(vertex2f((FT_DispWidth*2/4) * 16,((FT_DispHeight - line_height)/2) * 16));
    gpu_write_ram32(vertex2f((FT_DispWidth*2/4) * 16,((FT_DispHeight + line_height)/2) * 16));
    gpu_write_ram32(color_rgb(128, 128, 0));
    gpu_write_ram32(line_width(20 * 16));
      
    line_height = 55;
      gpu_write_ram32(vertex2f((FT_DispWidth*3/4) * 16, ((FT_DispHeight - line_height)/2) * 16));
    gpu_write_ram32(vertex2f((FT_DispWidth*3/4) * 16, ((FT_DispHeight + line_height)/2) * 16));
      
    gpu_write_ram32(0); // display the image
    
    gpu_dlswap(DLSWAP_FRAME);   
}

function demo_rectangles() {
    local RectWidth = 5;
    local RectHeight = 25;

    ram_ptr = RAM_DL;
    gpu_write_start(RAM_DL);
    
    gpu_write_ram32(clear(1, 1, 1)); // clear screen
    gpu_write_ram32(color_rgb(0, 0, 128));
    gpu_write_ram32(line_width(1 * 16)); // LINE_WIDTH is used for corner curvature
    gpu_write_ram32(begin(RECTS));
      
    RectWidth = 5;
    RectHeight = 25;
    gpu_write_ram32(vertex2f(((FT_DispWidth/4) - (RectWidth/2)) * 16, ((FT_DispHeight - RectHeight)/2) * 16));
    gpu_write_ram32(vertex2f(((FT_DispWidth/4) + (RectWidth/2)) * 16, ((FT_DispHeight + RectHeight)/2) * 16));
    gpu_write_ram32(color_rgb(0, 128, 0));
    gpu_write_ram32(line_width(5 * 16));
      
    RectWidth = 10;
    RectHeight = 40;
    gpu_write_ram32(vertex2f(((FT_DispWidth*2/4) - (RectWidth/2)) * 16, ((FT_DispHeight - RectHeight)/2) * 16));
    gpu_write_ram32(vertex2f(((FT_DispWidth*2/4) + (RectWidth/2)) * 16, ((FT_DispHeight + RectHeight)/2) * 16));
    gpu_write_ram32(color_rgb(128, 128, 0));
    gpu_write_ram32(line_width(10 * 16));
      
    RectWidth = 20;
    RectHeight = 55;
    gpu_write_ram32(vertex2f(((FT_DispWidth*3/4) - (RectWidth/2)) * 16, ((FT_DispHeight - RectHeight)/2) * 16));
    gpu_write_ram32(vertex2f(((FT_DispWidth*3/4) + (RectWidth/2)) * 16, ((FT_DispHeight + RectHeight)/2) * 16));
    gpu_write_ram32(0); // display the image
    
    gpu_dlswap(DLSWAP_FRAME);
}

function demo_bitmap() {
    local BMoffsetx;
    local BMoffsety;
    
    gpu_write_mem(RAM_G, bitmap_data);
    
    ram_ptr = RAM_DL;
    gpu_write_start(RAM_DL);
    
    gpu_write_ram32(clear_color_rgb(0,0,0));  // Black the screen out
    gpu_write_ram32(clear(1, 1, 1)); // clear screen
    gpu_write_ram32(color_rgb(255,255,255));
    gpu_write_ram32(bitmap_source(RAM_G));
    gpu_write_ram32(bitmap_layout(bitmap_header.format, bitmap_header.stride, bitmap_header.height));
    gpu_write_ram32(bitmap_size(NEAREST, BORDER, BORDER, bitmap_header.width, bitmap_header.height));
    gpu_write_ram32(begin(BITMAPS)); // start drawing bitmaps

    BMoffsetx = FT_DispWidth/4 - bitmap_header.width/2;
    BMoffsety = FT_DispHeight/2 - bitmap_header.height/2;
    gpu_write_ram32(vertex2ii(BMoffsetx, BMoffsety, 0, 0));

    gpu_write_ram32(color_rgb(255, 64, 64)); // red at (200, 120)
    BMoffsetx = FT_DispWidth*2/4 - bitmap_header.width/2;
    BMoffsety = FT_DispHeight/2 - bitmap_header.height/2;
    gpu_write_ram32(vertex2ii(BMoffsetx, BMoffsety, 0, 0));

    gpu_write_ram32(color_rgb(64, 180, 64)); // green at (216, 136)
    BMoffsetx += bitmap_header.width/2;
    BMoffsety += bitmap_header.height/2;
    gpu_write_ram32(vertex2ii(BMoffsetx, BMoffsety, 0, 0));

    gpu_write_ram32(color_rgb(255, 255, 64)); // transparent yellow at (232, 152)
    gpu_write_ram32(color_a(150));
    BMoffsetx += bitmap_header.width/2;
    BMoffsety += bitmap_header.height/2;
    gpu_write_ram32(vertex2ii(BMoffsetx, BMoffsety, 0, 0));

    gpu_write_ram32(color_a(255));
    gpu_write_ram32(color_rgb(255,255,255));
    gpu_write_ram32(vertex2f(-10*16, -10*16)); //for -ve coordinates use vertex2f instruction
    gpu_write_ram32(end());

    gpu_write_ram32(0); // display the image

    gpu_dlswap(DLSWAP_FRAME);
}

function demo_textvga() {
    local text_array = blob(160);
    local hoffset = 32;
    local voffset = 32;

    for (local i = 0; i < 160; i++) {
        text_array.writen(math.rand() % 65536, 's');
    }
  
    gpu_write_mem(RAM_G, text_array);
    
    ram_ptr = RAM_DL;
    gpu_write_start(RAM_DL);

    gpu_write_ram32(clear_color_rgb(0,0,0));  // Black the screen out
    gpu_write_ram32(clear(1, 1, 1)); // clear screen
    gpu_write_ram32(bitmap_source(RAM_G));

    // mandatory for textvga as background color is also one of the parameter in textvga format
    gpu_write_ram32(blend_func(ONE, ZERO));

    //draw 8x8
    gpu_write_ram32(bitmap_layout(TEXTVGA, 2*4, 8)); //L1 format, but each input data element is of 2 bytes in size
    gpu_write_ram32(bitmap_size(NEAREST, BORDER, BORDER, 8*8, 8*8)); //output is 8x8 format - draw 8 characters in horizontal and 8 vertical
    gpu_write_ram32(begin(BITMAPS));
    gpu_write_ram32(vertex2f(hoffset*16,voffset*16));
    gpu_write_ram32(end());
      
    //draw textvga
    gpu_write_ram32(bitmap_layout(TEXTVGA, 2*16, 8)); //L1 format but each datatype is 16bit size
    gpu_write_ram32(bitmap_size(NEAREST, BORDER, REPEAT, 8*32, 8*32)); //8 pixels per character and 32 rows/colomns
    gpu_write_ram32(begin(BITMAPS));
    hoffset = FT_DispWidth/2;
    voffset = FT_DispHeight/2;
    // Display textvga at hoffset, voffset location
    gpu_write_ram32(vertex2f(hoffset*16, voffset*16));
    gpu_write_ram32(end());
    
    gpu_write_ram32(0); // display the image

    gpu_dlswap(DLSWAP_FRAME);
}


/* Beginning of execution */
cs_pin.write(1);

// Power cycle to be safe
server.log("Power cycling");
gpu_power_down();
gpu_power_up();
gpu_init();
gpu_config();

// Another way to write to the screen
//gpu_write_mem(RAM_DL, BOOT_EXAMPLE);
//gpu_write_mem8(REG_DLSWAP, DLSWAP_FRAME);

demo_text("Hello World!");
imp.sleep(1);
demo_points();
imp.sleep(1);
demo_lines();
imp.sleep(1);
demo_rectangles();
imp.sleep(1);
demo_bitmap();
imp.sleep(1);
demo_textvga();

server.log("End of execution");
