/// @description Insert description here
// You can write your code in this editor

switch(stage){
	case 0:
		global.room_id = 1; //forest
		CreateMap(Room_Forest);
		room_goto(Room_Game); //Triggers load save
		break;
	case 1:
		global.room_id = 2; //arctic
		CreateMap(Room_Arctic);
		room_goto(Room_Game); //Triggers load save
		break;
	case 2:
		room_goto(Room_Scores);
		global.paused = true;
		break;
}
stage++;
if(stage <= 2){
	alarm[0] = global.gameTime;
}