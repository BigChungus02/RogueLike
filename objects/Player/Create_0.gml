move_speed = 1;

tilemap = layer_tilemap_get_id("Tiles_Col");

damage = 1;

depth = 1;

image_speed = 0;

hp = 3;
hp_total = hp;

globalvar coins;
coins = 0;

globalvar level;
level = 1;
xp = 0;
xp_require = 100;

function add_xp(_xp_to_add)
{
	xp += _xp_to_add;
	if (xp >= xp_require)
	{
		level++;
		xp -= xp_require;
		xp_require *= 1.4;
		
		hp_total += 2;
		damage += 0.8;
	}
}