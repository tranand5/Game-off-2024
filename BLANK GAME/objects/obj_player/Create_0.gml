move_speed = 4;
jump_speed = 16;
grav = 1;
x_direction = 0;
x_speed = 0;
y_speed = 0;

all_ground_tiles = array_create(3, obj_ground);
array_set(all_ground_tiles, 1, obj_ground_up_left);
array_set(all_ground_tiles, 2, obj_ground_up_right);