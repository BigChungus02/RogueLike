var num = irandom(4)

if (instance_number(SlimeParrent)  < 8)
{
	if (num == 0) var _inst = instance_create_depth(x - irandom_range(5, 50), y + irandom_range(-25, 25), depth, BlueSlime);
	else if (num == 1)
	{
		var _inst = instance_create_depth(x - irandom_range(-25, 25), y + irandom_range(-25, 25), depth, GreenSlime);
	}
	else if (num == 2)
	{
		var _inst = instance_create_depth(x, y, depth, RedSlime);
	}
	else if (num == 3)
	{
		var _inst = instance_create_depth(x, y, depth, PurpleSlime);
	}
	else if (num == 4) 
	{
		var _inst = instance_create_depth(x, y, depth, YellowSlime);
	}
	
	var ran = irandom_range(1, 2);
	if ran == 1 
	{
		_inst.image_xscale = ran;	
		_inst.image_yscale = ran;
		_inst.move_speed = 1;
	}
		else if ran == 2
	{
		_inst.image_xscale = ran;	
		_inst.image_yscale = ran;
		_inst.move_speed = 0.5;
	}
}

alarm[0] = 180;