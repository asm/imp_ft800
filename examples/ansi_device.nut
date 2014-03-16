/* Pin out -
Imp pin -> FT800 pin
      1 -> SCLK
      2 -> PD
      5 -> INT
      7 -> CS
      8 -> MOSI
      9 -> MISO
*/

// background (4bits) + forground (4bits) + char (1byte)
// http://en.wikipedia.org/wiki/List_of_monochrome_and_RGB_palettes#4-bit_RGBI
// see https://github.com/ByteProject/AnsiLove-C/blob/master/ansilove/ansilove.c for an implementation of how to read .ans and .bin

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

class FT800 {
    ram_ptr = 0;
    debug   = 0;
    
    spi     = null;
    cs_pin  = null;
    pd_pin  = null;
    int_pin = null;
    
    touch_callback = null;
    
    function constructor(_config) {
        spi     = _config.spi
        cs_pin  = _config.cs_pin;
        pd_pin  = _config.pd_pin;
        int_pin = _config.int_pin;
        
        if ("touch_callback" in _config)
            touch_callback = _config.touch_callback;
        
        cs_pin.configure(DIGITAL_OUT);
        pd_pin.configure(DIGITAL_OUT);

        cs_pin.write(1);
        
        // Configure SPI @ 4Mhz and set up the interrupt handler
        spi.configure(CLOCK_IDLE_LOW | MSB_FIRST, 15000);
        int_pin.configure(DIGITAL_IN, int_handler.bindenv(this));

        // Power cycle to be safe
        server.log("Power cycling");
        gpu_power_down();
        gpu_power_up();
        gpu_init();
        gpu_config();
    }
    
    function int_handler() {
        if (int_pin.read()) {return;}
        server.log("touched!");
        local int_byte = gpu_read_mem(REG_INT_FLAGS, 1);
        if (int_byte && 0x02) {
            // The touch engine takes about 25 ms (measured experimentally :/ to load
            // the touch coordinates into the tag registers and find the tag.
            imp.sleep(0.025);
            local data = gpu_read_mem(REG_TOUCH_RZ, 13);
            
            local touch_force = (data[1] << 8) + data[0];
            local touch_y     = (data[5] << 8) + data[4];
            local touch_x     = (data[7] << 8) + data[6];
            local tag_y       = (data[9] << 8) + data[8];
            local tag_x       = (data[11] << 8) + data[10];
            local tag         = data[12];
            
            if (touch_callback)
                touch_callback();
        }
        
        // give a moment for the touch to release (not unlike debouncing a switch!)
        imp.sleep(0.2);
    }
    
    function set_ram_ptr(_ram_ptr) {
        ram_ptr = _ram_ptr;
    }

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
    
    function display_list(list) {
        set_ram_ptr(RAM_DL);
        gpu_write_start(RAM_DL);
        
        foreach(i in list) {
            gpu_write_ram32(i);
        }
        
        gpu_dlswap(DLSWAP_FRAME);
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
    
        // This seems to control the audio
        //gpu_write_mem8(REG_GPIO_DIR, 0x83); // | reg_gpio_dir[0].tointeger());
        local reg_gpio = gpu_read_mem(REG_GPIO, 1);
        gpu_write_mem8(REG_GPIO, 0x83 | reg_gpio[0].tointeger());
        
        // Touch configuration - configure the resistance value to 1200 - this value is specific to customer requirement and derived by experiment
        gpu_write_mem16(REG_TOUCH_RZTHRESH, 1200);
        
        // enable touch interrupts (all sources enabled by default)
        gpu_write_mem8(REG_INT_EN, 0x01);

        // enable interrupts on touch events only
        gpu_write_mem8(REG_INT_MASK, 0x02);
        
        // dummy read to clear the registers on boot
        gpu_read_mem(REG_INT_FLAGS, 1);
        
        // Backlight - values are 0 - 128 (128 = max)
        //gpu_write_mem8(REG_PWM_DUTY, 10);
        
        //server.log("wrote config");
    }
}

// Simple progress display to let everyone know we're busy loading stuff
class LoadingText {
    ft800 = null;
    spinner_pos = 0;
    spinner = ['|', '/', '-', '\\'].map(function (a) {
        return a.tointeger();
    });
    loaded = false;
    callback = null;
    loading_text = [
        0x4c, 0x0f, 0x6f, 0x0f, 0x61, 0x0f, 0x64, 0x0f, 0x69, 0x0f, 0x6e, 0x0f, 0x67, 0x0f, 0x0, 0x0, 0x0, 0x0f, 0x0, 0x0,
    ];
    
    function constructor(_ft800, _callback) {
        ft800 = _ft800;
        callback = _callback;
        ft800.gpu_write_mem(RAM_G, loading_text);
    }

