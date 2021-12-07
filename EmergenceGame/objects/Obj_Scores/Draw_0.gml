/// @description Insert description here
// You can write your code in this editor

draw_set_font(Font_Menu);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_color(c_dkgray);
draw_text(CAMERA_W / 2, CAMERA_H  /2, "New High Score: " + string(global.score));
draw_text(CAMERA_W / 2, CAMERA_H / 2 + 20, "Press Enter to Exit Game");