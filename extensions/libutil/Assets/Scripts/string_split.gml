/// string_split(string, substr)

var str = argument0, sub = argument1, result, i = 0, pos = string_pos(sub, str);

while(pos) {
    result[i++] = string_delete(str, pos, string_length(str));
    str = string_delete(str, 1, pos);
    pos = string_pos(sub, str);
}
result[i] = str;

return result;
