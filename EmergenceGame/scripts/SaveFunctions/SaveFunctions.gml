/// @function          GenerateNewSave(roomID)
/// @ param {real}	   roomID
function GenerateNewSave(roomID){
	layer_set_target_room(roomID);
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
	//Write to save file
	for(var i = 0; i < array_length(global.mapNames); i++){
		var tileMapID = layer_tilemap_get_id(global.mapNames[i]);
		file_text_writeln(file);
		for(var y_ = 0; y_ < MAP_H; y_++){
			for(var x_ = 0; x_ < MAP_W; x_++){
				var tileIndex = tile_get_index(tilemap_get(tileMapID, x_, y_)); //Get data at each cell
				file_text_write_real(file, tileIndex);
				file_text_write_string(file, " ");
			}
			file_text_writeln(file);
		}
	}
	file_text_close(file);
	layer_reset_target_room();
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
	//Create list of fishing Interactables
	for(var y_ = 0; y_ < MAP_H; y_++){
		for(var x_ = 0; x_ < MAP_W; x_++){
			if(global.Interactable_Grid[# x_, y_] = 4){ //4 is index of fishing interactable sprite
				var newFishingInteractable = instance_create_layer(0, 0, "Fish", Obj_FishingInteractable);
				with(newFishingInteractable){
					gridPos = [x_, y_];
				}
				//Key is the values seperated by a space as a string: "x y"
				ds_map_add(global.fishingInteractableMap, string(x_) + " " + string(y_), newFishingInteractable);
			}
		}
	}
}

/// @function          SaveGame()
function SaveGame(){
	var file = file_text_open_write(global.chosen_save);
	file_text_write_real(file, global.playerX);
	file_text_writeln(file);
	file_text_write_real(file, global.playerY);
	file_text_writeln(file);
	
	for(var i = 0; i < array_length(global.mapNames); i++){
		var tileMapID = global.gridNames[i];
		file_text_writeln(file);
		for(var y_ = 0; y_ < MAP_H; y_++){
			for(var x_ = 0; x_ < MAP_W; x_++){
				file_text_write_real(file, tileMapID[# x_, y_]);
				file_text_write_string(file, " ");
			}
			file_text_writeln(file);
		}
	}
	file_text_close(file);
}