/// blob_set_color(color)

global.blobcolor = argument0;
global.projcolor = abs(argument0 - $FFFFFF) & $FFFFFF;
