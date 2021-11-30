/// @description Insert description here
// You can write your code in this editor

/*
//animal movement
	var tMul = sqrt(2) / 2.0;
	var tileData = global.Collision_Grid[# floor(x + tMul * animal_p), floor(y + tMul * animal_p)];
	
	var lay_id = layer_get_id("Tile_GroundTiles");
	var map_id = layer_tilemap_get_id(lay_id);
	//var mx = tilemap_get_cell_x_at_pixel(map_id, x, y);
	//var my = tilemap_get_cell_y_at_pixel(map_id, x, y);
	var data = tilemap_get(map_id, x, y);
	var ind = tile_get_index(data);
	
	var _tile = tilemap_get_at_pixel(Tile_GroundTiles, x, y);
	var _tile_index = tile_get_index(data);
	
	var curGrid = global.gridNames[r];
	tileIndex = curGrid[x, y];
	
	if (ind != 1){
	
	
	//if (ind != 1){
	//if (tile_get_index(tilemap_get(layer_tilemap_get_id(layer_get_id("Tile_CollisionTiles")), x, y)) == 1){
	//if (position_meeting(x, y, Tile_CollisionTiles) && Tile_CollisionTiles.sprite_index == 1){
	//if(tileData != 1){
		x += tMul * animal_p;
		//if (animal_p < 500){
			//animal_p += 0;
		//}
		/*else{
			animal_x--;
			animal_p++;
			if (animal_p == 1000){
				animal_p = 0;
			}
		}
		//animal_p = -1;
	}
	else{
			//animal_x--;
		//animal_p *= -1;
			/*if (animal_p == 1000){
				animal_p = 0;
			}
		animal_p *= -1;
	}
	else{
		x = 100;
	}
	
	
	
}

/*
if (animal_x > ROOM_W || animal_x < 0 || animal_y > ROOM_H || animal_y < 0){
	kill = true;
}*/