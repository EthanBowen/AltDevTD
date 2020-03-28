/// @function remove_inv_item(items to be grabbed and removed)
/// @description Drags an item from Inventory to desk
/// @param {real} item the item to be picked up

item = argument0;

if(item > -1)
{
	//xx = room_width/2 + (irandom_range(-sprite_width,sprite_width));
	//yy = room_height/2 + (irandom_range(-sprite_height,sprite_height));
	//show_debug_message(xx);
	//show_debug_message(yy);
	
	newItem = instance_create_layer(mouse_x, mouse_y, "Instances", obj_desk);
	newItem.selected = true;
	newItem.sprite_index = ds_list_find_value(all_personal_items, item);
	newItem.canBePickedUp = false;
}

global.a_inv[obj_inv.selectedItem] = -1;