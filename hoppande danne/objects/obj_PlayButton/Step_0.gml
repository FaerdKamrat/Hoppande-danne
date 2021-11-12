/// @description Insert description here
// You can write your code in this editor
float_iter += float_iter_speed


if(mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, self, false, false)){
	room_goto(playStage);
	audio_play_sound(sx_PlayButton,10,false);
}