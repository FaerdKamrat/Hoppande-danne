#region movemnt
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));

	var moveH = key_right-key_left;
	if(!isDead){
		hsp = lerp(hsp, spd*moveH, 0.5);
		clamp(hsp, -spd, spd);
		x += hsp;

		vsp += grv;
		if(place_meeting(x,y+5,obj_Platform) && vsp >= 1 && obj_Platform.vspeed <= 0 && y < obj_Platform.y) vsp = lerp(vsp, -10, 1.2);
		if(obj_Platform.vspeed != 0) vsp += 0.5;
	}
	y += vsp;
#endregion movemnt

if(x <= -32) x = room_width+32; 
else if(x >= room_width+32) x = -32;
if(y >= room_height){
	if(obj_Spawner.point > obj_Spawner.highScore) with(obj_SaveLoadManger){event_user(0);}
	room_restart();
}
if(place_meeting(x,y,obj_Enemy)){
	isDead = true;
	vsp = lerp(vsp, 20, 1.3);
}