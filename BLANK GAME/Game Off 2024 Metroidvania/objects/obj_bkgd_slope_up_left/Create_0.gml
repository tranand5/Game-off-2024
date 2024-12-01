image_speed = 0;
//	Sprite Switcher
// Index 0 = Indside
//		 1 = Front Lawn
switch (room)
{
	case rm_front_lawn:
		image_index = 0;
	break;
	
	case rm_garden:
		image_index = 0;
	break;
	
	case rm_first_floor:
		image_index = 1;
	break;
	
	case rm_second_floor:
		image_index = 1;
	break;
	
	case rm_attic:
		image_index = 1;
	break;
	
	default:
		//
	break;
}