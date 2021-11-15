/*
rng that has 1/40 to spawn a enemy when its conditions are true
and 1/40 to spawn a double points.

it also spawns a platform when conditions are true.
*/
var _enemy_spawn = irandom(40)

if(!collision_rectangle(0, 0, 768, -150, obj_Platform, false, false)){
	var _X = random_range(64, 704);
	var _Y = random_range(-45, -150);
	if(_enemy_spawn == 40) instance_create_layer(_X, _Y, "Instances", obj_NormalEnemy);
	else if(_enemy_spawn == 1) instance_create_layer(_X, _Y,"Instances", obj_Drops);
	_X = random_range(64, 704);
	_Y = random_range(-10, -150);
		
	with(instance_create_layer(_X,_Y,"Instances",obj_Platform)){
		if(collision_rectangle(_X+255, _Y+128, _X-255, _Y-128, obj_Platform, false, true) && id < other.id){
			instance_destroy(self);
			alarm[0] = 1;
		}
	}
}

show_debug_message(global.highScore)
if(!highscore_check && point > global.highScore){
	highscore_check = true;
	audio_play_sound(sx_BeatHighscore,10,false);
}



