/// @description Insert description here
// You can write your code in this editor
if((other.x <= x+100 && other.x >= x-100) && (other.y <= y+300 && other.y >= y-300))
{
	if(Click_Controller.item_selected)
	{
		obj_reject_box.sprite_index = spr_publish_area_active;
	}
	else
	{
		obj_reject_box.sprite_index = spr_empty;
	}
	with(other)
	{
		if(!selected)
		{
			instance_destroy();
			game_end();
		}
	}
}
else
{
	if(Click_Controller.item_selected)
	{
		obj_reject_box.sprite_index = spr_publish_area_passive;
	}
	else
	{
		obj_reject_box.sprite_index = spr_empty;
	}
}