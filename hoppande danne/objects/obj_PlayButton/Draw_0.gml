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
