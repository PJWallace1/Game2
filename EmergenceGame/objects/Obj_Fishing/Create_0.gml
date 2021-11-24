/// @description Initialize Fishing Interactable

enum TYPE {
	TROPICAL_OCEAN,
	TROPICAL_RIVER,
	FOREST_LAKE,
	FOREST_RIVER,
	ARCTIC_LAKE,
	ARCTIC_STREAM
}


var file = file_text_open_read(global.chosen_save);
while(file_text_readln(file) != "Fishing Data\r\n"){}; //Navigate to beginning of fishing data
var numFishingSpots = file_text_read_real(file);
file_text_readln(file);
//Navigate to appropriate fishing data in file
for(var i = 0; i < numFishingSpots; i++){
	var x_ = file_text_read_real(file), y_ = file_text_read_real(file);
	if(x_ == x && y_ == y){
		i = numFishingSpots; //Stop Iteration
	} else {
		file_text_read_real(file);
		var curNumFish_ = file_text_read_real(file);
		file_text_readln(file);
		for(var j = 0; j < curNumFish_; j++){
			file_text_readln(file);
		}
	}
}

//x, y hold grid position
maxNumFish = file_text_read_real(file);
curNumFish = file_text_read_real(file);
spawnChartID = file_text_read_real(file);
fishInSpot[maxNumFish] = {};
for(var i = 0; i < curNumFish; i++){
	file_text_readln(file);
	fishInSpot[i] = instance_create_layer(0, 0, "Instances", Obj_Fish);
	with(fishInSpot[i]){
		x = file_text_read_real(file);
		y = file_text_read_real(file);
		image_index = file_text_read_real(file);
		direction = file_text_read_real(file);
	}
}

file_text_close(file);






