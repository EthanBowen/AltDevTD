/// @description Insert description here
// You can write your code in this editor
var instance = instance_position(mouse_x, mouse_y, obj_TowerParent);
var GUI_item = instance_position(mouse_x, mouse_y, obj_UI);

if(!instance_exists(GUI_item))
{
	with(obj_TowerParent)
	{
		selected = false;
		selectedTower = noone;
	}

	if(instance_exists(instance))
	{
		instance.selected = true;
		selectedTower = instance;
		
		with(obj_targeting_button)
		{
			on = false;
		}
		
		if(selectedTower.targetingType == 0)
		{
			with(obj_furthest_button)
			{
				on = true;
			}
		}
		else if(selectedTower.targetingType == 1)
		{
			with(obj_closest_button)
			{
				on = true;
			}
		}
	}
}