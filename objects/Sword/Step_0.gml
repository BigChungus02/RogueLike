var md = point_direction(x, y, mouse_x, mouse_y);

if level < 5 {
	if sprite_index != BasicDagger && sprite_index != Swing {
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
}
else if level < 10 {
	if sprite_index != BasicSword && sprite_index != Swing {
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
}
else {
	if sprite_index != Greatsword && sprite_index != Swing {
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
}

if (mouse_check_button_pressed(mb_left)) {
	if shadow = false {
		if alarm[1] <= 0 {
			sprite_index = Swing;
			x = Player.x;
			y = Player.y;
			image_angle = md;
			image_index = 0;
			image_xscale = swingScale;
			image_yscale = swingScale;
			active = true;
			alarm[1] = 15;
		}
	}
}
else if ((sprite_index == Swing) && (image_index > 2)){
	sprite_index = sprite;
	image_angle = 0;
	image_xscale = scale;
	image_yscale = scale;
	active = false;
}
if (sprite_index != Swing) {
	x = Player.x + 5;
	y = Player.y + yVal;
	active = false;
}
else {	
	x = Player.x;
	y = Player.y;
}