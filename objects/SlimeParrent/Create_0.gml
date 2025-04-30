target_x = x;
target_y = y;

kb_x = 0;
kb_y = 0;

alarm[0] = 60;

tilemap = layer_tilemap_get_id("Tiles_Col");

image_xscale = 1;
image_yscale = 1;


move_towards_point(Player.x, Player.y, 0.5)
//x = x - random_range(-25, 25)
//y = y + random_range(-25, 25)