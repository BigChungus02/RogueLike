if (instance_exists(Player) && distance_to_object(Player) < distance_to_player)
{
	target_x = Player.x;
	target_y = Player.y;
}

alarm[0] = 60;