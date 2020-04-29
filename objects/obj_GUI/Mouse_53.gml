/// @description Insert description here
// You can write your code in this editor
with(obj_TowerParent)
{
	selected = false;
	selectedTower = noone;
}

var instance = instance_position(mouse_x, mouse_y, obj_TowerParent);

if(instance_exists(instance))
{
	instance.selected = true;
	selectedTower = instance;
}