image_speed = 0;
breakable = false;
//	Sprite Switcher
// Index 0 = Indside
//		 1 = Front Lawn
switch (room)
{
	case rm_front_lawn:
		image_index = 1;
	break;
	
	case rm_garden:
		image_index = 1;
	break;
	
	case rm_first_floor:
		image_index = 2;
	break;
	
	default:
		//
	break;
}