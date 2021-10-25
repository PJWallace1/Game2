/// @description Insert description here
// You can write your code in this editor

//Check if game transition
//left click on water tile to go to fishing
if (mouse_check_button(mb_left)){
	SlideTransition(TRANS_MODE.GOTO, Room_Fishing);
}