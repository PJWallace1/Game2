/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, self)){
	Obj_Player.h += 5;
	instance_destroy()
}