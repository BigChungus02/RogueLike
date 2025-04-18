if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) var up_key = true;
else up_key = false;
if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) var down_key = true;
else down_key = false;
var accept_key = keyboard_check_pressed(vk_space);

op_length = array_length(option[menu_level]);

pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

if accept_key {
	var _sml = menu_level;
	switch(menu_level) {
		//pause
		case 0:
			switch(pos){
				//start
				case 0: room_goto_next(); break;
				//quit
				case 1: game_end(); break;
				}
			break;
	}
	
	if _sml != menu_level {pos = 0};
	op_length = array_length(option[menu_level]);
}