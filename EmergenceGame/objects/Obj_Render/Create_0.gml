/// @description Set variables and draw animals
// You can write your code in this editor

i = 0; //sprite index iterator
d = 1; //image_xscale (direction) indicator


//draw animal amounts
animal_cnt = 0;
if (global.room_id == 0){
	animal_cnt = 7;
}
else if (global.room_id == 1){
	animal_cnt = 5;
}
else{
	animal_cnt = 3;
}

for (var b = 0; b < animal_cnt; b++){
	rand_x = irandom_range(0, MAP_W);
	rand_y = irandom_range(0, MAP_H);
	animal_x = TileToScreenX(rand_x, rand_y);
	animal_y = TileToScreenY(rand_x, rand_y);
	instance_create_layer(animal_x, animal_y, "Animals", Obj_Animal);
}