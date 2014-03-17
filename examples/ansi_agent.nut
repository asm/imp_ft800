const BUFFER_SIZE = 32;
const COLUMNS     = 80;

urls <- [
    "http://asm.dj/ansi/blocktronics_acid_trip.bin",
    "http://asm.dj/ansi/leviathan.bin",
    "http://asm.dj/ansi/skynet.bin",
    "http://asm.dj/ansi/fil-font.bin",
    "http://asm.dj/ansi/blackflag.bin",
    "http://asm.dj/ansi/AE-CH02.bin",
    "http://asm.dj/ansi/BE-PI1.bin",
    "http://asm.dj/ansi/EX-AMBER.bin",
    "http://asm.dj/ansi/GL-FLUX1.bin",
    "http://asm.dj/ansi/HV-PORN.bin",
    "http://asm.dj/ansi/KM-DOH.bin",
    "http://asm.dj/ansi/KM-PROPH.bin",
    "http://asm.dj/ansi/LD-TNW1.bin",
    "http://asm.dj/ansi/MB-POINT.bin",
    "http://asm.dj/ansi/RZ-FORCE.bin",
    "http://asm.dj/ansi/S5-AOS1.bin",
    "http://asm.dj/ansi/SO-DSUN1.bin",
    "http://asm.dj/ansi/SO-NEO1.bin",
    "http://asm.dj/ansi/UNS-ITCH.bin",
    "http://asm.dj/ansi/US-SFISH.bin",
    "http://asm.dj/ansi/VS-FED1.bin",
];
url_ptr  <- 0;
data     <- null;
data_end <- null;
pos      <- 0;

function fetch_bin () {
  local request = http.get(urls[url_ptr], {});
  local response = request.sendsync();
  data = response.body;
  data_end = COLUMNS * 2 * (math.floor(math.abs(data.len() / (COLUMNS * 2))));
}

device.on("fetch", function(nop) {
    // Recall the ansi we were last displaying
    local server_storage = server.load();

    if ("ansi_url_ptr" in server_storage) {
        url_ptr = server_storage.ansi_url_ptr;
    }

    if (data == null) {
        // Cache miss, fetch a new bin
        fetch_bin();
        send_bin();
    } else {
        // No need to fetch, just send the cached bin
        send_bin()
    }
});

device.on("touched", function(nop) {
    pos = 0;
    url_ptr = (url_ptr + 1) % urls.len();
    // Update the server stored pointer
    server.save({
        ansi_url_ptr = url_ptr,
    })
    fetch_bin();
});

function send_bin() {
    // We multiply by here as each character is 2 bytes (color + char)
    local start = pos * COLUMNS * 2;
    local end = (pos + BUFFER_SIZE * 2) * COLUMNS * 2;
    
    pos += BUFFER_SIZE;

    device.send("bin", build_data(start, end));
}

function build_data (start, end) {
    // Most of the complexity here supports endless/seamless scrolling.
    if (end >= data_end) {
        pos = (end - data_end) / COLUMNS / 2 - BUFFER_SIZE;
        return data.slice(start, data_end) + data.slice(0, end - data_end);
    }

    // In this case, we need to tack on a bit from the end
    if (start < 0) {
        return data.slice(data_end + start, data_end) + data.slice(0, end);
    }
    
    return data.slice(start, end);
}
