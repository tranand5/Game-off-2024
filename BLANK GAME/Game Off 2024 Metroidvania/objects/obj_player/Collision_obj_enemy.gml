if (y_speed > 0)
{
	y_speed = -jump_speed;
	instance_destroy(other);
}