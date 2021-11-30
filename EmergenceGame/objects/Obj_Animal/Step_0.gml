/// @description Insert description here
// You can write your code in this editor

//draw animals
//draw_sprite_ext(Spr_Crab_DR, (animal_i/ 1), animal_x, animal_y, animal_d, 1, 0, c_white, 1);


//old animal stuff

if (kill == false){
	//draw_sprite_ext(Spr_Crab_DR, (animal_i/ 1), animal_x, animal_y, animal_d, 1, 0, c_white, 1);
	
	//sprite index
	animal_i += .25;
	if (animal_i == 3){
		animal_i = 0;
	}
	
	x += 1;
	animal_x = x;
	
	
	screenX = TileToScreenX(x, MAP_H);
	screenY = TileToScreenY(animal_x, animal_y);
	
	/*screenX = ScreenToTileX(animal_x, animal_y);
	screenY = ScreenToTileY(animal_x, animal_y);*/
	
	if (x > screenX){
		x = 300;
	}
	/*if (screenY > MAP_H){
		x = 500;
	}*/
	
	
	
}