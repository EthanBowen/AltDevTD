/// @description Manages Music While Game Is Loaded

if (room == rm_map_select or room == rm_start_screen) {
	// Starts a sound - in this case, the main menu music.
	switchMusic(music_mainmenu);
}
else if (room == rm_ethans_map or room == rm_mjs_map or room == rm_ThreeFronts) {
	switchMusic(music_level);
}


