/// @description Insert description here
// You can write your code in this editor
if(active)
{
	image_index = 1;
}
else
{
	image_index = 0;
}

draw_self()

if(active)
{
	var item = instance_position(mouse_x, mouse_y, obj_interactable)
	if(item != noone && item.image_alpha != 0)
	{
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_color(c_black);
		draw_set_font(fnt_info);
	
		draw_text_ext(x-10,y,item.info,3*font_get_size(fnt_info)/2,sprite_width - 30);
		
		draw_set_color(c_white);
	}	
}
else
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_black);
	draw_set_font(fnt_info);
	
	draw_text(x,y,"Click me for info!")
	
	draw_set_color(c_white);
}