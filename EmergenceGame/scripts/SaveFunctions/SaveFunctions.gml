/// @function          GenerateNewSave(roomID)
/// @ param {real}	   roomID
function GenerateNewSave(roomID){
	var numFishingSpots = 0; //counts the number of fishing spots
	var maxNumFish;			 //the maximum number of fish within a spot
	var spawnChartID;		 //the id of the spawnchart used to control fish spawning weights
	layer_set_target_room(roomID);//Go to specifed map
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
	//Create fishing data
	var tileMapID = layer_tilemap_get_id("Interactable_Grid");
	for(var y_ = 0; y_ < MAP_H; y_++){
		for(var x_ = 0; x_ < MAP_W; x_++){
			if(tile_get_index(tilemap_get(tileMapID, x_, y_)) == 4){ //4 is index of fishing interactable sprite
				numFishingSpots++; //count the number of fishing spots
			}
		}
	}
	file_text_write_string(file, "Fishing Data");
	file_text_writeln(file);
	file_text_write_real(file, numFishingSpots);
	file_text_writeln(file);
	for(var y_ = 0; y_ < MAP_H; y_++){
		for(var x_ = 0; x_ < MAP_W; x_++){
			if(tile_get_index(tilemap_get(tileMapID, x_, y_)) == 4){ //4 is index of fishing interactable sprite
				maxNumFish = irandom(3) + 3; //3 to 6
				spawnChartID = ChooseWeightedRandomFishingChartID();
				file_text_write_real(file, x_); //X position within grid
				file_text_write_string(file, " ");
				file_text_write_real(file, y_); //Y position within grid
				file_text_write_string(file, " ");
				file_text_write_real(file, maxNumFish); //Max Number of fish 
				file_text_write_string(file, " ");
				file_text_write_real(file, maxNumFish); //Current Number of fish (starts out at max)
				file_text_write_string(file, " ");
				file_text_write_real(file, spawnChartID); //The ID of the spawn chart being used
				file_text_writeln(file);
				//Generate fish data
				for(var f = 0; f < maxNumFish; f++){ //f for fish
					file_text_write_real(file, irandom(CAMERA_W)); //X position of fish
					file_text_write_string(file, " ");
					file_text_write_real(file, irandom(CAMERA_H)); //Y position of fish
					file_text_write_string(file, " ");
					file_text_write_real(file, ChooseWeightedRandomFishSize(spawnChartID)); //fish size
					file_text_write_string(file, " ");
					file_text_write_real(file, irandom(364)); //direction of fish
					file_text_writeln(file);
				}
			}
		}
	}
	file_text_close(file);
	layer_reset_target_room();
}

/// @function          LoadSaveFile()
function LoadSaveFile(){
	var file = file_text_open_read(global.chosen_save);
	//Read info from save file
	global.playerX = file_text_read_real(file); //Player X
	file_text_readln(file);
	global.playerY = file_text_read_real(file); //Player Y
	file_text_readln(file);
	//read in map data
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
	//do not read in fishing data
	file_text_close(file);
}

/// @function          SaveGame()
function SaveGame(){
	var tempSaveData = file_text_open_from_string(PreserveFishingData());
	var file = file_text_open_write(global.chosen_save);
	file_text_write_real(file, global.playerX); //Player X
	file_text_writeln(file);
	file_text_write_real(file, global.playerY); //Player Y
	file_text_writeln(file);
	//map data
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
	//Save fishing data
	while(!file_text_eof(tempSaveData)){
		file_text_write_string(file, file_text_readln(tempSaveData));
	}
	file_text_close(file);
	file_text_close(tempSaveData);
}

/// @function          PreserveFishingData()
function PreserveFishingData(){
	var data = "Fishing Data\r\n";
	var file = file_text_open_read(global.chosen_save);
	show_debug_message("Reached1");
	while(file_text_readln(file) != "Fishing Data\r\n"){}; //Navigate to beginning of fishing data
	//Read in data
	show_debug_message("Reached");
	while(!file_text_eof(file)){ //While the end has not been reached
		var d = file_text_readln(file);
		show_debug_message(d);
		data += d;
	}
	show_debug_message(data);
	return data;
}

/// @function CreateMap(roomID)
/// @ param {real}	   roomID
function CreateMap(roomID){
	layer_set_target_room(roomID);//Go to specifed map
	global.playerX = 30;
	global.playerY = 16;
	//Write all grid maps into save file
	layer_set_visible("Ground_Grid", false); //Hides bitmap
	layer_set_visible("Background_Grid", false); //Hides bitmap
	layer_set_visible("Interactable_Grid", false); //Hides bitmap
	layer_set_visible("Foreground_Grid", false); //Hides bitmap
	layer_set_visible("Collision_Grid", false); //Hides bitmap
	layer_set_visible("Temperature_Grid", false); //Hides bitmap
	//Write to save file
	for(var i = 0; i < array_length(global.mapNames); i++){
		for(var y_ = 0; y_ < MAP_H; y_++){
			for(var x_ = 0; x_ < MAP_W; x_++){
				global.gridNames[i][# x_, y_] = tile_get_index(tilemap_get(layer_tilemap_get_id(global.mapNames[i]), x_, y_));
			}
		}
	}
	layer_reset_target_room();
}