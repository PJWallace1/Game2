/// @description Initialize Fishing Interactable

enum TYPE {
	TROPICAL_OCEAN,
	TROPICAL_RIVER,
	FOREST_LAKE,
	FOREST_RIVER,
	ARCTIC_LAKE,
	ARCTIC_STREAM
}


//x, y hold grid position
maxNumFish = irandom(3) + 3;
curNumFish = maxNumFish;
spawnChartID = ChooseWeightedRandomFishingChartID();
fishInSpot[maxNumFish] = {};
for(var i = 0; i < maxNumFish; i++){
	fishInSpot[i] = instance_create_layer(0, 0, "Instances", Obj_Fish);
	with(fishInSpot[i]){
		x = irandom(CAMERA_W);
		y = irandom(CAMERA_H);
		direction = irandom(364);
		image_index = ChooseWeightedRandomFishSize(other.spawnChartID);
	}
}

bobID = instance_create_layer(0, 0, "Instances", Obj_Bob);







