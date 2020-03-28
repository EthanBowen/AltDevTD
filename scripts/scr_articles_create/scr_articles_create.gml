/// Article - Create (string headline, string subtitle, int econval, int publicval, int moraleval)

if (argument_count != 5) {
	show_debug_message("scr_articles_create had too few or too many arguments.\nReturning error (-1)");
	return -1;	
}
headline = argument0;
subtitle = argument1;
econval = argument2;
publicval = argument3;
moraleval = argument4;

if (!ds_exists(all_articles, ds_type_list)) {
	all_articles = ds_list_create();
}

global.article_count = global.article_count++;

article[0] = global.article_count;
article[1] = headline;
article[2] = subtitle; 
article[3] = econval;
article[4] = publicval;
article[5] = moraleval;

ds_list_add(all_articles, article);

