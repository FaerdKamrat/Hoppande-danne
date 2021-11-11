/// @description Save Game
if(obj_Spawner.point > obj_Spawner.highScore){
	var _root_list = ds_list_create();

	with(obj_Spawner){
		var _map = ds_map_create();
		ds_list_add(_root_list,_map);
		ds_list_mark_as_map(_root_list,ds_list_size(_root_list)-1);
	
		var _score = obj_Spawner.point;
		ds_map_add(_map, "points",_score);
	}
	var _wrapper = ds_map_create();
	ds_map_add_list(_wrapper,"ROOT",_root_list);


	var _string = json_encode(_wrapper);
	STJ("savedgame.sav", _string);

	ds_map_destroy(_wrapper);
	show_debug_message("Game Saved");
}