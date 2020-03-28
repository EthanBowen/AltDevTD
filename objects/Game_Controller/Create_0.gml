/// @description Insert description here
// You can write your code in this editor
publish_count = 0;
rejection_count = 0;
day_count = 1;

globalvar desk_items;
desk_items = ds_list_create();

globalvar article_count;
article_count = 0;

globalvar all_articles;
all_articles = ds_list_create();

article1[1] = "Love = Drugs??";

article2[1] = "Child Pets Dog!";

article3[1] = "Cool Kid Alert!";

article4[1] = "John Football?!";

article5[1] = "Lost In Transit :O";

article6[1] = "Fluffy At Large :3";

article7[1] = "Matt So Good?";

article8[1] = "Turtle Tea Time.";

article9[1] = "Local Ghost: BUSTED";

article10[1] = "Bases Now Belong to Us!";

article11[1] = "Company Drowning?!";

article12[1] = "What Llama Are You?";

article13[1] = "Interobangs Overrated?!";

article14[1] = "Domjy Wear Pants";

article15[1] = "Celebrities, What Do They Know? Do They Know Things? Let's Find Out!";

article16[1] = "Milkshakes Bring Boys?";

ds_list_add(all_articles, article1, article2, article3, article4, article5, article6, article7, article8, article9, article10, article11, article12, article13, article14, article15);
ds_list_add(all_articles, article16);
globalvar all_personal_items;
all_personal_items = ds_list_create();
ds_list_add(all_personal_items,spr_cup);
ds_list_add(all_personal_items,spr_pencils);
ds_list_add(all_personal_items,spr_sticky_notes);

globalvar personalItems;
personalItems = ds_list_create();
ds_list_add(personalItems,0);
ds_list_add(personalItems,1);
ds_list_add(personalItems,2);
//scr_articles_loadadd();

randomize();