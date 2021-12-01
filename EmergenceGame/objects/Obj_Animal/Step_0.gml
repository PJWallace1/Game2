/// @description Insert description here
// You can write your code in this editor

//draw animals
//draw_sprite_ext(Spr_Crab_DR, (animal_i/ 1), animal_x, animal_y, animal_d, 1, 0, c_white, 1);


//old animal stuff

if (kill == false){
	
	//sprite index
	animal_i += .25;
	if (animal_i == 3){
		animal_i = 0;
	}
	
	x += 1;
	animal_x = x;
	
	
	animal_x = ScreenToTileX(x, y);
	animal_y = ScreenToTileY(x, y);
	
	if (animal_x > MAP_W || animal_y > MAP_H || animal_x < 0 || animal_y < 0){
		temp_y = irandom_range(0, MAP_H);
		x = TileToScreenX(0, temp_y);
		y = TileToScreenY(0, temp_y);
	}
	/*if (screenY > MAP_H){
		x = 500;
	}*/
	
	
	
}