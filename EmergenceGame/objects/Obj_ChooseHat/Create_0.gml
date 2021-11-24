/// @description Setup menu functionality



menu_x = CAMERA_W * 0.16;
menu_y = CAMERA_H * 3 / 4;
menu_scale = 4;
//menu_x_target = global.gui_width - gui_margin;
//menu_speed = 25; //lower is faster
menu_font = Font_Menu;
menu_itemheight = font_get_size(menu_font);
//An integer used in the switch statement within
//step to control which menu layer to step through
menu_depth = 0;

menu[2] = "Cowboy Hat";
menu[1] = "Beanie";
menu[0] = "Baseball Hat";

menu_items = array_length_1d(menu);
menu_cursor = 2;





gui_margin = 32;

global.hat = 2;


menu_committed = -1;
menu_control = true;
