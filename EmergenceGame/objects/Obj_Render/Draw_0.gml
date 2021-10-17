/// @description Render game
//Temp variables
var tileData, screenX, screenY, tileIndex, tileZ;

for(var tX = 0; tX < MAP_W; tX++){
	for(var tY = 0; tY < MAP_H; tY++){
		tileData = global.theMap[# tX, tY]; //Get tile data from map cell
		//convert to isometric coordinates
		screenX = TileToScreenX(tY, tX);
		screenY = TileToScreenY(tX, tY);
		
		//Extract tile cell data
		tileIndex = tileData[TILE.SPRITE];
		tileZ = tileData[TILE.Z];
		
		if(tileIndex != 0){ //draw on screen if not empty
			draw_sprite(Spr_Static, tileIndex - 1, screenX, screenY + tileZ);
		}
	}
}