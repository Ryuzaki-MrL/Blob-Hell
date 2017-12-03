/// highscore_upload()

var name = get_string("Your name:", "");
if (name=="") return 0;

var query = "name="+url_encode(name)+"&score="+string(global.highscore);
var map = ds_map_create();

ds_map_add(map, "Connection", "keep-alive");
ds_map_add(map, "Content-Length", string(string_length(query)));
ds_map_add(map, "User-Agent", "blobhell");
ds_map_add(map, "Content-Type", "application/x-www-form-urlencoded");

with(obj_game) {
    if (onlinescores != -1)
        ds_map_destroy(onlinescores);
    request = http_request("http://impossiblegame.16mb.com/highscore.php", "POST", map, query);
}
ds_map_destroy(map);
global.threadlock = true;
room_goto(rmSetup);
