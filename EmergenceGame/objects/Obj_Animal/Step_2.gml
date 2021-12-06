/// @description Hunt Animal (instance_destroy())
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, self)){
	Obj_Player.h += 5;
	rand_y = irandom_range(0, MAP_H);
	animal_x = TileToScreenX(0, rand_y);
	animal_y = TileToScreenY(0, rand_y);
	instance_create_layer(animal_x, animal_y, "Animals", Obj_Animal);
	instance_destroy()
}