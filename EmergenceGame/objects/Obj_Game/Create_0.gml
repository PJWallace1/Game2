/// @description Setup Game

//The save file which the player uses
global.chosen_save = "invalid";
global.playerX = 30;
global.playerY = 16;
//The player object instance
player = instance_create_layer(0, 0, "Instances", Obj_Player);

//Determines whether play is paused
global.paused = true;


//Create Transition object
instance_create_layer(0, 0, "Instances", Obj_Transition);

//Grid data structures that holds info about game world
global.Ground_Grid = ds_grid_create(MAP_W, MAP_H);
global.Background_Grid = ds_grid_create(MAP_W, MAP_H);
global.Interactable_Grid = ds_grid_create(MAP_W, MAP_H);
global.Foreground_Grid = ds_grid_create(MAP_W, MAP_H);
global.Collision_Grid = ds_grid_create(MAP_W, MAP_H);
global.Temperature_Grid = ds_grid_create(MAP_W, MAP_H);

//A list of all the grids in order of depth
global.gridNames = ["Temperature_Grid", "Collision_Grid", "Foreground_Grid", 
					"Interactable_Grid","Background_Grid", "Ground_Grid"]
