/// color_get(msg, default, callback)

with(obj_colorpick) instance_destroy();

var pick = instance_create(0,0,obj_colorpick);
pick.master = id;
pick.str = argument0;
pick.c[0] = colour_get_red(argument1);
pick.c[1] = colour_get_green(argument1);
pick.c[2] = colour_get_blue(argument1);
pick.callback = argument2;
return pick;
