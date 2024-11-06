// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckForAnyGroundTile(x_check, y_check)
{
	is_ground = false;
	if (place_meeting(x_check, y_check, obj_ground))
	{
		is_ground = true;
	}
	if (place_meeting(x_check, y_check, obj_ground_up_right))
	{
		is_ground = true;
	}
	if (place_meeting(x_check, y_check, obj_ground_up_left))
	{
		is_ground = true;
	}
	return is_ground;
}