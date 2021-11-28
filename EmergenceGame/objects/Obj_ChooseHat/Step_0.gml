/// @description Make menu work

//Item ease in
//menu_x += (menu_x_target - menu_x) / menu_speed;

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
	if(keyboard_check_pressed(vk_enter)){
		menu_committed = menu_cursor;
		menu_control = false;
		SlideTransition(TRANS_MODE.GOTO, Room_Game);
	}
}
if(menu_committed != -1){
	switch(menu_committed){
		case 2: 
			global.hat = Spr_Cowboy;
			break;
		case 1:
			global.hat = Spr_Beanie;
			break;
		case 0: 
			global.hat = Spr_Baseball;
			break;
			
		//GenerateNewSave(Room_Tropical);
	}
}