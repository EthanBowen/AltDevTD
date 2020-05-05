/// @description Insert description here
// You can write your code in this editor

if(obj_GUI.selectedTower != noone)
{
	image_alpha = 1;
}
else
{
	image_alpha = 0;
}

image_index = 0;
if(mouseOver(x, y, sprite_width, sprite_height))
{
	image_index = 1;
}

draw_self();

if(obj_GUI.selectedTower != noone)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_black);
	draw_set_font(fnt_info);

	draw_text(x,y,"Sell for: " + string(obj_GUI.selectedTower.sellBackValue));

	draw_set_color(c_white);
}