/// @description Insert description here
// You can write your code in this editor

//draw animals

if (kill == false){
	//draw_sprite_ext(Spr_Crab_DR, (animal_i/ 1), animal_x, animal_y, animal_d, 1, 0, c_white, 1);
	
	//sprite index
	animal_i += .25;
	if (animal_i == 3){
		animal_i = 0;
	}
	
	//animal movement
	
	var tileData = global.Collision_Grid[# floor(animal_x + animal_p), floor(animal_y)];
	if(tileData == 1){
		//if (animal_p < 500){
			//animal_p += 0;
		//}
		/*else{
			animal_x--;
			animal_p++;
			if (animal_p == 1000){
				animal_p = 0;
			}
		}*/
		//animal_p = -1;
	}
	else{
			//animal_x--;
		//animal_p *= -1;
			/*if (animal_p == 1000){
				animal_p = 0;
			}*/
		animal_p *= -1;
	}
	
	
	animal_x += animal_p;
}


if (animal_x > ROOM_W || animal_x < 0 || animal_y > ROOM_H || animal_y < 0){
	kill = true;
}