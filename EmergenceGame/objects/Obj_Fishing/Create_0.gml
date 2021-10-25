/// @description Insert description here
// You can write your code in this editor

draw_set_font(Font_Game);
fish = 0;

repeat(5){
	instance_create_layer(random_range(0,room_width), random_range(0, room_height), "Instances", Obj_Fish);
}