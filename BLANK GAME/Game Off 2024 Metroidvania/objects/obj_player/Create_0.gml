//gmwRegisterObject(id, global.DEFAULT_GROUP, "obj_player");

//movement init
move_speed = 6;
dash_speed = 20;
jump_speed = 22;
grav = 1;
x_direction = 0;
x_speed = 0;
y_speed = 0;
can_dash = true;
state = "flat";

//create array holding all ground tile types
all_ground_tiles = array_create(3, obj_ground);
array_set(all_ground_tiles, 1, obj_ground_up_left);
array_set(all_ground_tiles, 2, obj_ground_up_right);

// Movement values
player_concrete = choose(footstep_1_con,footstep_2_con,footstep_3_con, footstep_4_con);
player_grass = choose(footstep_1_grass, footstep_2_grass, footstep_3_grass, footsteps_4_grass);
player_wood = choose(footsteps_1_wood, footsteps_2_wood, footsteps_3_wood, footsteps_4_wood);
player_dash = choose(dash_1, dash_2, dash_3, dash_4);
player_jump = choose(jump_1, jump_2, jump_3, jump_4);

// Boolean values
is_moving = false;

// Pause values
//is_paused = false;
//paused_id = -1;

//	Spawn Position Switcher
//position based on last room entered from
switch (global.last_room)
{
	case "start":
		//
	break;
	
	case "front lawn":
		x = 230;
		y = 1560;
	break;
		
	case "first floor":
		if (room == rm_front_lawn)
		{
			 x = 4737;
			 y = 540;
		}
		if (room == rm_garden)
		{
			x = 700;
			y = 2242;
		}
		if (room == rm_second_floor)
		{
			x = 1055;
			y = 1600;
		}
	break;
	
	case "garden":
		x = 4768;
		y = 1595;
	break;
	
	case "second floor":
		if (room == rm_attic)
		{
			x = 1063;
			y = 1587;
		}
		if (room == rm_first_floor)
		{
			x = 2274;
			y = 184;
		}
	break;
	
	case "attic":
		x = 2293;
		y = 194;
	break;
	
	default:
		//
	break;
}