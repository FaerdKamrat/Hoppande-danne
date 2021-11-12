playerLimit();


if(type == 2){
		var playerHsp = obj_Player.hsp;
		if(playerHsp <= 0.9 && playerHsp >= -0.9) hsp = lerp(hsp, 0, 0.008); 
		else if(alarm[0] == -1) hsp =lerp(hsp, spd * sign(playerHsp), 0.3);	
	}

if(place_meeting(x+hsp, y, obj_ColistionBox)){
	while(!place_meeting(x+sign(hsp), y, obj_ColistionBox)){
		x += sign(hsp);
	}	
	switch(type){
	case 0:
		hsp = 0
		break;
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

if(y > 1371) instance_destroy(self);
