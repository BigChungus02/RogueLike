var md = point_direction(x, y, mouse_x, mouse_y);

if (mouse_check_button_pressed(mb_left))
{
	sprite_index = Swing;
	x = Player.x;
	y = Player.y + 5;
	image_angle = md;
	image_index = 0;
	image_xscale = 1;
	image_yscale = 1;
	active = true;
}
else if ((sprite_index == Swing) && (image_index > (2)))
{
	sprite_index = BasicSword;
	image_angle = 0;
	image_xscale = 0.5;
	image_yscale = 0.5;
	active = false;
}

if (sprite_index != Swing)
{
	x = Player.x + 15;
	y = Player.y + 10;
}
else 
{	
	x = Player.x + 5;
	y = Player.y + 5;
}