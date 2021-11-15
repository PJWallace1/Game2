//Search 9 squares around player for interactables
if(!global.paused){
	var tileData, keepSearching = true;
	for(var tX = -1; tX <= 1 && keepSearching; tX++){
		for(var tY = -1; tY <= 1 && keepSearching; tY++){
			tileData = global.Interactable_Grid[# floor(global.playerX) +  tX, floor(global.playerY) + tY];
			if (tileData == 4){
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
		progress = 0; //Reset the progress bar upon completion
		//Get the desired Obj_FishingInteractable
		activatedFishingInteractable = ds_map_find_value(global.fishingInteractableMap, string(interactX) + " " + string(interactY));
		if(!is_undefined(activatedFishingInteractable)){
			//Activate the object
			activatedFishingInteractable.activated = true;
			global.paused = true;
		} else {
			show_debug_message("Failed to find specifed fishing interactable:");
			show_debug_message("X: " + string(interactX) + " Y: " + string(interactY) + " TileID: " +
						       string(global.Interactable_Grid[# interactX, interactY]));
		}
	}
	//update bars
	timer--;
	if (timer < 0){
		Obj_Player.h--;
		Obj_Player.wl--;
		Obj_Player.temp--;
		timer = 500;
	}
}