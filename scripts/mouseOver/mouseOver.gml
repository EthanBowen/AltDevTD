// @description Takes x,y,sprite_width, sprite_height and returns if mouse is over it.
var xx = argument0;
var yy = argument1;
var width = argument2;
var height = argument3;

if (mouse_x > (xx - (width/2)) && mouse_x < (xx + (width/2)) ) {
	if (mouse_y > (yy - (height/2))  && mouse_y < (yy + (height/2)) ) {
		return true;
	}
}

return false;
