var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _ver *move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

if (_hor != 0 or _ver != 0)
{
	if (_ver > 0) sprite_index = Player_Down;
	else if (_ver < 0) sprite_index = Player_Down;
	else if (_hor > 0) sprite_index = Player_Right;
	else if (_hor < 0) sprite_index = Player_Left;
}
else sprite_index = Player_Down