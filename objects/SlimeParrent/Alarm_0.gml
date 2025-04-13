if (instance_exists(Player) && distance_to_object(Player) < distance_to_player)
{
	target_x = Player.x;
	target_y = Player.y;
}
else
{
	target_x = random_range(x - 20, x + 20)
	target_y = random_range(y - 20, y + 20)	
}

alarm[0] = 30;