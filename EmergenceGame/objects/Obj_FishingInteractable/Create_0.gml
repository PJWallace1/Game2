/// @description Initialize Fishing Interactable

enum TYPE {
	TROPICAL_OCEAN,
	TROPICAL_RIVER,
	FOREST_LAKE,
	FOREST_RIVER,
	ARCTIC_LAKE,
	ARCTIC_STREAM
}

//Determines whether a specific fishing spot should display its GUI
activated = false;

//GUI Variables
gui_margin = 40;
fish_margin = gui_margin + sprite_get_height(Spr_Fish);
show_debug_message(sprite_get_height(Spr_Fish));
corner_rad = 40;
cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]);

gridPos = {};
maxNumFish = irandom(3) + 3; //3 to 6
curNumFish = 0;
spawnChartID = ChooseWeightedRandomFishingChartID();
fishInSpot[maxNumFish] = {};
for(var i = 0; i < maxNumFish; i++){
	fishInSpot[i] = instance_create_layer(0, 0, "UpperLayer", Obj_Fish);
	with(fishInSpot[i]){
		image_index = ChooseWeightedRandomFishSize(other.spawnChartID);
		x = other.cam_x + irandom(CAMERA_W - (2 * other.fish_margin)) + other.fish_margin;
		y = other.cam_y + irandom(CAMERA_H - (2 * other.fish_margin)) + other.fish_margin;
	}
	curNumFish++;
}




