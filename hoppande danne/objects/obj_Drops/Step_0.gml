//exucte playerlimit script
playerLimit()

//starts a timer for double point mutilpler.
if(place_meeting(x,y,obj_Player)){
	obj_Spawner.alarm[0] = (60*30);
	instance_destroy();
	audio_play_sound(sx_DoublePoints, 10, false);
	
}