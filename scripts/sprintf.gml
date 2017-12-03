/// sprintf(format[, format_array | ...])

var i = 1, s = argument[0];

if (i==argument_count) return s;

if (is_array(argument[1])) {
    var arr = argument[1];
    var len = array_length_1d(arr);
    while((i < len) && (string_pos("%s", s)!=0)) {
        s = string_replace(s, "%s", string(arr[i++]));
    }
} else {
    while((i < argument_count) && (string_pos("%s", s)!=0)) {
        s = string_replace(s, "%s", string(argument[i++]));
    }
} return s;
