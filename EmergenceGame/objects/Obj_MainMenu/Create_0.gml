/// @description Setup menu functionality

gui_margin = 32;

menu_x = CAMERA_W * 0.36;
menu_y = CAMERA_H * 3 / 4;
menu_scale = 3;
//menu_x_target = global.gui_width - gui_margin;
//menu_speed = 25; //lower is faster
menu_font = Font_Menu;
menu_itemheight = font_get_size(menu_font);
menu_committed = -1;
menu_control = true;

menu[2] = "Play";
menu[1] = "Credits";
menu[0] = "Quit";

menu_items = array_length_1d(menu);
menu_cursor = 2;
