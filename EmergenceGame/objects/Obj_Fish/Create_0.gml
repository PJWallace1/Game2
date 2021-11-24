/// @description Insert description here
// You can write your code in this editor

enum SIZE{
	SMALL,
	MEDIUM,
	LARGE
}
fish_margin = 128;

activated = false;
visible = false;
direction = irandom(364); //0 to 364 degrees
image_speed = 0;
action = 0;

//Control length of action
goal = 100;
counter = 0;

