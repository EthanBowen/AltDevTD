/// @description Begins the next round
if(instance_number(obj_enemy) <= 0  && next_round/*&& !global.active_round*/)
{
	next_round = false;
	//alarm[0] = room_speed * 1;
	//global.active_round = true;
	start = true;
	global.start = start;
	global.level++;
	global.spd_mod += 0.1;
	var i;
	for (i = 0; i < instance_number(obj_spawn); i += 1)
	{
		spawner = instance_find(obj_spawn, i);
		spawner.alarm[1] = 1;
	}
}
