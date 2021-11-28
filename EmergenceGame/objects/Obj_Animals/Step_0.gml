/// @description Move Animal
//Pause the game if the player presses escape
if(!global.paused && keyboard_check_pressed(vk_escape)){
	instance_create_layer(0, 0, "Instances", Obj_PauseMenu);
}
else if(!global.paused){
	//Camera Movement
	//Move pixelsToMove pixels in vertical direction
	//var vsp = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) / TILE_H * pixelsToMove;

	//Move pixelsToMove pixels in horizontal direction
	//var hsp = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) / TILE_W * pixelsToMove;
	
	hsp = walksp;
	vsp += grv;

	//Apply movement to position
	if(vsp * hsp == 0){ //cardinal directions
		var tileData = global.Collision_Grid[# floor(x + vsp + hsp), floor(y + vsp - hsp)];
		if(tileData != 1){
			x += vsp + hsp;
			y += vsp - hsp;
		}

	} else { //diagonal motion
		var tMul = sqrt(2) / 2.0;
		var tileData = global.Collision_Grid[# floor(x + tMul * (vsp + hsp)), floor(y + tMul * (vsp - hsp))];
		if(tileData != 1){
			x += tMul * (vsp + hsp);
			y += tMul * (vsp - hsp);
		}
	}
	
	//Convert new normal position to isometric position
	var newX = TileToScreenX(x, y) - 100;
	var newY = TileToScreenY(x, y) - 100;

}