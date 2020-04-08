/// @description Spawns enemies
// You can write your code in this editor

if(spawn_count <= spawn_amount) {
	
	if(spawn_count%5 == 0)
	{
		instance_create_depth(x,y,-1, obj_cat);
	}
	else
	{
		instance_create_depth(x,y,-1, obj_hammerhead);
	}
	spawn_count++;
	alarm[0] = spawn_rate;
}
