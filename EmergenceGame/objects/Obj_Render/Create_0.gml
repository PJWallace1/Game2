/// @description Insert description here
// You can write your code in this editor

i = 0; //sprite index iterator
d = 1; //image_xscale (direction) indicator

//animal variables
animal = random_range(1, 3);
animal_p = 1//animal path;
animal_i = 0; //animal sprite index iterator
animal_d = choose (-1, 1);
animal_x = 200;
animal_y = 470;
kill = false;
increase = true;

/*if (animal == 1){
	animal_d = 1;
	animal_x = 500;
	animal_y = TILE_H + 400;
}
if (animal == 2){
	animal_d = -1;
	animal_x = 1000;
	animal_y = 500;
}
if (animal == 3){
	animal_d = 1;
	animal_x = 300;
	animal_y = 450;
}*/