if mouse_check_button(mb_right)
{
	sprite_index = BasicShield_Active;
	active = true;
	x = Player.x - 4;
	y = Player.y + 4;
}
else 
{
	sprite_index = BasicShield_Idle;
	active = false;
	x = Player.x - 8;
	y = Player.y;
}