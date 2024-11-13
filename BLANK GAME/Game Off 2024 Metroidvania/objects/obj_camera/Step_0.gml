if (follow != noone)
{
	xFollow = follow.x;
	yFollow = follow.y - 50;
}
x += (xFollow - x)/25;
y += (yFollow - y)/25;

camera_set_view_pos(view_camera[0], x-(cam_width * 0.5), y-cam_height*0.5);