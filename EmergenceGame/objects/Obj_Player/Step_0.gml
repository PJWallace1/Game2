/// @description Move player

//Camera Movement
var hsp = 0.125 * (keyboard_check(ord("D")) - keyboard_check(ord("A")));
var vsp = 0.25 * (keyboard_check(ord("S")) - keyboard_check(ord("W")));

playerX += vsp + hsp;
playerY += vsp - hsp;


var newX = TileToScreenX(playerX, playerY) - CAMERA_W * 0.5;
var newY = TileToScreenY(playerX, playerY) - CAMERA_H * 0.5;

camera_set_view_pos(view_camera[0], newX, newY);
