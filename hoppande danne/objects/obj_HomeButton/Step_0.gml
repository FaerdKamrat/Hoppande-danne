if(mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, self, false, false)){
	room_goto(MainMenu);	
	audio_play_sound(sx_BackToMenu,10,false);
}