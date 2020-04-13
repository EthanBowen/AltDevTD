/// @description Spawns next wave

if (global.start && !global.active_round) {
	// Reset wave
	spawn_count = 1;
	// Set number of spawns
	spawn_amount++;
	
	global.level++;
	// Increases enemy HP
	//global.hp += 10;
	// Speeds up enemy speed
	global.spd_mod += 0.1;
	// Speeds up spawns.
	spawn_rate -= 2.5;
	if (spawn_rate <= 0)
		spawn_rate = 1;
	alarm[0] = spawn_rate;
	
	//global.active_round = true;
	//global.start = false;
}

//alarm[1] = room_speed * 5;

