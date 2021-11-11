/// @description Insert description here
// You can write your code in this editor

menu_x = CAMERA_W * 5 / 16;
menu_y = CAMERA_H * 3 / 4;
menu_scale = 4;
//menu_x_target = global.gui_width - gui_margin;
//menu_speed = 25; //lower is faster
menu_font = Font_Menu;
menu_itemheight = font_get_size(menu_font);
first_menu = true;
menu_control = true;
new_game = false;

menu[2] = "Save 1";
menu[1] = "Save 2";
menu[0] = "Save 3";

menu_items = array_length_1d(menu);
menu_cursor = 2;

