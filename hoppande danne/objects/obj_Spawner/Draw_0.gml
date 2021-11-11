var timer2x = obj_Spawner.alarm[0];

if(timer2x != -1){
	if(timer2x > (60*15)){
		draw_sprite_ext(spr_2x,0,132,100,0.5,0.5,0,c_white,1);
		ImageAlpha = 1;
	}
	else{
		draw_sprite_ext(spr_2x,0,132,100,0.5,0.5,0,c_white,ImageAlpha);
		ImageAlpha-= (1/(60*15));
	}
}
draw_text(100,100,string(point))
