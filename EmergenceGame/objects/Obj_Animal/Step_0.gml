/// @description Draw/Move Animal
// You can write your code in this editor

//draw animals


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
} else {
	draw_line_width(global.playerX, global.playerY, x, y, 4);
}