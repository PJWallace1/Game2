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
	if(keyboard_check_released(vk_enter) && first_menu){ //First menu
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
				throw ("Invalid save file...oops");
				break;
		}
		menu[2] = "New";
		menu[1] = "Load";
		menu[0] = "Back";
		menu_cursor = 2;
		first_menu = false;
	} else if(keyboard_check_released(vk_enter) && !first_menu){ //Second menu
		switch (menu_cursor){
			case 1: //Load the old save if it exists
				menu_control = false;
				if(file_exists(global.chosen_save)){
					
					LoadSaveFile(); //located in GeneralFunctions
					
					break;
				}
			case 2: //Create a new game
				menu_control = false;
				new_game = true;
				room_goto(Room_Tropical);
				break;
			case 0: //return to choosing a save
				first_menu = true
				menu_cursor = 2;
				menu[2] = "Save 1";
				menu[1] = "Save 2";
				menu[0] = "Save 3";
				break;
		}
	}
} else {
	if(new_game){ //Loads a save file
		GenerateNewSave();
	}
	LoadSaveFile();
	SlideTransition(TRANS_MODE.GOTO, Room_Game);
	instance_destroy();
}