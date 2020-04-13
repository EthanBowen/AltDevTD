/// @description Insert description here
// You can write your code in this editor
if(instance_number(obj_enemy) <= 0 && !global.active_round)
{
	start = true;
	global.start = start;
	var i;
	for (i = 0; i < instance_number(obj_spawn); i += 1)
	{
		spawner = instance_find(obj_spawn, i);
		spawner.alarm[1] = 1;
	}
}
