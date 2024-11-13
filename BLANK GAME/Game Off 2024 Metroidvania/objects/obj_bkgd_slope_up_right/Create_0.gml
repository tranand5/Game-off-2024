image_speed = 0;
//	Sprite Switcher
// Index 0 = Indside
//		 1 = Front Lawn
switch (room)
{
	case rm_front_lawn:
		image_index = 1;
	break;
	
	default:
		image_index = 0;
	break;
}