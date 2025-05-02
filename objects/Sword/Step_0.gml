var md = point_direction(x, y, mouse_x, mouse_y);

var _key = keyboard_lastchar;
if (ord(_key) == ord(",")) {level = 1;}
if (ord(_key) == ord(".")) {level = 5;}
if (ord(_key) == ord("/")) {level = 10;}

if level < 5 {
	sprite = BasicDagger;
	scale = 0.5;
	swingScale = 1;
	yVal = -3;
	damage = 1;
	sprite_index = sprite;
	image_angle = 0;
	image_xscale = scale;
	image_yscale = scale;
}
else if level < 10 {
	sprite = BasicSword;
	scale = 0.5;
	swingScale = 1.5;
	yVal = 1;
	damage = 2;
	sprite_index = sprite;
	image_angle = 0;
	image_xscale = scale;
	image_yscale = scale;
}
else {
	sprite = Greatsword;
	scale = 0.5;
	swingScale = 2;
	yVal = -3;
	damage = 3;
	sprite_index = sprite;
	image_angle = 0;
	image_xscale = scale;
	image_yscale = scale;
}

if (mouse_check_button_pressed(mb_left))
{
	if alarm[1] <= 0
	{
		sprite_index = Swing;
		x = Player.x;
		y = Player.y;
		image_angle = md;
		image_index = 0;
		image_xscale = swingScale;
		image_yscale = swingScale;
		active = true;
		alarm[1] = 10;
	}
}
else if ((sprite_index == Swing) && (image_index > (2)))
{
	sprite_index = sprite;
	image_angle = 0;
	image_xscale = scale;
	image_yscale = scale;
	active = false;
}
if (sprite_index != Swing)
{
	x = Player.x + 5;
	y = Player.y + yVal;
}
else 
{	
	x = Player.x;
	y = Player.y;
}