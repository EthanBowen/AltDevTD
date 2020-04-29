/// @description Insert description here
// You can write your code in this editor
camo = defaultCamo;
for (i = 0; i < instance_number(obj_nurse); i += 1)
{
	nurse = instance_find(obj_nurse, i);
	if (point_distance(x,y,nurse.x,nurse.y) <= nurse.range)
	{
		camo = true;
		i = instance_number(obj_nurse);
	}
}

if(camo)
{
	image_alpha = 0.5;	
}
else
{
	image_alpha = 1;	
}

draw_self();