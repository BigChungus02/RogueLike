if (alarm[1] >= 0)
{
	target_x = x + kb_x;
	target_y = y + kb_y;
}

var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);

move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, SlimeParrent], undefined, undefined, undefined, move_speed, move_speed);

if (target_x >= x + 1) sprite_index = PurpleSlime_Right;
else if (target_x <= x - 1) sprite_index = PurpleSlime_Left;
else sprite_index = PurpleSlime_Idle;