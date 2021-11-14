/// @description Insert description here
// You can write your code in this editor
if(activated){

	//Draw main rectangle
	draw_set_color($f59b42);
	draw_roundrect(gui_margin, gui_margin, CAMERA_W - gui_margin,
						  CAMERA_H - gui_margin, false);
	draw_set_color(c_black);
	//Draw the fish
	for(var i = 0; i < curNumFish; i++){
		with(fishInSpot[i]){
			draw_sprite_ext(Spr_Fish, fishSize, x, y, 1, 1, image_angle, c_white, 1);
		}
	}
}