if (y_speed > 0)
{
	y_speed = -jump_speed;
	other.is_alive = false;
}
else
{
	audio_play_sound(choose(hitHurt_1,hitHurt_2, hitHurt_3, hitHurt_4), 10, 0);
}