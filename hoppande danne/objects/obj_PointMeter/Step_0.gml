playerLimit();

var timer2x = obj_Spawner.alarm[0]
if(timer2x != -1) multipler = 2;
else multipler = 1;

if(y >= (room_height/12)*check && vspeed != 0){
	check--;
	obj_Spawner.point+=multipler;
}
if(y > room_height) {
	y = room_height+10;
}