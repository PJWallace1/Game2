/// @description Insert description here
// You can write your code in this editor

draw_set_font(Font_Rules);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_color(c_white);
draw_text(CAMERA_W / 2, CAMERA_H  /2, "W A S D To move, Click on Animals to hunt");
draw_text(CAMERA_W / 2, CAMERA_H / 2 + 40, "Don't let your red hunger bar run out!");
draw_text(CAMERA_W / 2, CAMERA_H / 2 + 80, "Hold E near fishing spots to go fishing");
draw_text(CAMERA_W / 2, CAMERA_H / 2 + 120, "When fishing, put your bob");
draw_text(CAMERA_W / 2, CAMERA_H / 2 + 160, " in the water near a fish and wait");
draw_text(CAMERA_W / 2, CAMERA_H / 2 + 200, "Press Escape to stop fishing");
draw_text(CAMERA_W / 2, CAMERA_H / 2 + 240, "Can you survive in each enviornment?");
draw_text(CAMERA_W / 2, CAMERA_H / 2 + 280, "Press enter to return to menu");
draw_set_font(Font_Menu);