/// @description Insert description here
// You can write your code in this editor

if(!global.paused){

	if(interact){
		var screenX = TileToScreenX(interactX, interactY);
		var screenY = TileToScreenY(interactX, interactY);
	
		var outSize = 16;
		var inSize = 15;
		//draw_set_alpha(0.75);
		draw_set_colour(c_ltgray);
		draw_roundrect(screenX + outSize, screenY + outSize,
					   screenX - outSize, screenY - outSize, false);
					   
		draw_set_colour(c_white);
		draw_roundrect(screenX + inSize, screenY + inSize - floor(progress),
					   screenX - inSize, screenY + inSize, false);
					   
		draw_set_font(Font_Interact);
		draw_set_halign(fa_middle);
		draw_set_valign(fa_middle);
		draw_set_colour(c_black);
		draw_text(screenX, screenY, "E");
		//draw_set_alpha(1);
	}
}