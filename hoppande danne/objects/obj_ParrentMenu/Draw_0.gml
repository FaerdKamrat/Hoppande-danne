image_yscale = scale;
image_xscale = scale;


draw_sprite_ext(sprite_index, 
				image_index, 
				x, 
				y + (sin(float_iter) * multipler), 
				image_xscale, 
				image_yscale, 
				sin(float_iter)*multipler,
				c_white,alpha
);