/// @description Load Game

if(file_exists("savedgame.sav")){
	var _wrapper = loadJSON("savedgame.sav");
	var _list = _wrapper [? "ROOT"];
	
	for (var i = 0; i < ds_list_size(_list); i++){
		var _map = _list[| i];
		
		var _score = _map[? "points"]
		obj_Spawner.highScore = _score
	}
	ds_map_destroy(_wrapper);
	show_debug_message("Game loaded");

}

