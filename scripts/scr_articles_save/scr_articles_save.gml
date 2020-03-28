/// Articles - Save ()
/// @description Saves the article library list_articles to file.
/// @description Return codes: [-1] No data saved. [0] Save succesful.

// Don't save if there's nothing to save
if (!ds_exists(list_articles, ds_type_list)) {
	show_debug_message("Article List doesn't exist. No data saved.");
	return -1;
}
if (!global.articles_loaded) {
	scr_articles_loadadd();
	global.articles_loaded = true;
}

return scr_articles_overwrite();

// TODO: Verify this works as expected.
// Encodes the list of articles.
return json_encode(list_articles);

location = "\\list_articles.txt";

// Opens a file (or creates it) and saves the info to file.
file = file_text_open_write(working_directory + location);
if (file != -1) {
	file_text_write_string(file, json_save);
	show_debug_message("Wrote article to file: " + location);
	file_text_close(file);
	return 0;
}
else {
	show_debug_message("Failed to open/create file: " + location);
	return -1;
}
