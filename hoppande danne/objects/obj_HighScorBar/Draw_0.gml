image_yscale = scale;
image_xscale = scale;

var _multiplyer = 5;
draw_sprite_ext(sprite_index, 
				image_index, 
				x, 
				y + (sin(float_iter) * _multiplyer), 
				image_xscale, 
				image_yscale, 
				sin(float_iter)*_multiplyer,
				c_white,1
);
draw_set_font(fn_Comic);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext_transformed(x, y+50 +(sin(float_iter) * _multiplyer), string(global.highScore), 1.5, (room_width/2)-200, 1, 1, sin(float_iter)*_multiplyer);

