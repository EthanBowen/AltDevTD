///@param object
var item = argument0;

ds_list_delete(global.desk_items, -item.depth);

//show_debug_message(string(ds_list_size(global.desk_items)));

for(i = 0; i < ds_list_size(global.desk_items); i++)
{
	var temp = ds_list_find_value(global.desk_items, i);
	temp.depth = -i;
}