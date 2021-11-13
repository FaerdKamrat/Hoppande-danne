//exe playerlimit script.
playerLimit();

//spins enemy a little bit every frame
image_angle += 0.4;

//kills its self if hp is 0
if(hp <= 0){ 
	instance_destroy(self);
	audio_play_sound(sx_EnemyDeath, 10, false);	
	obj_Spawner.point += 100*(type+1)
}

// hsp is moves other dir if it touch the outer wall.
if(type == 1 && place_meeting(x, y, obj_ColistionBox)) hsp = -hsp;

