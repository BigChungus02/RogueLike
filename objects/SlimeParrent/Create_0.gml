target_x = x;
target_y = y;

kb_x = 0;
kb_y = 0;

alarm[0] = 60;

tilemap = layer_tilemap_get_id("Tiles_Col");

image_xscale = 1;
image_yscale = 1;

path_start(Path1, move_speed, path_action_restart, true);
//x = x - random_range(-25, 25)
//y = y + random_range(-25, 25)