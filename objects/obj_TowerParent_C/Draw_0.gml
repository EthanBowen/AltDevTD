/// @description Displays the cost
if(mouseOver(x, y, sprite_width, sprite_height))
{
	image_index = 1;
}	
else
{
	image_index = 0;
}

draw_self();

draw_sprite(tower_spr,0,x,y);

draw_set_font(fnt_info);

draw_set_color(c_black);
draw_text(x, y-sprite_height/2 - 10, string(cost));
draw_set_color(c_white);
