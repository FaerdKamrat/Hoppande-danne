/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, self, false, false) && obj_SettingsButton.isSettings == false){
	room_goto(playStage);
	audio_play_sound(sx_PlayButton,10,false);
}

if(collision_point(mouse_x, mouse_y, self, false, false) && obj_SettingsButton.isSettings == false){
	scale = lerp(scale, 1.5, 0.2);
	float_iter_speed = 0.2;
}
else{
	scale = lerp(scale, 1, 0.2);
	float_iter_speed = 0.1;
}
