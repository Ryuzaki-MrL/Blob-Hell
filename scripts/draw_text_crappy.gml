/// draw_text_crappy(x, y, str, size, speed)

var xx = argument0, yy = argument1;
var str = string_upper(argument2);
var size = argument3;
var offs = 96*size;

for (var i = 0; i < string_length(str); i++) {
    var c = ord(string_char_at(str, i+1)) - ord('A');
    if (c < 0 || c > 26) continue;
    draw_sprite_ext(spr_cf_a + c, anim, xx + i*offs, yy, size, size, 0, draw_get_color(), 1);
}
anim += argument4;
