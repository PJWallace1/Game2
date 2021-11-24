/// @description Initialize Fishing Interactable

enum TYPE {
	TROPICAL_OCEAN,
	TROPICAL_RIVER,
	FOREST_LAKE,
	FOREST_RIVER,
	ARCTIC_LAKE,
	ARCTIC_STREAM
}

gridPos = {};
maxNumFish = irandom(3) + 3; //3 to 6
curNumFish = 0;
spawnChartID = ChooseWeightedRandomFishingChartID();
fishInSpot[maxNumFish] = {};
for(var i = 0; i < maxNumFish; i++){
	fishInSpot[i] = instance_create_layer(0, 0, "Instances", Obj_Fish);
	with(fishInSpot[i]){
		image_index = ChooseWeightedRandomFishSize(other.spawnChartID);
		x = irandom(CAMERA_W); //within the screen
		y = irandom(CAMERA_H); //within the screen
	}
	curNumFish++;
}






