/// Articles - Load Add ()
/// @description Loads articles from file and adds them to current list

// TODO: make into a script that takes in "File Name" parameter

// Opens a file (if it exists)
file = file_text_open_read(working_directory + "\\articletest.txt");
if (file != -1) {
	// Decodes the data
	load = file_text_read_string(file);
	load_map = json_decode(load);
	// Takes decoded data and adds it to the end of the list.
	var i;
	for(i = 0; i < ds_list_size(load_map); i++) {
		ds_list_add(all_articles, ds_list_find_index(load_map, i));
	}
	file_text_close(file);
	global.articles_loaded = true;
	show_debug_message("Loaded article from file: \\articletest.txt");
}
else {
	show_debug_message("Failed to load file: articletest.txt");
}





