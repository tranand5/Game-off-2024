//	Init Variables
move_speed = random_range(1, 4);
hitbox = instance_create_layer(x, y, "Managers", obj_enemy_1st_floor_hitbox);
hitbox.x = self.x + 40;
hitbox.y = self.y + 15;
is_alive = true;
hurt_audio = choose(E_hitHurt_1_,E_hitHurt_2_,E_hitHurt_3_,E_hitHurt_4_);
enemy_footsteps = E_FT_1;

// time values for enemy footsteps
footsteps_time = 0;