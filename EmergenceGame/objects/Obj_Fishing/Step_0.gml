/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_escape)){
	room_goto(Room_Game);
}else{
	if(mouse_check_button_pressed(mb_left)){
		bobID.x = mouse_x;
		bobID.y = mouse_y;
	}
}