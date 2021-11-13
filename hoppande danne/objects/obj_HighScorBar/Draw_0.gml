/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

draw_set_font(fn_Comic);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext_transformed_color(x, y+50 +(sin(float_iter) * multipler), string(global.highScore), 1.5, (room_width/2)-200, 1, 1, sin(float_iter)*multipler, c_white, c_white, c_white, c_white, alpha);
