/// @description Move player

//Camera Movement
var pixelsToMove = 3;
//Move _ pixels in vertical direction
var vsp = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) / TILE_H * pixelsToMove; 
//Move _ pixels in horizontal direction
var hsp = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) / TILE_W * pixelsToMove;

//Apply movement to position
if(vsp * hsp == 0){ //cardinal directions
	playerX += vsp + hsp;
	playerY += vsp - hsp;
} else { //diagonal motion
	var tMul = sqrt(2) / 2.0;
	playerX += vsp * tMul + hsp * tMul;
	playerY += vsp * tMul - hsp * tMul;
}

//Convert new normal position to isometric position
var newX = TileToScreenX(playerX, playerY) - CAMERA_W * 0.5;
var newY = TileToScreenY(playerX, playerY) - CAMERA_H * 0.5;

//Move camera to new position
camera_set_view_pos(view_camera[0], newX, newY);
