/// @description 
// You can write your code in this editor

xoffset = 0;
yoffset = 0;

selected = false;
selectable = false;

add_item_to_desk(self)

sprite_index = spr_article_1;

image_xscale = 0.7;
image_yscale = 0.7;

if(ds_list_size(all_articles) > 0)
{
	var index = irandom_range(0, ds_list_size(all_articles) - 1)
	var article = ds_list_find_value(all_articles,index);
	headline = article[1];
	
	ds_list_delete(all_articles, index);
}

xx = irandom_range(room_width*0.4, room_width*0.6);
yy = irandom_range(room_height*0.4, room_height*0.6) + sprite_height/2;
move_towards_point(xx, yy, 20);