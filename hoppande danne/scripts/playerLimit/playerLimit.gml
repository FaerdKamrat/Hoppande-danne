// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerLimit(){
	if(instance_exists(obj_Player)){
		var lerpAmount = 0.08;
		var LerpVar2 = 25;
		var Y = (room_height/2-100);
		if(obj_Player.y <= Y && obj_Player.vsp <= 2){
			vspeed = lerp(vspeed, LerpVar2, lerpAmount)
			layer_vspeed("Background", lerp(vspeed, LerpVar2, lerpAmount));
	
		}
		else{
			vspeed = lerp(vspeed, 0, lerpAmount+0.2);
			layer_vspeed("Background", lerp(vspeed, 0, lerpAmount));
			if(vspeed < 0.5) vspeed = 0;
		}
	}
}
