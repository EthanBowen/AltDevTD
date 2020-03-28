while ds_list_size(global.desk_items) > 0 {
	instance_activate_object(global.desk_items[| 0]);
	ds_list_delete(global.desk_items, 0);
}