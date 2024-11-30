//change sprite based on move direction
if (move_speed > 0)
{
	image_xscale = 1;
	hitbox.x = self.x + 40;
}
if (move_speed < 0)
{
	image_xscale = -1;
	hitbox.x = self.x - 40;
}
//change direction if about to fall off a platform
if (!CheckForAnyGroundTile(self.x + move_speed, self.y + 2))
{
	move_speed *= -1;
}
//move enemy
x += move_speed;

//destroy enemy
if (is_alive = false)
{
	instance_destroy(hitbox);
	instance_destroy(self);
	audio_play_sound(enemy_death, 10, 0);
}