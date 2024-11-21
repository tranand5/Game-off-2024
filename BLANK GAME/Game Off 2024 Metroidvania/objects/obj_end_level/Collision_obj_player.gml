/// @description Insert description here
// You can write your code in this editor
var _transition = instance_create_layer(0, 0, "Instances", obj_transition_linear_blur);

//	Room Switcher
//front lawn to mansion 1st floor
if (room == rm_front_lawn)
{
	room_goto(rm_first_floor);
}
//mansion 1st floor to 2nd floor
if (room == rm_first_floor)
{
	room_goto(rm_second_floor);
}
//mansion 2nd floor to attic
if (room == rm_second_floor)
{
	room_goto(rm_attic);
}
//attic to 2nd floor
if (room == rm_attic)
{
	room_goto(rm_second_floor);
}