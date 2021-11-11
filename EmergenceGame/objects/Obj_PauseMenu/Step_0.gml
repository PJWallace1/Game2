/// @description Insert description here
// You can write your code in this editor

if(menu_control){
	if(keyboard_check_pressed(vk_escape)){
		show_debug_message("reached");
		menu_committed = 1;
		menu_control = false;
	}
	else if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))){
		menu_cursor++;
		menu_cursor %= menu_items;
	}
	else if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))){
		menu_cursor--;
		if(menu_cursor < 0){
			menu_cursor = menu_items - 1;
		}
	}
	else if(keyboard_check_pressed(vk_enter)){
		menu_committed = menu_cursor;
		menu_control = false;
	}
}
if(menu_committed != -1){
	switch(menu_committed){
		case 2: 
			SaveGame();
			menu_control = true;
			menu_committed = -1;
		break;
		case 1:
			global.paused = false;
			instance_destroy(self);
			break;
		case 0: 
			SlideTransition(TRANS_MODE.GOTO, Room_Menu);
			instance_destroy();
			break;
	}
}