/// @description Sets the initial path

if (pathList == "") {
	pathStart = global.selected_path;
}
else {
	pathAdvance++;
	pathFind = string_char_at(pathList, pathAdvance);
	pathStart = asset_get_index(pathNaming + pathFind);
}

path_start(pathStart, spd*global.spd_mod, 0, 1);
thisSpeed = spd*global.spd_mod;
