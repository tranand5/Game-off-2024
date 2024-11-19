//	Init Variables
move_speed = random_range(1, 4);
hitbox = instance_create_layer(x, y, "Managers", obj_enemy_1st_floor_hitbox);
hitbox.x = self.x + 40;
hitbox.y = self.y + 15;
is_alive = true;