/// @description Insert description here
// You can write your code in this editor

GridX = 500;
GridY = 500;

move_x = 1;
move_y = 0;

//x = TileToScreenX(GridX) + move_x;
//y = TileToScreenX(GridY) + move_y;
//draw_sprite(Spr_Crab_DR, 0, x, y);
//animal variables

//old animal 

animal_p = 1//animal path;
animal_i = 0; //animal sprite index iterator
animal_d = choose (-1, 1);
animal_x = 200;
animal_y = 470;
kill = false;
increase = true;

//tropical
if (global.room_id == 0){
	sprite_index = Spr_Crab_DR;
}
if (global.room_id == 1){
	sprite_index = Spr_Deer_DR;
}
if (global.room_id == 2){
	sprite_index = Spr_Polar_DR;
}


