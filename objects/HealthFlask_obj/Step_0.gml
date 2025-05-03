x = Player.x - 7;
y = Player.y;

if keyboard_check(ord("Q")) {
	if shadow = false {
		if alarm[0] <= 0 {
			alarm[0] = a1_cooldown;
			timer1 = 0;
			alarm[1] = 30;
			visible = true;
			var heal = hp + 3;
			if (heal > hp_total) {hp = hp_total;}
			else {hp = heal;}
		}
	}
}
if alarm[1] <= 0 {visible = false;}
if alarm[0] > 0 {timer1 += 1;}