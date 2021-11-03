/// @description Create appropraite room objects
if(room_get_name(room) == "Room_Menu"){
	instance_create_layer(0, 0, "Instances", Obj_Camera);
	instance_create_layer(0, 0, "Instances", Obj_MainMenu);
} else if(room_get_name(room) == "Room1"){
	instance_create_layer(0, 0, "Instances", Obj_Camera);
	instance_create_layer(0, 0, "Instances", Obj_Render);
	instance_create_layer(0, 0, "Instances", Obj_Interact);
	var tileMapM = layer_tilemap_get_id("Map"); //Get tilemap id
	var tileMapC = layer_tilemap_get_id("Collision"); //Get tilemap id
	var tileMapA = layer_tilemap_get_id("AboveGround"); //Get tilemap id

	layer_set_visible("Map", false); //Hides bitmap
	layer_set_visible("Collision", false); //Hides bitmap
	layer_set_visible("AboveGround", false); //Hides bitmap

	//Read map into grid
	for(var tX = 0; tX < MAP_W; tX++){
		for(var tY = 0; tY < MAP_H; tY++){
			//Map
			var tileMapData = tilemap_get(tileMapM, tX, tY); //Get data at each cell
			tileMapData = tile_get_index(tileMapData); //Pull index from data
			var thisTile = [-1, 0]; //[sprite index, height]
			thisTile[TILE.SPRITE] = tileMapData; //store sprite index
			if(thisTile[TILE.SPRITE] == 2 || thisTile[TILE.SPRITE] == 3 ||
			   thisTile[TILE.SPRITE] == 4){
				thisTile[TILE.Z] = 2; //set water height to slightly lower
			} else {
				thisTile[TILE.Z] = 0; //set tile height to 0 as default
			}
			global.theMap[# tX, tY] = thisTile; //Store tile data in map
			//Collision
			tileMapData = tilemap_get(tileMapC, tX, tY); //Get data at each cell
			tileMapData = tile_get_index(tileMapData); //Pull index from data
			var thisTile = [-1, 0]; //[sprite index, height]
			thisTile[TILE.SPRITE] = tileMapData; //store sprite index
			thisTile[TILE.Z] = 0; //set tile height to 0 as default
			global.collisionMap[# tX, tY] = thisTile; //Store tile data in map
			//AboveGround
			tileMapData = tilemap_get(tileMapA, tX, tY); //Get data at each cell
			tileMapData = tile_get_index(tileMapData); //Pull index from data
			var thisTile = [-1, 0]; //[sprite index, height]
			thisTile[TILE.SPRITE] = tileMapData; //store sprite index
			thisTile[TILE.Z] = 0; //set tile height to 0 as default
			global.aboveGroundMap[# tX, tY] = thisTile; //Store tile data in map
		}
	}
	global.paused = false;
} else if(room_get_name(room) == "Room_Arctic"){
	instance_create_layer(0, 0, "Instances", Obj_Camera);
	instance_create_layer(0, 0, "Instances", Obj_Render);
	instance_create_layer(0, 0, "Instances", Obj_Interact);
	var tileMapM = layer_tilemap_get_id("Map"); //Get tilemap id
	var tileMapC = layer_tilemap_get_id("Collision"); //Get tilemap id
	//var tileMapA = layer_tilemap_get_id("AboveGround"); //Get tilemap id

	layer_set_visible("Map", false); //Hides bitmap
	layer_set_visible("Collision", false); //Hides bitmap
	//layer_set_visible("AboveGround", false); //Hides bitmap

	//Read map into grid
	for(var tX = 0; tX < MAP_W; tX++){
		for(var tY = 0; tY < MAP_H; tY++){
			//Map
			var tileMapData = tilemap_get(tileMapM, tX, tY); //Get data at each cell
			tileMapData = tile_get_index(tileMapData); //Pull index from data
			var thisTile = [-1, 0]; //[sprite index, height]
			thisTile[TILE.SPRITE] = tileMapData; //store sprite index
			if(thisTile[TILE.SPRITE] == 2 || thisTile[TILE.SPRITE] == 3 ||
			   thisTile[TILE.SPRITE] == 4){
				thisTile[TILE.Z] = 2; //set water height to slightly lower
			} else {
				thisTile[TILE.Z] = 0; //set tile height to 0 as default
			}
			global.theMap[# tX, tY] = thisTile; //Store tile data in map
			//Collision
			tileMapData = tilemap_get(tileMapC, tX, tY); //Get data at each cell
			tileMapData = tile_get_index(tileMapData); //Pull index from data
			var thisTile = [-1, 0]; //[sprite index, height]
			thisTile[TILE.SPRITE] = tileMapData; //store sprite index
			thisTile[TILE.Z] = 0; //set tile height to 0 as default
			global.collisionMap[# tX, tY] = thisTile; //Store tile data in map
			//AboveGround
			/*
			tileMapData = tilemap_get(tileMapA, tX, tY); //Get data at each cell
			tileMapData = tile_get_index(tileMapData); //Pull index from data
			var thisTile = [-1, 0]; //[sprite index, height]
			thisTile[TILE.SPRITE] = tileMapData; //store sprite index
			thisTile[TILE.Z] = 0; //set tile height to 0 as default
			global.aboveGroundMap[# tX, tY] = thisTile; //Store tile data in map
			*/
		}
	}
	global.paused = false;
}else if(room_get_name(room) == "Room_ChooseSave"){
	instance_create_layer(0, 0, "Instances", Obj_ChooseSave);
}
