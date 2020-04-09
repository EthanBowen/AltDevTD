/// @description Checks HP of this enemy

if (hp <= 0) {
	instance_destroy();
}
image_angle = direction;

distance += spd;

// Changes the path of this enemy (if it has more paths to follow)
// once it reaches the path of the current one.
if (path_position >= 1 && pathAdvance < string_length(pathList) && pathAdvance > 0) {
	/*
	* If "pathNaming" and "pathList" aren't set, then you don't have to worry about this.
	*
	* Otherwise, this will take pathNaming + pathFind[0->length] and use that to set the path.
	* For example, if a map "DeadSeas" has 3 total paths (two separate spawns that merge
	* into one single path), those paths should be named with a single char change. (For
	* example: "path_DeadSeas_pathA" "path_DeadSeas_pathB" and "path_DeadSeas_pathC")
	* 
	* In this example, if you want the first spawner to follow paths in order:
	*			A -> C
	* In obj_spawn, set:
	* - the pathNaming instance variable to "path_DeadSeas_path"
	* - the pathFind instance variable to "AC"
	* The first path this enemy will follow will be "path_DeadSeas_pathA",
	* then it will follow "path_DeadSeas_pathC".
	*/
	pathAdvance++;
	pathFind = string_char_at(pathList, pathAdvance);
	pathStart = asset_get_index(pathNaming + pathFind);
	path_position = 0;
	path_start(pathStart, thisSpeed, 0, 1);
}
