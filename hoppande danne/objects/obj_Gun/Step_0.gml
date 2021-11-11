fireDelay--;
x = obj_Player.x;
y = obj_Player.y;


#region [W] shoot
	if(keyboard_check_pressed(ord("W")) && fireDelay < 0){
		fireDelay = 30;
		with(instance_create_layer(x,y,"Instances",obj_Bullet)){
			speed = 10;
			direction = 90;
			image_angle = direction;
		}
	}	
	
#endregion [W] shoot
#region mouseShot
	fixedMouseDir = point_direction(x,y,mouse_x,mouse_y);
	image_angle = fixedMouseDir;
	if(mouse_check_button_pressed(mb_left) && fireDelay < 0){
		fireDelay = 30;
		with(instance_create_layer(x,y,"Instances",obj_Bullet)){
			speed = 10;
			direction = other.fixedMouseDir;
			image_angle = direction;
		}
	}
#endregion mouseShot