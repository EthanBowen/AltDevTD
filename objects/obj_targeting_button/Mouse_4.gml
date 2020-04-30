/// @description Insert description here
// You can write your code in this editor
if(obj_GUI.selectedTower != noone)
{
	/*var i;
	for (i = 0; i < instance_number(obj_targeting_button); i += 1)
	{
		var button = instance_find(obj_targeting_button,i);
		if(button != noone)
		{
			button.on = false;
		}
	}*/
	with(obj_targeting_button)
	{
		on = false;
	}
	on = true;
	
	obj_GUI.selectedTower.targetingType = targetingTypeID;
}	
