/// @description Insert description here
// You can write your code in this editor
if(obj_GUI.selectedTower != noone)
{
	instance_destroy(obj_GUI.selectedTower);
	obj_GUI.selectedTower = noone;
}