x1 = x;
y1 = y;
x2 = x + sprite_width;
y2 = y + sprite_height;
if(!canBePickedUp)
{
	if(collision_rectangle(x1,y1,x2,y2, obj_inv, false, false))
	{
		//do Nothing
	}
	else
		canBePickedUp = true;
}
//sprite_index = ds_list_find_value(personalItems, objectIndex);
