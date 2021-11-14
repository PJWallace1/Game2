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

gridPos = {};
maxNumFish = irandom(3) + 3; //3 to 6
curNumFish = 0;
spawnChartID = ChooseWeightedRandomFishingChartID();
fishInSpot[maxNumFish] = {};
for(var i = 0; i < maxNumFish; i++){
	fishInSpot[i] = instance_create_layer(0, 0, "Fish", Obj_Fish);
	with(fishInSpot[i]){
		fishSize = ChooseWeightedRandomFishSize(other.spawnChartID);
	}
	curNumFish++;
}

//GUI Variables
gui_margin = 40;
bait_menu = instance_create_layer(CAMERA_W - gui_margin,
								  gui_margin, "Fish", Obj_BaitMenu);
bait_menu_open = false;

