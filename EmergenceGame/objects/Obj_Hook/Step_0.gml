/// @description Insert description here
// You can write your code in this editor

//connect rope to hook
instance_destroy(Obj_Rope);
with (instance_create_layer(x-15, y-40, "Instances", Obj_Rope)){
	image_yscale -= y;
}

//move hook
if (keyboard_check(ord("A"))){
	x -= 5;
}
if (keyboard_check(ord("D"))){
	x += 5;
}
if (keyboard_check(ord("W"))){
	if (y > 55){
		y -= 5;
	}
}
if (keyboard_check(ord("S"))){
	y += 5;
}

if (y > room_height){
	y = 100;
}


move_wrap(true, true, sprite_width/2); 

