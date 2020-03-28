/// @description Loads article text to file.

// TODO: make into a script that takes in "File Name" parameter

// Opens a file (if it exists)
file = file_text_open_read("heck.txt");
if (file != -1) {
	// Decodes the data
	load = file_text_read_string(file);
	load_map = json_decode(load);
	// Takes decoded data and puts it into the relevant text boxes
	var i;
	for(i = 0; i < max_boxes; i++) {
		box = boxes[i];
		box.text = ds_map_find_value(load_map, box.article_type);
	}
	file_text_close(file);
	show_debug_message("Loaded article from file: \\heck.txt");
}
else {
	show_debug_message("Failed to load file: articletest.txt");
}





