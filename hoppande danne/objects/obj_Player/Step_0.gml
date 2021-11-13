#region movemnt
//key map. and diration veriy on button input
	key_left = keyboard_check(ord(global.map_left)) || keyboard_check(vk_left);
	key_right = keyboard_check(ord(global.map_right)) || keyboard_check(vk_right);
	var moveH = key_right-key_left;
/*
checks if we are not dead so we can move 
horistaly and jump on platforms
*/
if(!isDead){
		hsp = lerp(hsp, spd*moveH, 0.5);
		clamp(hsp, -spd, spd);
		x += hsp;
		vsp += grv;
		if(place_meeting(x,y+5,obj_Platform) && vsp >= 1 && obj_Platform.vspeed <= 0 && y < obj_Platform.y){ 
			vsp = lerp(vsp, -10, 1.2);
			audio_play_sound(sx_Jump, 10, false);	
		}
		if(obj_Platform.vspeed != 0) vsp += 0.5;
	}
	y += vsp;
#endregion movemnt
//teleport player if player goes out of bounce
if(x <= -32) x = room_width+32; 
else if(x >= room_width+32) x = -32;

/*
if player goes under room he will die. 
and it save the heigh score if it has been beaten
*/
if(y >= room_height){
	if(obj_Spawner.point > global.highScore){ with(obj_SaveLoadManger){event_user(0);}}
	room_restart();
	audio_play_sound(sx_PlayerFallDeath, 10, false);
}

/*
isDead varible goes true and player cant move 
and it's draging player to under the room
*/
if(place_meeting(x,y,obj_NormalEnemy)){
	if(obj_Spawner.point > global.highScore){ with(obj_SaveLoadManger){event_user(0);}}
	isDead = true;
	audio_play_sound(sx_PlayerEnemyDeath, 10, false);
	vsp = lerp(vsp, 20, 1.3);
}

fixed_mouse_dir = point_direction(x,y,mouse_x,mouse_y);
if(fixed_mouse_dir > 270 || fixed_mouse_dir < 90) {
	image_xscale = 1;
}
else image_xscale = -1;
