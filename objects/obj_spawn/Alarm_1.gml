/// @description Spawns next wave

if (global.start/* && !global.active_round*/) {
	// Reset wave
	spawn_count = 1;
	// Set number of spawns
	
	spawn_amount++;
	
	//global.level++;
	
	// Increases enemy HP
	//global.hp += 10;
	// Speeds up enemy speed
	//global.spd_mod += 0.05;
	// Speeds up spawns.
	spawn_rate -= 1;
	if (spawn_rate <= 0)
		spawn_rate = 0.5;
	alarm[0] = spawn_rate;
	
	//global.active_round = true;
	//global.start = false;
}
if(global.level >= 1)
		global.coins += 50;
//alarm[1] = room_speed * 5;

