move_speed = 1;

tilemap = layer_tilemap_get_id("Tiles_Col");

damage = 1;

depth = 1;

image_speed = 0;

image_xscale = 0.5;
image_yscale = 0.5;

globalvar hp;
hp = 3;
globalvar hp_total;
hp_total = hp;
hp_gain = 3;

globalvar coins;
coins = 0;

globalvar level;
level = 1;
xp = 0;
xp_require = 100;

max_level = 10;

function add_xp(_xp_to_add){
	xp += _xp_to_add;
	if (xp >= xp_require){
		if level < max_level {
			level++;
			xp -= xp_require;
			xp_require *= 1.4;
		
			hp_total += hp_gain;
			hp += hp_gain;
			damage += 0.8;
		}
		else {xp = 0;}
	}
}

globalvar a1_cooldown;
a1_cooldown = 1200;
globalvar timer1;
timer1 = a1_cooldown;

globalvar a2_cooldown;
a2_cooldown = 600;
globalvar timer2;
timer2 = a2_cooldown;

globalvar shadow;
shadow = false;