/// @description Insert description here
// You can write your code in this editor

//random fish size
ratio = choose(1, 2, 3);

image_xscale *= ratio;
image_yscale *= ratio;

direction = choose(0, 180);

if(direction == 0){
	image_xscale *= -1;
}

hsp = random_range(1, 15);