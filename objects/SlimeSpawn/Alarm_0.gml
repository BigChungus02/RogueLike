var num1 = irandom(10)
var num2 = irandom(4)

if (instance_number(SlimeParrent)  < 8)
{
	if (num2 == 0) var _inst = instance_create_depth(x, y, depth, BlueSlime);
	else if (num2 == 1)
	{
		_inst = instance_create_depth(x, y, depth, GreenSlime);
	}
	else if (num2 == 2)
	{
		_inst = instance_create_depth(x, y, depth, RedSlime);
	}
	else if (num2 == 3)
	{
		_inst = instance_create_depth(x, y, depth, PurpleSlime);
	}
	else if (num2 == 4) 
	{
		_inst = instance_create_depth(x, y, depth, YellowSlime);
	}
	
	if num1 <= 10 {
		var scale = random_range(0.75, 1.25)
		_inst.image_xscale = scale;	
		_inst.image_yscale = scale;
		_inst.move_speed = 0.75;
		_inst.shp = 3;
	}
	else if num1 < 0 {
		_inst.image_xscale = 1.5;	
		_inst.image_yscale = 1.5;
		_inst.move_speed = 0.5;
		_inst.shp = 5;
	}
	else if num1 < -1 {
		_inst.image_xscale = 0.5;	
		_inst.image_yscale = 0.5;
		_inst.move_speed = 1.5;
		_inst.shp = 2;
	}
}

alarm[0] = 180;