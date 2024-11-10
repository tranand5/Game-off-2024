/// @description Insert description here
// You can write your code in this editor
if (follow != noone)
{
	xFollow = follow.x;
	yFollow = follow.y;
}
x += (xFollow - x)/25;
y += (yFollow - y)/25;

camera_set_view_pos(view_camera[0], x-(cam_width * 0.5), y-cam_height*0.5);