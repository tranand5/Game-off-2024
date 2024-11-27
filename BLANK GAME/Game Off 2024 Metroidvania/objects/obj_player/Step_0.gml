//	Get Player Directional Input

//gmwSet2DListenerPosition(x, y, 0, 0);
//gmwSet2DPosition(id, x, y, 0, 0);

if (global.controls = "wasd")
{
	x_direction = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	//gmwPostEvent(global.Player_movement, id);
}
if (global.controls = "arrows")
{
	x_direction = keyboard_check(vk_right) - keyboard_check(vk_left);
	//gmwPostEvent(global.player_movement, id);
}
//	Calculate Speed
//x direction
x_speed = x_direction * move_speed;
//y direction
if (CheckForAnyGroundTile(x, y + 2) == true)
{
	//if theres a ground tile below the player, set y speed to 0
	y_speed = 0;
	if (!CheckForAnyGroundTile(x + x_speed, y + 2) && CheckForAnyGroundTile(x + x_speed, y + 10))
	{
		y_speed = abs(x_speed);
		x_speed = 0;
	}
	//crate collisions
	if ((position_meeting(x + x_speed, y, obj_crate)) && (global.player_weapon = "none"))
	{
		x_speed = 0;
	}
	if ((position_meeting(x + x_speed, y, obj_crate)) && (can_dash = true))
	{
		x_speed = 0;
	}
	if (keyboard_check_pressed(vk_space))
	{
		y_speed = -jump_speed;
		audio_play_sound(player_jump,10,0);
		//gmwPostEvent(global.player_jump, id);
	}
}
else
{
	if ((global.can_double_jump = true) && keyboard_check_pressed(vk_space))
	{
		y_speed = -jump_speed;
		alarm[1] = room_speed;
		global.can_double_jump = false;
	}
	if (y_speed < 10)
	{
		y_speed += 1;
	}
}

//	State Machine
if (state != "dash")
{
	state = StateCheck();
}
//player inputs dash
if ((can_dash == true) && (keyboard_check_pressed(vk_shift)))
{
	last_state = state;
	state = "dash";
	alarm[0] = room_speed * 0.25;
	can_dash = false;
	audio_play_sound(player_dash, 10, 0);
}
switch (state)
{
	case "flat":
		//sprite_index = spr_player_idle;
		move_speed = 5;
	break;
	
	case "up left":
		//sprite_index = spr_player_up_left;
		if (x_direction > 0)
		{
			move_speed = 7;
		}
		if (x_direction < 0)
		{
			move_speed = 4;
		}
	break;
	
	case "up right":
		//sprite_index = spr_player_up_right;
		if (x_direction > 0)
		{
			move_speed = 4;
		}
		if (x_direction < 0)
		{
			move_speed = 7;
		}
	break;
	
	case "airborn":
		//sprite_index = spr_player_airborn;
		gmwPostEvent(global.player_jump,id);
	break;
	
	case "dash":
		move_speed = dash_speed;
		image_alpha = 0;
	break;
	
	default:
		//
	break;
}

if (can_dash == true)
{
	//
}

//	Move Player
move_and_collide(x_speed, y_speed, all_ground_tiles);

//	Fix Player Glitching into Ground
if (place_meeting(x, y, obj_ground))
{
	y -= 2;
}

//	Flip Sprite
if (x_speed > 0)
{
	sprite_index = spr_player_walk;
	image_xscale = 1;
}
if (x_speed < 0)
{
	sprite_index = spr_player_walk;
	image_xscale = -1;
}
if (x_speed = 0)
{
	sprite_index = spr_player_idle;
}

//	Weapon Switching System
//equip plank
if (!instance_exists(obj_plank) && (global.player_weapon == "plank"))
{
	instance_create_layer(x, y, "Instances", obj_plank);
}
//crate breaking
if ((position_meeting(x + x_speed, y, obj_crate)) && (can_dash == false))
{
	if (global.player_weapon = "plank")
	{
		instance_destroy(obj_crate);
	}
}

// Pause menu system
//if (keyboard_check_pressed(vk_escape))
//{
//	is_paused = !is_paused;
//	if is_paused == false
//	{
//		instance_activate_all();
//		surface_free(paused_id);
//			paused_id = -1;
//	}
//	if is_paused == true
//	{
//		alarm[0]++;
//	}
//}
	