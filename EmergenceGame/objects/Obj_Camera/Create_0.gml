/// @description Create the Camera

view_enabled = true;
view_visible[0] = true;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = CAMERA_W;
view_hport[0] = CAMERA_H;

view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0],
									0, noone, -1, -1, 400, 250);

var _dwidth = display_get_width();
var _dheight = display_get_height();
var _xpos = (_dwidth / 2) - CAMERA_W / 2;
var _ypos = (_dheight / 2) - CAMERA_H / 2;
window_set_rectangle(_xpos, _ypos, CAMERA_W, CAMERA_H);

surface_resize(application_surface, CAMERA_W, CAMERA_H);


/// test github 