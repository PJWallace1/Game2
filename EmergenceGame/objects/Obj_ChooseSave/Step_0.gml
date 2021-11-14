 /// @description Insert description here
// You can write your code in this editor

//Keyboard Controls
switch(menu_depth){
	case 0:
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
		if(keyboard_check_released(vk_enter)){ //First menu
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
			menu_depth = 1;
		} 
		break;
	case 1:
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
		if(keyboard_check_released(vk_enter)){ //Second menu
			switch (menu_cursor){
				case 1: //Load the old save if it exists
					if(file_exists(global.chosen_save)){
						menu_depth = 2;
						break;
					}
				case 2: //Create a new game
					GenerateNewSave(Room_Tropical);
					menu_depth = 2;
					break;
				case 0: //return to choosing a save
					menu_depth = 0;
					menu_cursor = 2;
					menu[2] = "Save 1";
					menu[1] = "Save 2";
					menu[0] = "Save 3";
					break;
			}
		}
		break;
	case 2:
		//Save file loaded by Obj_Game at room start
		SlideTransition(TRANS_MODE.GOTO, Room_Game);
		instance_destroy();
		break;
}