if (alarm[2] <= 0)
{
	if (alarm[0] <= 0) {
		other.damage = sDamage;
		hp -= other.damage;
		alarm[0] = 60;
		image_blend = c_red;
		solid = false;
	
		if (hp <= 0) {room_goto(LoseScreen);}
	}
}