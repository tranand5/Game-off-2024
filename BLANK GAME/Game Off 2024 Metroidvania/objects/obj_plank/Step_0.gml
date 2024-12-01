if (global.player_weapon == "plank")
{
	if (obj_player.x_speed > 0)
	{
		x = obj_player.x + 40;
		y = obj_player.y;
	}
	if (obj_player.x_speed < 0)
	{
		x = obj_player.x - 40;
		y = obj_player.y;
	}
}

//delete self
if (global.player_weapon = "crowbar")
{
	instance_destroy(self);
}