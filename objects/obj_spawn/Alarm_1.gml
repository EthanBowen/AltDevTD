/// @description Spawns next wave

if (instance_number(obj_enemy) <= 0) {
	// Reset wave
	spawn_count = 0;
	// Set number of spawns
	spawn_amount++;
	
	global.level++;
	// Increases enemy HP
	global.hp += 10;
	// Speeds up enemy speed
	global.spd += 0.1;
	// Speeds up spawns.
	spawn_rate -= 2.5;
	if (spawn_rate <= 0)
		spawn_rate = 1;
	alarm[0] = spawn_rate;
}

alarm[1] = room_speed * 5;
