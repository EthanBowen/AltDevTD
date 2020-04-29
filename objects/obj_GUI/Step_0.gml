/// @description Checks Player Health

if (global.hp <= 0) {
	show_debug_message("HECK");
	if (!end_round) {
		end_round = true;
		alarm[0] = room_speed * 3;
	}
}
