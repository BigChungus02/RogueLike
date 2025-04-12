var num = irandom(2)

if (num == 0) var _inst = instance_create_depth(x - random_range(5, 50), y + random_range(-25, 25), depth, BasicBlueSlime);
else if (num == 1) var _inst = instance_create_depth(x - random_range(-25, 25), y + random_range(-25, 25), depth, BasicRedSlime);
else if (num == 2) var _inst = instance_create_depth(x - random_range(-25, 25), y + random_range(-25, 25), depth, BasicGreenSlime);

alarm[0] = 180;