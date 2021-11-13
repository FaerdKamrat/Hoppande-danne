event_inherited();

if(mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, self, false, false)){
	obj_SettingsButton.isSettings = false;
}

