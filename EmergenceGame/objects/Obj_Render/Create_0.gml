/// @description Build the map

layer_set_visible("Map", false); //Hides bitmap

//Map data structure that holds info about world map
global.theMap = ds_grid_create(MAP_W, MAP_H);

var tileMap = layer_tilemap_get_id("Map"); //Get tilemap id

for(var tX = 0; tX < MAP_W; tX++){
	for(var tY = 0; tY < MAP_H; tY++){
		var tileMapData = tilemap_get(tileMap, tX, tY); //Get data at each cell
		tileMapData = tile_get_index(tileMapData); //Pull index from data
		var thisTile = [-1, 0]; //[sprite index, height]
		thisTile[TILE.SPRITE] = tileMapData; //store sprite index
		if(thisTile[TILE.SPRITE] = 2){
			thisTile[TILE.Z] = 2; //set water height to slightly lower
		} else {
			thisTile[TILE.Z] = 0; //set tile height to 0 as default
		}
		global.theMap[# tX, tY] = thisTile; //Store tile data in map
	}
}

