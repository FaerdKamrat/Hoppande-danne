var timer2x = obj_Spawner.alarm[0];

if(timer2x != -1){
	if(timer2x > (60*15)){
		draw_sprite_ext(spr_2x,0,64,1323,0.5,0.5,0,c_white,1);
		Image_alpha = 1;
	}
	else{
		draw_sprite_ext(spr_2x,0,64,1323,0.5,0.5,0,c_white,Image_alpha);
		Image_alpha-= (1/(60*15));
	}
}
if(point >= global.highScore) draw_text(room_width/2, 1323, "☆"+string(point));
else draw_text(room_width/2, 1323, string(point));
