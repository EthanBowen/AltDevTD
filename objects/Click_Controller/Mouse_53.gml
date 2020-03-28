/// @description Insert description here
// You can write your code in this editor
var instance = top_instance_position(mouse_x, mouse_y, Movable);

if(instance_exists(instance))
{
	if(instance.selectable)
	{
		instance.selected = true;
		item_selected = true;
		
		if(instance.object_index != obj_desk)
		{
			obj_publish_box.sprite_index = spr_publish_area_passive;
			obj_reject_box.sprite_index = spr_publish_area_passive;
		}
		
		//show_debug_message(string(instance.depth));
	
		remove_item_from_desk(instance);

		add_item_to_desk(instance);
	
		//show_debug_message(string(instance.depth));
	}
}
