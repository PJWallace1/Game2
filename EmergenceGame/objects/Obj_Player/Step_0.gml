/// @description Move player

//Camera Movement
var pixelsToMove = 3;
//Move _ pixels in vertical direction
var vsp = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) / TILE_H * pixelsToMove; 
//Move _ pixels in horizontal direction
var hsp = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) / TILE_W * pixelsToMove;

//Apply movement to position
if(vsp * hsp == 0){ //cardinal directions
	var tileData = global.collisionMap[# floor(playerX + vsp + hsp), floor(playerY + vsp - hsp)];
	if(tileData[TILE.SPRITE] != 1){
		playerX += vsp + hsp;
		playerY += vsp - hsp;
	}
} else { //diagonal motion
	var tMul = sqrt(2) / 2.0;
	var tileData = global.collisionMap[# floor(playerX + tMul * (vsp + hsp)), floor(playerY + tMul * (vsp - hsp))];
	if(tileData[TILE.SPRITE] != 1){
		playerX += tMul * (vsp + hsp);
		playerY += tMul * (vsp - hsp);
	}
}

//Convert new normal position to isometric position
var newX = TileToScreenX(playerX, playerY) - CAMERA_W * 0.5;
var newY = TileToScreenY(playerX, playerY) - CAMERA_H * 0.5;

//Move camera to new position
camera_set_view_pos(view_camera[0], newX, newY);

//Check if game transition
//left click on water tile to go to fishing
if (mouse_check_button(mb_left)){
	SlideTransition(TRANS_MODE.GOTO, Room_Fishing);
}