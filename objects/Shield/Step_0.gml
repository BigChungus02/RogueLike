if mouse_check_button(mb_right)
{
	sprite_index = BasicShield_Active;
	active = true;
	x = Player.x - 2;
	y = Player.y + 2;
}
else 
{
	sprite_index = BasicShield_Idle;
	active = false;
	x = Player.x - 7;
	y = Player.y + 2;
}