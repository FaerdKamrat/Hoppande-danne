var enemySpawn = irandom(40)

if(!collision_rectangle(0,0,768,-150,obj_Platform,false,false)){
	var X = random_range(64,704);
	var Y = random_range(-10,-150);
	if(enemySpawn == 40) instance_create_layer(X, Y, "Instances", obj_NormalEnemy);
	else if(enemySpawn == 1) instance_create_layer(X, Y,"Instances",obj_Drops);
	X = random_range(64,704);
	Y = random_range(-10,-150);
		
	with(instance_create_layer(X,Y,"Instances",obj_Platform)){
		if(collision_rectangle(X+255,Y+128,X-255,Y-128,obj_Platform,false,true) && id < other.id){
			instance_destroy(self);
			alarm[0] = 1;
		}
	}
}