/// blob_generate(w, h, color)

var w = argument0, h = argument1, c = argument2;
var surf = surface_create(w, h);
surface_set_target(surf);
draw_clear_alpha(0, 0);
for (var i = (w>>4)+irandom((w>>5)); i < w-(w>>4)+irandom((w>>5)); i++) {
    for (var j = (h>>4)+irandom(4); j < h-(h>>4)-irandom(4); j++) {
        draw_point_colour(i, j, c);
    }
}
surface_reset_target();
var out = sprite_create_from_surface(surf, 0, 0, w, h, 1, 0, w>>1, h>>1);
surface_free(surf);
return out;
