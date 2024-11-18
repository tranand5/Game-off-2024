//movement init
move_speed = 5;
dash_speed = 15;
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

// Pause values
//is_paused = false;
//paused_id = -1;