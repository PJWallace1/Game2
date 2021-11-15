/// @description Insert description here
// You can write your code in this editor
if(activated && keyboard_check_pressed(vk_escape)){
	activated = false;
	global.paused = false;
	for(var i = 0; i < curNumFish; i++)
	{
		with(fishInSpot[i])
		{
			activated = false;
			visible = false;
		}
	}
} else if(activated){
	for(var i = 0; i < curNumFish; i++)
	{
		with(fishInSpot[i])
		{
			if(x < camera_get_view_x(view_camera[0]) + other.fish_margin ||
			   y < camera_get_view_y(view_camera[0]) + other.fish_margin ||
			   x > camera_get_view_x(view_camera[0]) + CAMERA_W - other.fish_margin ||
			   y > camera_get_view_y(view_camera[0]) + CAMERA_H - other.fish_margin)
			{
				action = 4;
			}
		}
	}
}