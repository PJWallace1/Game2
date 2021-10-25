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

//Map data structure that holds info about world map
global.theMap = ds_grid_create(MAP_W, MAP_H);

//Map data structure that holds info about world map
global.collisionMap = ds_grid_create(MAP_W, MAP_H);

//Map data structure that holds info about world map
global.aboveGroundMap = ds_grid_create(MAP_W, MAP_H);
