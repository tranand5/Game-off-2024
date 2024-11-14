// Inherit the parent event
event_inherited();
//	Init Variables
move_speed = random_range(1, 4);
hitbox = instance_create_layer(x, y, "Managers", obj_enemy_hitbox_1st_floor);
hitbox.x = self.x + 40;
hitbox.y = self.y + 15;
