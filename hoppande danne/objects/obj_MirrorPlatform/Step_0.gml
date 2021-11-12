event_inherited();

var playerHsp = obj_Player.hsp;
if(playerHsp <= 0.9 && playerHsp >= -0.9) hsp = lerp(hsp, 0, 0.008); 
else if(alarm[0] == -1) hsp =lerp(hsp, spd * sign(playerHsp), 0.3);	

if(place_meeting(x+hsp, y, obj_ColistionBox)){
	while(!place_meeting(x+sign(hsp), y, obj_ColistionBox)){
		x += sign(hsp);
	}	
	hsp = (-hsp*2);
	alarm[0] = 60;
}