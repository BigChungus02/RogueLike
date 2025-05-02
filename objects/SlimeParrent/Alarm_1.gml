image_blend = c_white;

if (hp <= 0)
{
	instance_destroy();
	Player.add_xp(xp_value);
}