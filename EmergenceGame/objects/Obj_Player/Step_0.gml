/// @description Move player
//Pause the game if the player presses escape
if(keyboard_check(vk_escape)){
	global.paused = true;
	instance_create_layer(0, 0, "Instances", Obj_PauseMenu);
}
if(!global.paused){
	//Camera Movement
	//Move _ pixels in vertical direction
	var vsp = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) / TILE_H * pixelsToMove; 
	//Move _ pixels in horizontal direction
	var hsp = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) / TILE_W * pixelsToMove;

	//Apply movement to position
	if(vsp * hsp == 0){ //cardinal directions
		var tileData = global.collisionMap[# floor(global.playerX + vsp + hsp), floor(global.playerY + vsp - hsp)];
		if(tileData[TILE.SPRITE] != 1){
			global.playerX += vsp + hsp;
			global.playerY += vsp - hsp;
		}
	} else { //diagonal motion
		var tMul = sqrt(2) / 2.0;
		var tileData = global.collisionMap[# floor(global.playerX + tMul * (vsp + hsp)), floor(global.playerY + tMul * (vsp - hsp))];
		if(tileData[TILE.SPRITE] != 1){
			global.playerX += tMul * (vsp + hsp);
			global.playerY += tMul * (vsp - hsp);
		}
	}

	//Convert new normal position to isometric position
	var newX = TileToScreenX(global.playerX, global.playerY) - CAMERA_W * 0.5;
	var newY = TileToScreenY(global.playerX, global.playerY) - CAMERA_H * 0.5;

	//Move camera to new position
	camera_set_view_pos(view_camera[0], newX, newY);
}