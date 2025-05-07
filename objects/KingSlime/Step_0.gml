

var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);

var _len = _hor != 0 || _ver != 0;
var _dir = point_direction(0, 0, _hor, _ver);
_hor = round(lengthdir_x(_len, _dir));
_ver = round(lengthdir_y(_len, _dir));

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed); 

if (target_x >= x + 1) sprite_index = KingSlime_Right;
else if (target_x <= x - 1) sprite_index = KingSlime_Left;
else sprite_index = KingSlime_Idle