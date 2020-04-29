// @description Takes x,y,sprite_width, sprite_height and returns if mouse is over it.
var xx = argument0;
var yy = argument1;
var range = argument2;
var spotCamo = argument3;
var targetingType = argument4;

var value = -1;
var newTarget = noone;


if(targetingType != 2)
{
	var i;
	for (i = 0; i < instance_number(obj_enemy); i += 1)
	{
	   var en = instance_find(obj_enemy,i);
	   if(en != noone)
	   {
		   if (point_distance(xx,yy,en.x,en.y) <= range + (en.size / 2)) 
		   {
			   if(targetingType == 0)
			   {
				   if(en.path_position > value)
				   {
					   if(spotCamo || !en.camo)
					   {
						   newTarget = en;
						   value = en.path_position;
					   }
				   }
			   }
			   else if(targetingType == 1)
			   {
				   if(en.hp <= value || value <= 0)
				   {
					   if(spotCamo || !en.camo)
					   {
						   newTarget = en;
						   value = en.hp;
					   }
				   }
			   }
			   else
			   {
				   if(en.hp >= value)
				   {
					   if(spotCamo || !en.camo)
					   {
						   newTarget = en;
						   value = en.hp;
					   }
				   }
			   }
		   }
	   }
	}
}
else
{
	var en = instance_nearest(xx,yy,obj_enemy);
	if(en != noone)
	{
		newTarget = en;
	}
}

return newTarget;