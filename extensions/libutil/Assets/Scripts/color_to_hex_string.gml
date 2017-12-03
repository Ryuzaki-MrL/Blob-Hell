/// color_to_hex_string(color, bgr)

var str = "", hexstr = "0123456789ABCDEF";
var r = colour_get_red(argument0), g = colour_get_green(argument0), b = colour_get_blue(argument0);

if (!argument1) {
    str += string_char_at(hexstr,((r - (r & 15))/16)+1)+string_char_at(hexstr,(r & 15)+1) + 
           string_char_at(hexstr,((g - (g & 15))/16)+1)+string_char_at(hexstr,(g & 15)+1) +
           string_char_at(hexstr,((b - (b & 15))/16)+1)+string_char_at(hexstr,(b & 15)+1);
} else {
    str += string_char_at(hexstr,((b - (b & 15))/16)+1)+string_char_at(hexstr,(b & 15)+1) + 
           string_char_at(hexstr,((g - (g & 15))/16)+1)+string_char_at(hexstr,(g & 15)+1) +
           string_char_at(hexstr,((r - (r & 15))/16)+1)+string_char_at(hexstr,(r & 15)+1);
} return str;
