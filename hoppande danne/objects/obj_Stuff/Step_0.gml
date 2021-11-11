if(obj_Player.y <= (room_height/2)-100){
	obj_Platform.vspeed = lerp(vspeed, 15, 0.1)
	obj_Enemy.vspeed = lerp(vspeed, 15, 0.1)
	
}
else{
	obj_Platform.vspeed = 0;
	obj_Enemy.vspeed = 0;
}