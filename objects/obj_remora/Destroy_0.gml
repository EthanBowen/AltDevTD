/// @description Insert description here
// You can write your code in this editor
for (i = 0; i < instance_number(obj_TowerParent); i += 1)
{
	tower = instance_find(obj_TowerParent, i);
	if (point_distance(x,y,tower.x,tower.y) <= range)
	{
		tower.spotCamo = tower.defaultSpotCamo;
	}
	
}