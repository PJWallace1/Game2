/// @function          GenerateNewSave()
function GenerateNewSave(){
	var file = file_text_open_write(global.chosen_save);
	file_text_write_real(file, 30);		    //PlayerX
	file_text_writeln(file);				//go to next line
	file_text_write_real(file, 16);		    //PlayerY
	file_text_writeln(file);				//go to next line
	//Write all grid maps into save file
	layer_set_visible("Ground_Grid", false); //Hides bitmap
	layer_set_visible("Background_Grid", false); //Hides bitmap
	layer_set_visible("Interactable_Grid", false); //Hides bitmap
	layer_set_visible("Foreground_Grid", false); //Hides bitmap
	layer_set_visible("Collision_Grid", false); //Hides bitmap
	layer_set_visible("Temperature_Grid", false); //Hides bitmap
	for(var i = 0; i < array_length(global.mapNames); i++){
		var tileMapID = layer_tilemap_get_id(global.mapNames[i]);
		file_text_writeln(file);
		for(var y_ = 0; y_ < MAP_H; y_++){
			for(var x_ = 0; x_ < MAP_W; x_++){
				var tileIndex = tile_get_index(tilemap_get(tileMapID, x_, y_)); //Get data at each cell
				show_debug_message(tileIndex);
				file_text_write_real(file, tileIndex);
				file_text_write_string(file, " ");
			}
			file_text_writeln(file);
		}
	}
	file_text_close(file);
}

/// @function          LoadSaveFile()
function LoadSaveFile(){
	var file = file_text_open_read(global.chosen_save);
	//Read info from save file
	global.playerX = file_text_read_real(file);
	file_text_readln(file);
	global.playerY = file_text_read_real(file);
	file_text_readln(file);
	for(var i = 0; i < array_length(global.gridNames); i++){
		var tileMapID = global.gridNames[i];
		file_text_readln(file);
		for(var y_ = 0; y_ < MAP_H; y_++){
			for(var x_ = 0; x_ < MAP_W; x_++){
				tileMapID[# x_, y_] = file_text_read_real(file);
			}
			file_text_readln(file);
		}
	}
	file_text_close(file);
}