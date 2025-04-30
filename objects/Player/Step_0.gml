var _hor = round(keyboard_check(ord("D")) - keyboard_check(ord("A")));
var _ver = round(keyboard_check(ord("S")) - keyboard_check(ord("W")));

var _len = _hor != 0 || _ver != 0;
var _dir = point_direction(0, 0, _hor, _ver);
_hor = round(lengthdir_x(_len, _dir));
_ver = round(lengthdir_y(_len, _dir));
// IMORTANT!!!!!!! When adding a camera that moves with the player, it will be jittery when moveing diaganal
// To fix this follow this video https://www.youtube.com/watch?v=2JDkTIk2OkI&list=PLhIbBGhnxj5Ier75j1M9jj5xrtAaaL1_4&index=7
// Time stamps are 7:12 to end of video.

move_and_collide(_hor * move_speed, _ver *move_speed, [tilemap, layer_tilemap_get_id("Homes")], undefined, undefined, undefined, move_speed, move_speed);

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

if keyboard_check(vk_escape) {room_goto(PauseScreen)};