/// @description Insert description here
// You can write your code in this editor
var _transition = instance_create_layer(0, 0, "Exit", obj_transition_linear_blur);

//	Room Switcher
//main to enemy test room
if (room == rm_main)
{
	room_goto(rm_enemy_and_pickups);
}
//enemy test room to __
if (room == rm_enemy_and_pickups)
{
	//room_goto();
}