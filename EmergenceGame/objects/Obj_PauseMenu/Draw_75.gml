/// @description Insert description here
// You can write your code in this editor

draw_set_font(menu_font);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

draw_set_color(c_dkgray);
draw_roundrect(CAMERA_W / 16, CAMERA_H / 16, CAMERA_W * 15 / 16, CAMERA_H * 15 / 16, false);
	
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