event_inherited();

if(place_meeting(x+hsp, y, obj_ColistionBox)){
	while(!place_meeting(x+sign(hsp), y, obj_ColistionBox)){
		x += sign(hsp);
	}	
	hsp = -hsp;
}