    function show() {
        if (callback.call(this))
            return;

      ft800.gpu_write_mem8(RAM_G + 16, spinner[spinner_pos % 4]);
        spinner_pos += 1;

        ft800.display_list([
            ft800.clear_color_rgb(0, 0, 0),  // black the screen out
          ft800.clear(1, 1, 1),            // clear screen
          ft800.bitmap_source(RAM_G),

            // mandatory for textvga as background color is also one of the parameter in textvga format
            ft800.blend_func(ONE, ZERO),
            ft800.bitmap_layout(TEXTVGA, 2*16, 8),   // L1 format but each datatype is 16bit size
            ft800.bitmap_size(NEAREST, BORDER, BORDER, 8*10, 8*2), // 8 pixels per character
            ft800.begin(BITMAPS),
            ft800.vertex2f((FT_DispWidth / 2 - 40) * 16, (FT_DispHeight / 2 - 8) * 16),
            ft800.end(),
            0,
        ]);
        
        imp.wakeup(0.2, show.bindenv(this));
    }
}

// Async loader to allow us to do other things while loading ram
class Loader {
    ft800      = null;
    pos        = 0;
    addr       = 0;
    block_size = 0;
    data       = null;
    callback   = null;
    len        = 0;
    
    function constructor(_ft800, _addr, _data, _block_size, _callback) {
        ft800       = _ft800;
        addr        = _addr;
        data        = _data;
        block_size  = _block_size;
        callback    = _callback;
        len         = data.len();
        
        load();
    }
    
    function load() {
        if (pos < len) {
            local n = block_size;
            
            if (pos + block_size > len)
                n = pos + block_size - len;
                
            ft800.gpu_write_mem(addr, data.readblob(n));
            addr += block_size;
            pos += block_size;
            imp.wakeup(0.01, load.bindenv(this));
        } else {
            // All done!
            if (callback != null)
                callback.call(this);
        }
    }
}

const COLUMNS        = 80;
const SCREEN_SIZE    = 32;
const SCROLL_SLEEP   = 0.3;
const BUFFER0_OFFSET = 100;
const BUFFER1_OFFSET = 16384;

class AnsiScroller {
    ft800      = null;
    bin_len    = 0;
    buffer_ptr = 0;
    pos        = 0;
    buffer     = 0;
    loaded     = false;
    
    function constructor(_ft800) {
        ft800 = _ft800;
        agent.send("fetch", 0);
    }
    
    function is_loaded() {
        return loaded;
    }
    
    function unload() {
        loaded = false;
    }
    
    function load_complete() {
        loaded = true;
        scroll();
    }
    
    function handle_packet(packet) {
        bin_len = packet.len() / COLUMNS / 2;
        
        if (loaded) {
            // Use double buffering for smoother scrolling while loading
            if (buffer == 0) {
                Loader(ft800, RAM_G + BUFFER0_OFFSET, packet, 100, null);
            } else {
                Loader(ft800, RAM_G + BUFFER1_OFFSET, packet, 100, null);
            }
        } else {
            // First time load is a little different
            buffer_ptr = RAM_G + 100;
            buffer = 1;
            Loader(ft800, RAM_G + BUFFER0_OFFSET, packet, 1000, load_complete.bindenv(this));
        }
    }
    
    function scroll() {
        if(!loaded) {return;}
        // Once, we're a little ways in, send the request for the next block
        if (pos == 1) {
            agent.send("fetch", 0);
        }
        
        // Have we reached the end of the buffer?
        if (pos >= bin_len - SCREEN_SIZE) {                
            pos = 0;
        
            // Flip buffers
            if (buffer == 0) {
                buffer_ptr = RAM_G + BUFFER0_OFFSET;
                buffer = 1;
            } else {
                buffer_ptr = RAM_G + BUFFER1_OFFSET;
                buffer = 0;
            }
        }
        
        ft800.display_list([
            ft800.clear_color_rgb(0, 0, 0),  // black the screen out
            ft800.clear(1, 1, 1),            // clear screen
            ft800.bitmap_source(buffer_ptr + (COLUMNS * 2) * pos),
    
            // mandatory for textvga as background color is also one of the parameter in textvga format
            ft800.blend_func(ONE, ZERO),
            ft800.bitmap_layout(TEXTVGA, 16*10, 60), // L1 format but each datatype is 16bit size
            ft800.bitmap_transform_a(512),           // shrink the bitmap in both dimensions by half
            ft800.bitmap_transform_e(512),
            ft800.bitmap_size(BILINEAR, BORDER, BORDER, 8*SCREEN_SIZE*2, 8*SCREEN_SIZE), // 8 pixels per character
            ft800.begin(BITMAPS),
            ft800.vertex2f(0, 0),
            ft800.end(),
            0, // display the image
        ]);

        pos += 1;
        imp.wakeup(SCROLL_SLEEP, scroll.bindenv(this));
    }
}

agent.on("bin", function(packet) {
    scroller.handle_packet(packet);
});

function touched() {
    agent.send("touched", 1);
    scroller.unload();
    scroller = AnsiScroller(ft800);
    LoadingText(ft800, scroller.is_loaded.bindenv(scroller)).show();
}


/* Beginning of execution */
imp.setpowersave(true);

ft800 <- FT800({
    spi     = hardware.spi189,
    cs_pin  = hardware.pin7,
    pd_pin  = hardware.pin2,
    int_pin = hardware.pin5,
    touch_callback = touched,
});

scroller <- AnsiScroller(ft800);
LoadingText(ft800, scroller.is_loaded.bindenv(scroller)).show();
