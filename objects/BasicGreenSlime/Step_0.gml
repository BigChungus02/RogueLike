var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);

move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, EnemyParrent], undefined, undefined, undefined, move_speed, move_speed); 

if (Player.x >= x + 20) sprite_index = GreenSlime_Right;
else if (Player.x <= x - 20) sprite_index = GreenSlime_Left;
else sprite_index = GreenSlime_Idle;