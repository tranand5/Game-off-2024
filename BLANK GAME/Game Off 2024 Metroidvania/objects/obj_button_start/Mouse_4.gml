counter += 1;
if (counter == 1)
{
	audio_play_sound(start_menu, 10, false);
}
if (counter == 2)
{
	audio_stop_all();
	room_goto(rm_front_lawn);
}