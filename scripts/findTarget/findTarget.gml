// @description Takes x,y,sprite_width, sprite_height and returns if mouse is over it.
var xx = argument0;
var yy = argument1;
var range = argument2;
var spotCamo = argument3;

var furthest = -1;
var newTarget = noone;

var i;
for (i = 0; i < instance_number(obj_enemy); i += 1)
{
   var en = instance_find(obj_enemy,i);
   if(en != noone)
   {
	   if (point_distance(xx,yy,en.x,en.y) <= range + (en.size / 2)) 
	   {
			if(en.distance > furthest)
			{
				if(spotCamo || !en.camo)
				{
					newTarget = en;
					furthest = en.distance; 
				}
			}
	   }
   }
}

return newTarget;