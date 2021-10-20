/// @description Create appropraite room objects
if(room_get_name(room) == "Room_Menu"){
	instance_create_layer(0, 0, "Instances", Obj_Camera);
	instance_create_layer(0, 0, "Instances", Obj_Menu);
} else if(room_get_name(room) == "Room1"){
	instance_create_layer(0, 0, "Instances", Obj_Camera);
	instance_create_layer(0, 0, "Instances", Obj_Player);
	instance_create_layer(0, 0, "Instances", Obj_Render);
}
