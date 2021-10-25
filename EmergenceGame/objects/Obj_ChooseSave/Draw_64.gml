/// @description Insert description here
// You can write your code in this editor

draw_set_font(menu_font);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);

for(var i = 0; i < menu_items; i++){
	var txt = menu[i];
	if(menu_cursor == i){
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	} else {
		var col = c_gray;
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * menu_scale * i * 4 );
	draw_set_color(col);
	draw_text_transformed(xx, yy, txt, menu_scale, menu_scale, 0);
	draw_rectangle(CAMERA_W / 16, yy - menu_itemheight * menu_scale - 5, CAMERA_W * 15 / 16, yy + menu_itemheight * menu_scale + 5, true);
}