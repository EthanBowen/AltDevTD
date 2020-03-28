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
			move_towards_point(-sprite_width/2, room_height/2, 10);
			alarm[1] = 100;
			
			xx = irandom_range(room_width*0.4, room_width*0.6);
			yy = irandom_range(room_height*0.4, room_height*0.6) + sprite_height/2;
			instance_create_layer(xx, yy, "Instances", obj_new_game);
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