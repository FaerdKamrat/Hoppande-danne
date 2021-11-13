if(obj_SettingsButton.isSettings){
	y = lerp(y, destination, 0.3)
	y = clamp(y, begining, destination);
	image_alpha = 1;
}
else {
	image_alpha = lerp(image_alpha, 0, 0.2)
	if(image_alpha == 0) y = begining;
}

if(collision_point(mouse_x, mouse_y, self, false, false)){
	scale = lerp(scale, 1.5, 0.2);
}
else{
	scale = lerp(scale, 1, 0.2);
}

image_xscale = scale;
image_yscale = scale;