/// url_encode(str)

var s = "";
var hex_digits = "0123456789ABCDEF";
var special_chars = "$&+,/:;=?@ " + '"' + "'<>#%{}|\^~[]`!";

var c, o, escapes, escape_bytes;
var l = string_length(argument0);

for (var i = 1; i <= l; i++) {
    c = string_char_at(argument0, i);
    o = ord(c);
    escapes = 0;
    // Single-byte characters
    if (o <= $7F) {
        if (string_pos(c, special_chars) != 0) || (o < 32) {
            escapes = 1;
            escape_bytes[0] = o;
        }
    }
    // 2-byte characters
    else if (o <= $7FF) {
        escapes = 2;
        escape_bytes[0] = (o>>6)+192;
        escape_bytes[1] = (o&63)+128;
    }
    // 3-byte characters
    else if (o <= $FFFF) { 
        escapes = 3;
        escape_bytes[0] = (o>>12)+224;
        escape_bytes[1] = ((o>>6)&63)+128;
        escape_bytes[2] = (o&63)+128;
    }
    // Too long
    else {
        return "";
    }
    // Dump in escape characters, if any
    if (escapes == 0) {
        s += c;
    } else {
        for (var j = 0; j < escapes; j++) {
            s += "%" + string_char_at(hex_digits, (escape_bytes[j]>>4)+1) + string_char_at(hex_digits, (escape_bytes[j]&15)+1);
        }
    }
}

// Done
return s;
