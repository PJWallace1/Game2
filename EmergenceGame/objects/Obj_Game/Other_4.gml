/// @description Create appropriate room objects
//Main Menu
if(room_get_name(room) == "Room_Menu"){
	instance_create_layer(0, 0, "Instances", Obj_Camera);
	instance_create_layer(0, 0, "Instances", Obj_MainMenu);
} 
//Main Game
else if(room_get_name(room) == "Room_Game"){
	LoadSaveFile();
	instance_create_layer(0, 0, "Instances", Obj_Camera);
	instance_create_layer(0, 0, "Instances", Obj_Render);
	global.paused = false;
}
//Select Hat
else if (room == Room_ChooseHat){
	instance_create_layer(0, 0, "Instances", Obj_ChooseHat);
}
//Choose Save
else if(room == Room_ChooseSave){
	instance_create_layer(0, 0, "Instances", Obj_ChooseSave);
}
//Tropical room
else if (room == Room_Tropical){
	instance_create_layer(Obj_Player.x, Obj_Player.y, "Instances", Obj_Animals);
}
//Fishing
else if(room == Room_Fishing){
	//Pass in grid cordinates as position
	instance_create_layer(player.interactX, player.interactY, "Instances", Obj_Fishing);
}
