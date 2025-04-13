var num = irandom(4)

if (instance_number(SlimeParrent)  < 8)
{
	if (num == 0) var _inst = instance_create_depth(x - random_range(5, 50), y + random_range(-25, 25), depth, BlueSlime);
	else if (num == 1)
	{
		var _inst = instance_create_depth(x - random_range(-25, 25), y + random_range(-25, 25), depth, GreenSlime);
	}
	else if (num == 2)
	{
		var _inst = instance_create_depth(x - random_range(-25, 25), y + random_range(-25, 25), depth, RedSlime);
	}
	else if (num == 3)
	{
		var _inst = instance_create_depth(x - random_range(-25, 25), y + random_range(-25, 25), depth, PurpleSlime);
	}
	else if (num == 4) 
	{
		var _inst = instance_create_depth(x - random_range(-25, 25), y + random_range(-25, 25), depth, YellowSlime);
	}
	var size = random_range(0.5, 1);
	_inst.image_xscale = size;
	_inst.image_yscale = size;
	_inst.move_speed = random_range(1, 2);
}

alarm[0] = 180;