//exe playerlimit script.
playerLimit();

// mimcs obj_player.hsp and 
if(type == 2){
		var playerHsp = obj_Player.hsp;
		if(playerHsp <= 0.9 && playerHsp >= -0.9) hsp = lerp(hsp, 0, 0.008); 
		else if(alarm[0] == -1) hsp =lerp(hsp, spd * sign(playerHsp), 0.3);	
	}
//type 1 will move oposete with a constaint speed.
//type 2 if hits a wall it will bounce to the opste side.
if(place_meeting(x+hsp, y, obj_ColistionBox)){
	while(!place_meeting(x+sign(hsp), y, obj_ColistionBox)){
		x += sign(hsp);
	}	
	switch(type){

	case 1:
		hsp = -hsp
		break;
	case 2:
		hsp = (-hsp*2);
		alarm[0] = 60;
		break;
	}
	
}

x += hsp;

//kills its self when goes unde map
if(y > 1371) instance_destroy(self);
