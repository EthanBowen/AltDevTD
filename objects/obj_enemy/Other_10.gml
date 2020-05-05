/// @description Sets the initial path

if (pathList == "") {
	pathStart = global.selected_path;
}
else {
	pathAdvance++;
	pathFind = string_char_at(pathList, pathAdvance);
	pathStart = asset_get_index(pathNaming + pathFind);
}

thisSpeed = spd*global.spd_mod*global.fast_forward;
path_start(pathStart, thisSpeed, 0, 1);
image_speed = thisSpeed;
