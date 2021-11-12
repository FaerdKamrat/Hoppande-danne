//rng to see with type of platform. and makes sure 
//that it does not spawn when the game begin
var typeRNG = random(100);
if(y < 0){
	if(typeRNG <= 5) type = 2;
	else if(typeRNG > 5 && typeRNG <= 70) type = 0;
	else type =1;
} 
else type = 0;

if(type == 1) hsp = choose(-2,2);
image_index = type;
