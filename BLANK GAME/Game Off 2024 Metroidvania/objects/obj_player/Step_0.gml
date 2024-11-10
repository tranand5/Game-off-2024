//	Get Player Directional Input
if (global.controls = "wasd")
{
	x_direction = keyboard_check(ord("D")) - keyboard_check(ord("A"));
}
if (global.controls = "arrows")
{
	x_direction = keyboard_check(vk_right) - keyboard_check(vk_left);
}
//	Calculate Speed
//x direction
x_speed = x_direction * move_speed;
//y direction
if (CheckForAnyGroundTile(x, y + 2) == true)
{
	y_speed = 0;
	if (!CheckForAnyGroundTile(x + x_speed, y + 2) && CheckForAnyGroundTile(x + x_speed, y + 10, obj_ground))
	{
		y_speed = abs(x_speed);
		x_speed = 0;
	}
	if (keyboard_check_pressed(vk_space))
	{
		y_speed = -jump_speed;
	}
}
else
{
	if (y_speed < 10)
	{
		y_speed += 1;
	}
}

//	Sprite Switcher and Movement Modifier
state = StateCheck();
switch (state)
{
	case "flat":
		sprite_index = spr_player;
		move_speed = 7;
	break;
	
	case "up left":
		sprite_index = spr_player_up_left;
		if (x_direction > 0)
		{
			move_speed = 8.5;
		}
		if (x_direction < 0)
		{
			move_speed = 6;
		}
	break;
	
	case "up right":
		sprite_index = spr_player_up_right;
		if (x_direction > 0)
		{
			move_speed = 6;
		}
		if (x_direction < 0)
		{
			move_speed = 8.5;
		}
	break;
	
	case "airborn":
		sprite_index = spr_player_airborn;
	break;
	
	default:
		//
	break;
}

//	Move Player
move_and_collide(x_speed, y_speed, all_ground_tiles);

//	Fix Player Glitching into Ground
if (place_meeting(x, y, obj_ground))
{
	y -= 1;
}
//	flip sprite based on move direction
//if (move_x != 0) image_xscale = sign(move_x);