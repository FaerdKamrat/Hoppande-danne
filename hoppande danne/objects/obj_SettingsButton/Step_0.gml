event_inherited();

if(mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, self, false, false) && obj_SettingsButton.isSettings == false){
	isSettings = true;
}

if(collision_point(mouse_x, mouse_y, self, false, false) && isSettings == false){
	scale = lerp(scale, 1.5, 0.2);
	float_iter_speed = 0.2;
}
else{
	scale = lerp(scale, 1, 0.2);
	float_iter_speed = 0.1;
}