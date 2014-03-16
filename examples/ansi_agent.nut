const BUFFER_SIZE = 32;
const COLUMNS     = 80;

urls     <- [
    "http://asm.dj/blocktronics_acid_trip.bin",
    "http://asm.dj/skynet.bin",
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
