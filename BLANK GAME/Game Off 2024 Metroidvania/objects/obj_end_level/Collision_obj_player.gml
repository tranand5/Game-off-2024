/// @description Insert description here
// You can write your code in this editor
//var _transition = instance_create_layer(0, 0, "Instances", obj_transition_linear_blur);
audio_play_sound(transition, 10, 0);
audio_stop_sound(global.player_concrete);
switch (room)
{
	case rm_front_lawn:
		global.last_room = "front lawn";
	break;
	
	case rm_first_floor:
		global.last_room = "first floor"
	break;
	
	case rm_garden:
		global.last_room = "garden";
	break;
	
	case rm_second_floor:
		global.last_room = "second floor";
	break;
	
	case rm_attic:
		global.last_room = "attic";
	break;
	
	default:
		//
	break;
}
room_goto(where_to);