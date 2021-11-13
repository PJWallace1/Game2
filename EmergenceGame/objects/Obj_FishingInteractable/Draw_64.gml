/// @description Insert description here
// You can write your code in this editor
if(activated){
	//Draw the fish
	for(var i = 0; i < curNumFish; i++){
		with(fishInSpot[i]){
			draw_sprite_ext(Spr_Fish, fishSize, x, y, 1, 1, image_angle, c_white, 1);
		}
	}
}