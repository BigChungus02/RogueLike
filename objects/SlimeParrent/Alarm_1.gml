image_blend = c_white;

if (shp <= 0)
{
	instance_destroy();
	Player.add_xp(xp_value);
	slimeKilled += 1;
}