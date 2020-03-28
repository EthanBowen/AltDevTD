/// @description 
// You can write your code in this editor

xoffset = 0;
yoffset = 0;

selected = false;
selectable = true;

add_item_to_desk(self)

objectIndex = 0;

if(ds_list_size(personalItems) > 0)
{
	var index = irandom_range(0, ds_list_size(personalItems) - 1);

	objectIndex = ds_list_find_value(personalItems, index);
	
	sprite_index = ds_list_find_value(all_personal_items, objectIndex);

	ds_list_delete(personalItems, index);
}
else
{
	sprite_index = spr_desk_items;
}