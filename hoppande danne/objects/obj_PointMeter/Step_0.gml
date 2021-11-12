//starts playerLimit script
playerLimit();

//a timer for adding double score.
var timer2x = obj_Spawner.alarm[0]
if(timer2x != -1) multipler = 2;
else multipler = 1;

//checks a postion point that will add a point.
if(y >= (room_height/12)*check && vspeed != 0){
	check--;
	obj_Spawner.point+=multipler;
}
//if under room it will tp over room and reset posion points
if(y > room_height) {
	y = room_height+10;
	check = 12;
}