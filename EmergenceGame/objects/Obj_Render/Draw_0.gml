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
			
			if(curGrid == global.Interactable_Grid && tX == floor(global.playerX) && tY == floor(global.playerY)){
				draw_sprite(global.hat, 0, camera_get_view_x(view_camera[0]) + CAMERA_W/2, camera_get_view_y(view_camera[0]) + CAMERA_H/2);
			}else if(tileIndex != 0){ //draw tile on screen if it exists
				draw_sprite(gridSprites[r], tileIndex - 1, screenX, screenY);
			}
		}
	}
}

