/// @description Create appropriate room objects
if(room_get_name(room) == "Room_Menu"){
	instance_create_layer(0, 0, "Instances", Obj_Camera);
	instance_create_layer(0, 0, "Instances", Obj_MainMenu);
} else if(room_get_name(room) == "Room_Game"){
	LoadSaveFile();
	instance_create_layer(0, 0, "Instances", Obj_Camera);
	instance_create_layer(0, 0, "Instances", Obj_Render);
	instance_create_layer(0, 0, "Instances", Obj_Interact);
	global.paused = false;
}
else if(room == Room_ChooseSave){
	instance_create_layer(0, 0, "Instances", Obj_ChooseSave);
}
