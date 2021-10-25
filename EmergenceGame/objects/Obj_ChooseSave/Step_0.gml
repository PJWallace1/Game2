/// @description Insert description here
// You can write your code in this editor

//Keyboard Controls
if(menu_control){
	if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))){
		menu_cursor++;
		menu_cursor %= menu_items;
	}
	if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))){
		menu_cursor--;
		if(menu_cursor < 0){
			menu_cursor = menu_items - 1;
		}
	}
	if(keyboard_check_released(vk_enter) && first_menu){
		switch (menu_cursor){
			case 2:
				global.chosen_save = "Save1.sav";
				break;	
			case 1:
				global.chosen_save = "Save2.sav";
				break;
			case 0:
				global.chosen_save = "Save3.sav";
				break;
			default:
				global.chosen_save = "default";
				break;
		}
		menu[2] = "Load";
		menu[1] = "Overwrite";
		menu[0] = "Back";
		menu_cursor = 2;
		first_menu = false;
	} else if(keyboard_check_released(vk_enter) && !first_menu){
		switch (menu_cursor){
			case 2: //Load the old save if it exists
				menu_control = false;
				if(file_exists(global.chosen_save)){
					var file = file_text_open_read(global.chosen_save);
					//Read info from save file
					var target_room = file_text_read_real(file);
					file_text_readln(file);
					global.playerX = file_text_read_real(file);
					file_text_readln(file);
					global.playerY = file_text_read_real(file);
					file_text_readln(file);
					file_text_close(file);
					//Load saved room
					SlideTransition(TRANS_MODE.GOTO, target_room);
					break;
				}
			case 1: //Create a new game
				menu_control = false;
				SlideTransition(TRANS_MODE.GOTO, Room1);
				break;
			case 0: //return to choosing a save
				first_menu = true
				menu[2] = "Save 1";
				menu[1] = "Save 2";
				menu[0] = "Save 3";
				break;
		}
	}
}