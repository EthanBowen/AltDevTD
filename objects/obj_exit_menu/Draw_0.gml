/// @description Insert description here
// You can write your code in this editor
if(global.exitReady)
{
	image_alpha = 1;
}
else
{
	image_alpha = 0;
}

draw_self();

if(global.exitReady)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_black);
	draw_set_font(fnt_info);

	draw_text(x+sprite_height/18,y-sprite_height/2+sprite_height/16,"Game Exit Menu");

	draw_set_color(c_white);
}