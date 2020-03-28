///@param object
var item = argument0;

ds_list_add(global.desk_items, item);

item.depth = -ds_list_size(global.desk_items) + 1;