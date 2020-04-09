/// @description Spawns enemies
// You can write your code in this editor

if(spawn_count <= spawn_amount) {
	var created;
	if(spawn_count%5 == 0)
	{
		created = instance_create_depth(x,y,-1, obj_cat);
	}
	else
	{
		created = instance_create_depth(x,y,-1, obj_hammerhead);
	}
	created.pathList = pathsList;
	created.pathNaming = pathNaming;
	with(created) {
		event_user(0);
	}
	spawn_count++;
	alarm[0] = spawn_rate;
}
