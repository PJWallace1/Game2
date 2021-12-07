/// @description Hunt Animal (instance_destroy())
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, self)){
	Obj_Player.h += 5;
	y = irandom_range(0, MAP_H);
	x = irandom_range(0, MAP_W);
	animal_p = 1//animal path;
	animal_i = 0; //animal sprite index iterator
	animal_d = choose (-1, 1);
	kill = false;
increase = true;
	instance_destroy();
}