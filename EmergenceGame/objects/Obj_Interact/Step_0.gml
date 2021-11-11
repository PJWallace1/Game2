//Search 9 squares around player for interactables
if(!global.paused){
	var tileData, keepSearching = true;
	for(var tX = -1; tX <= 1 && keepSearching; tX++){
		for(var tY = -1; tY <= 1 && keepSearching; tY++){
			tileData = global.aboveGroundMap[# floor(global.playerX) +  tX, floor(global.playerY) + tY];
			if (tileData[TILE.SPRITE] == 4){
			//if(tileData == Tile_AboveGround && tileData[TILE.SPRITE] == 4){
				interact = true;
				interactX = floor(global.playerX) + tX;
				interactY = floor(global.playerY) + tY;
				keepSearching = false;
			} else {
				interact = false;
			}
		}
	}
	//Increase the progress bar if E is being held
	if(interact && keyboard_check(ord("E"))){
		progress+=0.75;
	} else if(interact) {
		progress = 0;
	}
	//Begin the fishing game is E is held for long enough
	if(progress >= requiredProgress){
		global.paused = true;
		SlideTransition(TRANS_MODE.GOTO, Room_Fishing);
	}
}