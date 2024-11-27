if (global.has_key = true)
{
	audio_play_sound(door, 10, 0);
	obj_shed_door.image_index = 1;
	instance_create_layer(x, y, "Instances", obj_double_jump);
	global.has_key = false;
}