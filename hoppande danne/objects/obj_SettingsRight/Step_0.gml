event_inherited();

if(mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, self, false, false)){
	check = true
	keyboard_string = 0;
}


if(string_length(keyboard_string) <= 1 && check == true && keyboard_string != global.map_left){
	global.map_right = string_upper(keyboard_string)
	alarm[0] = 60*10;
	with(obj_SaveLoadManger){event_user(0);}
	if(keyboard_check(vk_anykey)) check = false
}
else {

	check = false
}