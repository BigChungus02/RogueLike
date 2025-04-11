var md = point_direction(x, y, mouse_x, mouse_y);
image_angle = md - 90;

if mouse_check_button(mb_left)
{
	if (md >= 0 && md <= 90)
	{
		x = Player.x + 5;
		y = Player.y;
	}
	else
	{
		x = Player.x + 5;
		y = Player.y + 5;
	}
}
else
{
	x = Player.x + 5;
	y = Player.y + 5;
}