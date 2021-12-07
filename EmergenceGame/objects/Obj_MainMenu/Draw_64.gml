/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(Spr_Crab_DR, 0, 250, 100, 5, 5, 0, c_white, 1);
draw_sprite_ext(Spr_Deer_DR, 0, 50, 400, 5, 5, 0, c_white, 1);
draw_sprite_ext(Spr_Polar_DR, 0, 575, 100, 5, 5, 0, c_white, 1);
draw_sprite_ext(Spr_Fish, 0, 750, 400, 5, 5, 0, c_white, 1);
//draw_sprite_ext(Spr_Fish, 0, 250, 150, 3, 3, 0, c_white, 1);


draw_set_font(menu_font);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

for(var i = 0; i < menu_items; i++){
	var txt = menu[i];
	if(menu_cursor == i){
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	} else {
		var col = c_gray;
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * menu_scale * i * 1.5 );
	draw_set_color(col);
	draw_text_transformed(xx, yy, txt, menu_scale, menu_scale, 0);
}
