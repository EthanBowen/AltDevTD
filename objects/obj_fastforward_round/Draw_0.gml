/// @description Insert description here
// You can write your code in this editor
if(active)
{
	image_index = 2;
	if(mouseOver(x, y, sprite_width, sprite_height))
	{
		image_index = 3;
	}
}	
else
{
	image_index = 0;
	if(mouseOver(x, y, sprite_width, sprite_height))
	{
		image_index = 1;
	}
}

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_font(fnt_info);

draw_text(x,y,"Fast\nForward");

draw_set_color(c_white);
