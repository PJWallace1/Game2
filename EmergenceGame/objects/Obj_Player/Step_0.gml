/// @description Move player
//Pause the game if the player presses escape

if(!global.paused){
//Camera Movement
	//Move pixelsToMove pixels in vertical direction
	vsp = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) / TILE_H * pixelsToMove; 
	//Move pixelsToMove pixels in horizontal direction
	hsp = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) / TILE_W * pixelsToMove;

	//Apply movement to position
	if(vsp * hsp == 0){ //cardinal directions
		var tileData = global.Collision_Grid[# floor(global.playerX + vsp + hsp), floor(global.playerY + vsp - hsp)];
		if(tileData != 1){
			global.playerX += vsp + hsp;
			global.playerY += vsp - hsp;
		}
	} else { //diagonal motion
		var tMul = sqrt(2) / 2.0;
		var tileData = global.Collision_Grid[# floor(global.playerX + tMul * (vsp + hsp)), floor(global.playerY + tMul * (vsp - hsp))];
		if(tileData != 1){
			global.playerX += tMul * (vsp + hsp);
			global.playerY += tMul * (vsp - hsp);
		}
	}

	//Convert new normal position to isometric position
	var newX = TileToScreenX(global.playerX, global.playerY) - CAMERA_W * 0.5;
	var newY = TileToScreenY(global.playerX, global.playerY) - CAMERA_H * 0.5;

	//Move camera to new position
	camera_set_view_pos(view_camera[0], newX, newY);
	
//Search for and handle nearby Interactable
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
	//Begin the fishing game if E is held for long enough
	if(progress >= requiredProgress){
		progress = 0; //Reset the progress bar upon completion
		room_goto(Room_Fishing);
	}
//update bars
	timer--;
	if (timer < 0){
		Obj_Player.h-=2
		Obj_Player.wl--;
		Obj_Player.temp--;
		timer = 50;
	}
	if (Obj_Player.h <= 1){
		show_debug_message("die");
		room_goto(Room_Scores);
	}
} else if(room == Room_Fishing){
	timer--;
	if (timer < 0){
		Obj_Player.h-=2
		Obj_Player.wl--;
		Obj_Player.temp--;
		timer = 50;
	}
}
//Temporary Room Change Accesability
if(current_time > 180000 || keyboard_check(ord("J"))){
	room_goto(Room_Scores);
	global.pause = true;
	
}
if (keyboard_check(ord("K")) || current_time > 90000){
	show_debug_message("Trand");
	global.room_id = 2; //arctic
	CreateMap(Room_Arctic);
	room_restart(); //Triggers load save
}
else if (keyboard_check(ord("L")) || (current_time > 45000)){
	global.room_id = 1; //forest
	CreateMap(Room_Forest);
	room_restart(); //Triggers load save
}


