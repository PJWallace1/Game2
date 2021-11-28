/// @description Setup player

//Coordinates of player within map
//The map tile in which the player resides
global.playerX = 30; //horizontal tile 
global.playerY = 16; //vertical tile

pixelsToMove = 3;

hunt = false;

//Health bar data
//health count
h = 50;
h_max = h;

bar_width = 200;
bar_height = 24;

//water level bar
wl = 50;
wl_max = wl;

//temp
temp = 50;
temp_max = temp;

var vsp = 0;
var hsp = 0;

//Interact Variables
//Whether an interactable is nearby
interact = false
//The cell location of the interactable
interactX = -1;
interactY = -1;
//The progress towards starting the interaction
progress = 0;
//The required progress to start the interaction
requiredProgress = 30;

timer = 500;



