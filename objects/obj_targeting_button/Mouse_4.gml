/// @description Insert description here
// You can write your code in this editor
if(obj_GUI.selectedTower != noone)
{
	with(obj_targeting_button)
	{
		on = false;
	}
	on = true;
	
	obj_GUI.selectedTower.targetingType = targetingTypeID;
}	
