/// @description Saves article text to file.

// TODO: make into a script that takes in "File Name" parameter

// Creates and prepares the information to be saved
var i;
headline = "";
subtitle = "";
for(i = 0; i < max_boxes; i++) {
	box = boxes[i];
	if (box.article_type == "Headline") {
		headline = box.text;
	}
	else if (box.article_type == "Subtitle") {
		subtitle = box.text;
	}
}

scr_articles_create(headline, subtitle, 1, 1, 1);

// Encodes that info
json_save = scr_articles_overwrite();

// Opens a file (or creates it) and saves the info to file.
//file = file_text_open_write("grpfiles_articles\\articlestest.txt");

show_debug_message(json_save);

