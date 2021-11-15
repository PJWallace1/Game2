/// @description Draw Player and Bars

if (room == Room_Forest || room == Room_Game){
	draw_sprite(Spr_Center, 0, CAMERA_W * 0.5, CAMERA_H * 0.5);
}
if (room == Room_Arctic || room == Room_Tropical){
	draw_sprite(Spr_Center, 1, CAMERA_W * 0.5, CAMERA_H * 0.5);
}

//draw health bar
draw_sprite(Spr_HealthBar_bg, 0, CAMERA_W * .02, CAMERA_H * .02);
draw_sprite_stretched(Spr_HealthBar, 0, CAMERA_W * .02, CAMERA_H * .02, (Obj_Player.h/Obj_Player.h_max)* Obj_Player.bar_width, Obj_Player.bar_height);
draw_sprite(Spr_HealthBar_Border, 0, CAMERA_W * .02, CAMERA_H * .02);

//draw water bar
draw_sprite(Spr_HealthBar_bg, 0, CAMERA_W * .02, CAMERA_H * .09);
draw_sprite_stretched(Spr_WaterLevel, 0, CAMERA_W * .02, CAMERA_H * .09, (Obj_Player.wl/Obj_Player.wl_max)* Obj_Player.bar_width, Obj_Player.bar_height);
draw_sprite(Spr_HealthBar_Border, 0, CAMERA_W * .02, CAMERA_H * .09);

//draw temp bar
draw_sprite(Spr_HealthBar_bg, 0, CAMERA_W * .02, CAMERA_H * .16);
draw_sprite_stretched(Spr_Temp, 0, CAMERA_W * .02, CAMERA_H * .16, (Obj_Player.temp/Obj_Player.temp_max)* Obj_Player.bar_width, Obj_Player.bar_height);
draw_sprite(Spr_HealthBar_Border, 0, CAMERA_W * .02, CAMERA_H * .16);