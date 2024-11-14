if (follow != noone)
{
	x = follow.x;
	y = follow.y - 50;
}

camera_set_view_pos(view_camera[0], x-(cam_width * 0.5), y-cam_height*0.5);