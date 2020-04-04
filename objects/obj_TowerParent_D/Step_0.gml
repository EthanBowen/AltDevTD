/// @description Updates position

x = mouse_x;
y = mouse_y;

if(place_meeting(x,y,obj_invalid) or place_meeting(x,y,obj_TowerParent))
{
	col = c_red;
}
else
{
	col = c_white;
}
