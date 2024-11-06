// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StateCheck()
{
	state = "init";
	if (place_meeting(x, y + 2, obj_ground))
	{
		state = "flat";
	}
	if (place_meeting(x, y + 2, obj_bkgd_slope_up_right))
	{
		state = "up right";
	}
	if (place_meeting(x, y + 2, obj_bkgd_slope_up_left))
	{
		state = "up left";
	}
	if (CheckForAnyGroundTile(x, y + 5) == false)
	{
		state = "airborn";
	}
	if (place_meeting(x, y, obj_state_flat_trigger))
	{
		state = "flat";
	}
	return state;
}