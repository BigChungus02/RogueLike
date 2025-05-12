var num1 = irandom(10)
var num2 = irandom(4)

if (nextWave == true) {
	if wave < 10 {
		if (num2 == 0) {
			var _inst = instance_create_depth(x, y, depth, BlueSlime);
			slimeCount += 1;
		}
		else if (num2 == 1)
		{
			var _inst = instance_create_depth(x, y, depth, GreenSlime);
			slimeCount += 1;
		}
		else if (num2 == 2)
		{
			var _inst = instance_create_depth(x, y, depth, RedSlime);
			slimeCount += 1;
		}
		else if (num2 == 3)
		{
			var _inst = instance_create_depth(x, y, depth, PurpleSlime);
			slimeCount += 1;
		}
		else if (num2 == 4) 
		{
			var _inst = instance_create_depth(x, y, depth, YellowSlime);
			slimeCount += 1;
		}
	
		if num1 <= 10 {
			var scale = random_range(0.75, 1.25)
			_inst.image_xscale = scale;	
			_inst.image_yscale = scale;
			_inst.move_speed = 0.75;
			_inst.shp = slimeHp;
			_inst.damage = sDamage;
		}
		else if num1 < 0 {
			_inst.image_xscale = 1.5;	
			_inst.image_yscale = 1.5;
			_inst.move_speed = 0.5;
			_inst.shp = 5;
			_inst.damage = sDamage;
		}
		else if num1 < -1 {
			_inst.image_xscale = 0.5;	
			_inst.image_yscale = 0.5;
			_inst.move_speed = 1.5;
			_inst.shp = 2;
			_inst.damage = sDamage;
		}
		if slimeCount == slimePerWave  {
		nextWave = false;
		}
	}
	else{
		nextWave = false;
		slimeCount = 0;
		slimePerWave = 1;
		var _inst = instance_create_depth(x, y-10, depth, KingSlime);
		instance_destroy(self, true)
		}
}

alarm[0] = 60;