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
	spawn_timer = spawn_rate/global.fast_forward;
	if (spawn_timer <= 1)
	{
		spawn_timer = 1;
		spawn_rate = 1;
	}
	alarm[0] = spawn_timer;
	
	//global.active_round = true;
	//global.start = false;
}
//if(global.level >= 1)
		//global.coins += 50;
//alarm[1] = room_speed * 5;

