/// @description Insert description here
// You can write your code in this editor
if((other.x <= x+100 && other.x >= x-100) && (other.y <= y+300 && other.y >= y-300))
{
	if(Click_Controller.item_selected)
	{
		obj_publish_box.sprite_index = spr_publish_area_active;
	}
	else
	{
		obj_publish_box.sprite_index = spr_empty;
	}
	with(other)
	{
		if(!selected)
		{
			instance_destroy();
			room_goto(rm_MJs_Test);
		}
	}
}
else
{
	if(Click_Controller.item_selected)
	{
		obj_publish_box.sprite_index = spr_publish_area_passive;
	}
	else
	{
		obj_publish_box.sprite_index = spr_empty;
	}
}