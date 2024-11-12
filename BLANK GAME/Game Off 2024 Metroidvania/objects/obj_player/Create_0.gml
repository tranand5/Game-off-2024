//variable init
image_speed = 0;
//movement init
move_speed = 6;
dash_speed = 20;
jump_speed = 25;
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