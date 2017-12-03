/// string_truncate(str, width)

var str = argument0, extra = 0, ew = string_width("...");

while(string_width(str)>argument1-extra && string_length(str)>1) {
    extra = ew;
    str = string_copy(str, 1, string_length(str)-1);
}
if (extra) str += "...";
return str;
