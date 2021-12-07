/// @description Insert description here
// You can write your code in this editor
draw_sprite(Spr_HealthBar_bg, 0, CAMERA_W * .02, CAMERA_H * .02);
draw_sprite_stretched(Spr_HealthBar, 0, CAMERA_W * .02, CAMERA_H * .02, (Obj_Player.h/Obj_Player.h_max)* Obj_Player.bar_width, Obj_Player.bar_height);
draw_sprite(Spr_HealthBar_Border, 0, CAMERA_W * .02, CAMERA_H * .02);