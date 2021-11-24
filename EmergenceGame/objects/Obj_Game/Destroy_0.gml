/// @description Insert description here
// You can write your code in this editor

//Deallocate memory
var numGrids = 6;
for(var i = 0; i < numGrids; i++){
	ds_grid_destroy(global.gridNames[i]);
}
ds_map_destroy(global.fishingDataList);