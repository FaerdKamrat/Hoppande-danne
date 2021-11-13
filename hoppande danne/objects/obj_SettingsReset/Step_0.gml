/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, self, false, false)){
	with(obj_SaveLoadManger){event_user(3);}
}
