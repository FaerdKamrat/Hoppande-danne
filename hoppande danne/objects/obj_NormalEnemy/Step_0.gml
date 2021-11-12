playerLimit();
image_angle += 0.4;
if(hp <= 0) instance_destroy(self);

if(type == 2 && place_meeting(x, y, obj_ColistionBox)) hsp = -hsp;

