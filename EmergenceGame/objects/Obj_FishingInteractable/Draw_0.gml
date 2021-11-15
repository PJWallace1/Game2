/// @description Insert description here
// You can write your code in this editor
if(activated){
	cam_x = camera_get_view_x(view_camera[0]);
	cam_y = camera_get_view_y(view_camera[0]);
	//Draw main rectangle
	draw_set_color($f59b42);
	draw_roundrect_ext(cam_x + gui_margin, cam_y + gui_margin, cam_x + CAMERA_W - gui_margin,
						  cam_y  +CAMERA_H - gui_margin, corner_rad, corner_rad, false);
	draw_set_color(c_black);
	
	draw_rectangle(camera_get_view_x(view_camera[0]) + fish_margin,
			   camera_get_view_y(view_camera[0]) + fish_margin,
			   camera_get_view_x(view_camera[0]) + CAMERA_W - fish_margin,
			   camera_get_view_y(view_camera[0]) + CAMERA_H - fish_margin, true);
	draw_line(cam_x+gui_margin, cam_y + gui_margin, cam_x + gui_margin + 256, cam_y + gui_margin);
}