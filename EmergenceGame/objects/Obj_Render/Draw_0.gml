/// @description Render game
//Temp variables
var screenX, screenY, tileIndex;
var gridsToDraw = 4 //The number of grids obj_render loops through
//Sprite IDs for each layer
var gridSprites = [Spr_ForegroundIso, Spr_InteractableIso,
				   Spr_BackgroundIso, Spr_GroundIso];
for(var r = gridsToDraw - 1; r >= 0; r--){ //Draw layers from back to front
	var curGrid = global.gridNames[r];
	for(var tX = 0; tX < MAP_W; tX++){
		for(var tY = 0; tY < MAP_H; tY++){
			tileIndex = curGrid[# tX, tY]; //Get tile data from map cell
		
			//convert to isometric coordinates
			screenX = TileToScreenX(tX, tY);
			screenY = TileToScreenY(tX, tY);	
			
			//if(curGrid == global.Interactable_Grid && 
			if(tileIndex != 0){ //draw tile on screen if it exists
				draw_sprite(gridSprites[r], tileIndex - 1, screenX, screenY);
			}
		}
	}
}


//draw animals
var tileData = global.Collision_Grid[#floor(animal_x + 1), floor(animal_y)];
		if(tileData != 1){
			animal_x ++;
			//animal_y += 0 - 1;
		}

if (kill == false){
	draw_sprite_ext(Spr_Crab_DR, (animal_i/ 1), animal_x, animal_y, animal_d, 1, 0, c_white, 1);
	animal_i += .25;
	if (animal_i == 3){
		animal_i = 0;
	}
}
/*if (animal_x > ROOM_W || animal_x < 0 || animal_y > ROOM_H || animal_y < 0){
	kill = true;
}*/
