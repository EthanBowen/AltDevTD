/// @description Insert description here
// You can write your code in this editor
if(instance_number(obj_enemy) <= 0 && !global.active_round)
{
	start = true;
	global.start = start;
	obj_spawn.alarm[1] = 1;
}
