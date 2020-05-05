/// @description Spawns enemies
// You can write your code in this editor
if(spawn_count <= spawn_amount) {
	global.active_round = true;
	global.start = false;
	var created;
	if(spawn_amount >= 25 && spawn_count % 5 == 0)
	{
		created = instance_create_depth(x,y,-1, obj_nurse);
	}
	else if(spawn_count >= 35)
	{
		created = instance_create_depth(x,y,-1, obj_whale);
	}
	else if(spawn_count >= 30)
	{
		created = instance_create_depth(x,y,-1, obj_great_white);
	}
	else if(spawn_count >= 28)
	{
		created = instance_create_depth(x,y,-1, obj_bull);
	}
	else if(spawn_count >= 18)
	{
		created = instance_create_depth(x,y,-1, obj_tiger);
	}
	else if(spawn_count >= 12)
	{
		created = instance_create_depth(x,y,-1, obj_hammerhead);
	}
	else if(spawn_count >= 7)
	{
		created = instance_create_depth(x,y,-1, obj_cat);
	}
	else
	{
		created = instance_create_depth(x,y,-1, obj_cookie_cutter);
	}
	created.pathList = pathsList;
	created.pathNaming = pathNaming;
	with(created) {
		event_user(0);
	}

	spawn_count++;
	
	alarm[0] = spawn_rate;
}
else
{
	//global.active_round = false;
	obj_start_round.next_round = true;

}

