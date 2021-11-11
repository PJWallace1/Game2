/// @description Insert description here
// You can write your code in this editor
room_goto(Room_Tropical);
for(var i = 0; i < array_length(global.gridNames); i++){
	var tileMapID = layer_tilemap_get_id(global.gridNames[i]);
	for(var y = 0; y < MAP_H; y++){
		for(var x = 0; x < MAP_W; x++){
			var tileIndex = tile_get_index(tilemap_get(tileMapID, x, y)); //Get data at each cell
			
		}
	}
}


SlideTransition(TRANS_MODE.GOTO, Room_Tropical);