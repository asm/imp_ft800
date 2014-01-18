const BIN_URL     = "http://asm.dj/blocktronics_acid_trip.bin";
//const BIN_URL     = "http://asm.dj/skynet.bin";
const BUFFER_SIZE = 32;
const COLUMNS     = 80;

data     <- null;
data_end <- null;
pos      <- 0;

function fetch_bin (url) {
  local request = http.get(url, {});
  local response = request.sendsync();
  return response.body;
}

device.on("fetch", function(nop) {
    if (data == null) {
        data = fetch_bin(BIN_URL);
        data_end = COLUMNS * 2 * (math.floor(math.abs(data.len() / (COLUMNS * 2))));
        send_bin();
        server.log("sent fresh bin");
    } else {
        send_bin()
        server.log("sent cached bin");
    }
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
