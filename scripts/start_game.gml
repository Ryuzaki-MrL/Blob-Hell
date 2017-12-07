#define start_game
/// start_game()

with(obj_colorpick) instance_destroy();
with(obj_settingsbox) instance_destroy();
room_goto_next();

#define restart_game
/// restart_game()

room_restart();

#define quit_game
/// quit_game()

room_goto(rmTitle);