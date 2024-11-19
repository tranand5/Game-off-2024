/// @description Insert description here
// You can write your code in this editor
var _transition = instance_create_layer(0, 0, "Instances", obj_transition_linear_blur);

//	Room Switcher
//main to enemy test room
if (room == rm_front_lawn)
{
	room_goto(rm_first_floor);
}
//enemy test room to __
if (room == rm_enemy_and_pickups)
{
	//room_goto();
}