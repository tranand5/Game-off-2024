if (y_speed > 0)
{
	y_speed = -jump_speed;
	other.is_alive = false;
}
else
{
	room_restart();
}