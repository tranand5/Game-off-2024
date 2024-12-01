switch (room)
{
	case rm_front_lawn:
		audio_play_sound(snd_wind, 10, false);
	break;
	
	case rm_first_floor:
		audio_play_sound(snd_music, 10, false);
	break;
	
	case rm_second_floor:
		audio_play_sound(snd_music, 10, false);
	break;
	
	case rm_attic:
		audio_play_sound(snd_music, 10, false);
	break;
	
	case rm_garden:
		audio_play_sound(snd_wind, 10, false);
	break;
	
	case rm_basement:
		audio_play_sound(snd_wind, 10, false);
	break;
	
	default:
		//
	break;
}