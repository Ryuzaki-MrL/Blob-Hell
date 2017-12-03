/// json_close(json)

if (!ds_exists(argument0, ds_type_map)) exit;

var jmap = argument0;
var msize = ds_map_size(jmap);

if (msize==1) {
    var jlist = jmap[? "default"];
    if (ds_exists(jlist, ds_type_list)) {
        var lsize = ds_list_size(jlist);
        for (var i = 0; i < lsize; i++) {
            var spr = ds_map_find_value(ds_list_find_value(jlist, i), "preview");
            if (sprite_exists(spr)) sprite_delete(spr);
        } ds_list_destroy(jlist);
    }
}

ds_map_destroy(argument0);
return -1;
