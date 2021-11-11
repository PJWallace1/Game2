/// @description Draw Player

if (room == Room_Forest || room == Room_Game){
	draw_sprite(Spr_Center, 0, CAMERA_W * 0.5, CAMERA_H * 0.5);
}
if (room == Room_Arctic || room == Room_Tropical){
	draw_sprite(Spr_Center, 1, CAMERA_W * 0.5, CAMERA_H * 0.5);
}

