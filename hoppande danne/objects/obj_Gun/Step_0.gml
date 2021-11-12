
//decrese fire_delay value every frame 
//and tp its x,y to players x,y 
fire_delay--;
x = obj_Player.x;
y = obj_Player.y;


#region [W] shoot
//if [w] is pressed and fire_delay is less than 0 
//then its spawn a bullet upwards. and fire_delay is 30.
	if(keyboard_check_pressed(ord("W")) && fire_delay < 0){
		audio_play_sound(sx_PistolSound, 8, false);
		fire_delay = 30;
		with(instance_create_layer(x,y,"Instances",obj_Bullet)){
			speed = 10;
			direction = 90;
			image_angle = direction;
		}
	}	
	
#endregion [W] shoot


#region mouseShot
	//same as [w] shoot but its fixed_mouse_dir
	fixed_mouse_dir = point_direction(x,y,mouse_x,mouse_y);
	image_angle = fixed_mouse_dir;
	if(mouse_check_button_pressed(mb_left) && fire_delay < 0){
		audio_play_sound(sx_PistolSound, 8, false);
		fire_delay = 30;
		with(instance_create_layer(x,y,"Instances",obj_Bullet)){
			speed = 10;
			direction = other.fixed_mouse_dir;
			image_angle = direction;
		}
	}
#endregion mouseShot