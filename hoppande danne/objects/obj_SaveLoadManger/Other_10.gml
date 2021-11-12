/// @description Save Game
var _saveData = array_create(0);

with(obj_Spawner){
	var _saveEntity = {
		point : point
	}
	array_push(_saveData, _saveEntity);
}
var _string = json_stringify(_saveData);
var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, _string);
buffer_save(_buffer, "savedgame.save");
buffer_delete(_buffer);
show_debug_message("Game Saved!" + _string);

