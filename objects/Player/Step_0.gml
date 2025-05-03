var _hor = round(keyboard_check(ord("D")) - keyboard_check(ord("A")));
var _ver = round(keyboard_check(ord("S")) - keyboard_check(ord("W")));

var _len = _hor != 0 || _ver != 0;
var _dir = point_direction(0, 0, _hor, _ver);
_hor = round(lengthdir_x(_len, _dir));
_ver = round(lengthdir_y(_len, _dir));

if alarm[2] > 0{
	image_blend = c_black;
	image_alpha = 0.5;
	move_speed = 3;
	solid = false;
	Sword.visible = false;
	shadow = true;
}
move_and_collide(_hor * move_speed, _ver *move_speed, [tilemap, House], undefined, undefined, undefined, move_speed, move_speed);

if (_hor != 0 or _ver != 0)
{
	if (_ver > 0) sprite_index = Player_Down;
	else if (_ver < 0) sprite_index = Player_Down;
	else if (_hor > 0) sprite_index = Player_Right;
	else if (_hor < 0) sprite_index = Player_Left;
}
else sprite_index = Player_Down

x = round(x);
y = round(y);


if keyboard_check(ord("E")) {
	if alarm[1] <= 0{
		alarm[1] = a2_cooldown;
		alarm[2] = 30;
		timer2 = 0;
	}
}
if alarm[1] > 0 {timer2 += 1;}

if keyboard_check(vk_escape) {room_goto(PauseScreen)};

var _key = keyboard_lastchar;
if (ord(_key) == ord(",")) {
	level = 1;
	hp_total = 3;
	hp = hp_total;
	xp = 0;
}
if (ord(_key) == ord(".")) {
	level = 5;
	hp_total = 11;
	hp = hp_total;
	xp = 0;
}
if (ord(_key) == ord("/")) {
	level = 10;
	hp_total = 21;
	hp = hp_total;
	xp = 0;
}