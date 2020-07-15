/// @description Begins the next round
active = !active;

if(active)
{
	global.fast_forward = 2;
}
else
{
	global.fast_forward = 1;
}

for (i = 0; i < instance_number(obj_enemy); i += 1)
{
	var shark = instance_find(obj_enemy, i);
	if(shark != noone)
	{
		with(shark)
		{
			thisSpeed = spd*global.spd_mod*global.fast_forward;
			path_speed = thisSpeed;
			image_speed = thisSpeed;
		}
	}
}

for (i = 0; i < instance_number(obj_bullet); i += 1)
{
	var proj = instance_find(obj_bullet, i);
	if(proj != noone)
	{
		with(proj)
		{
			speed = spd*global.fast_forward;
			if(asset_object == obj_poison || asset_object == obj_explosion)
			{
				damage = dmg*global.fast_forward;
			}
		}
	}
}
