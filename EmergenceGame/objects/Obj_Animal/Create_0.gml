/// @description Insert description here
// You can write your code in this editor


//animal variables

animal_p = 1//animal path;
animal_i = 0; //animal sprite index iterator
animal_d = choose (-1, 1);
animal_x = 200;
animal_y = 470;
kill = false;
increase = true;



object_set_sprite(0, Spr_Bear_DR);

if (room == Room_Tropical){
	object_set_sprite(0, Spr_Crab_DR);
}