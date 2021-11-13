/// @description Save Game
var _saveData = array_create(0);


if(instance_exists(obj_Spawner)){
	var _saveEntity = {
		left : global.map_left,
		right : global.map_right,
		point : obj_Spawner.point
	}
}
else {
	var _saveEntity = {
		left : global.map_left,
		right : global.map_right,
		point : global.highScore
	}
}
array_push(_saveData, _saveEntity);

var _string = json_stringify(_saveData);
var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, _string);
buffer_save(_buffer, "savedgame.save");
buffer_delete(_buffer);
show_debug_message("Game Reset!" + _string);
event_user(1);