/// @description Insert description here
// You can write your code in this editor
draw_self();

if (selected || mouseOver(x, y, sprite_width, sprite_height)) {
	draw_circle(x, y, range, true);
}

for (i = 0; i < instance_number(obj_TowerParent); i += 1)
{
	tower = instance_find(obj_TowerParent, i);
	if (point_distance(x,y,tower.x,tower.y) <= range)
	{
		tower.spotCamo = true;
	
		if (selected || mouseOver(x, y, sprite_width, sprite_height)) {
			draw_line(x, y, tower.x, tower.y);
		}
	}
	
}