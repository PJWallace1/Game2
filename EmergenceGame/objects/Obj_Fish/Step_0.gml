/// @description Control the fishes actions
if(activated){
	switch(action){
		case 0:
			action = irandom(2) + 1; //1 to 3
			speed = 1.25- 0.25 * image_index;
		case 1:
			counter++;
			image_angle = point_direction(0, 0, hspeed, vspeed) - 90;
			if(counter >= goal){
				action = 0;
				counter = 0;
			}
			break;
		case 2:
			direction -= 1 - 0.25 * image_index;
			image_angle = point_direction(0, 0, hspeed, vspeed) - 90;
			counter++;
			if(counter >= goal){
				action = 0;
				counter = 0;
			}
			break;
		case 3:
			direction += 1 - 0.25 * image_index;
			image_angle = point_direction(0, 0, hspeed, vspeed) - 90;
			counter++;
			if(counter >= goal){
				action = 0;
				counter = 0;
			}
			break;
		case 5:
			break;
	}
	//Keep fish within range
	if(x < -1 * fish_margin) x += CAMERA_W;
	if(x > CAMERA_W + fish_margin) x -= CAMERA_W;
	if(y < -1 * fish_margin) y += CAMERA_H;
	if(y > CAMERA_H + fish_margin) y -= CAMERA_H;
}

