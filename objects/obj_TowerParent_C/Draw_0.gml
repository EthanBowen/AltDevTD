/// @description Displays the cost
if(global.coins < cost)
{
	image_index = 1;
	col = c_red;
}
else if(mouseOver(x, y, sprite_width, sprite_height))
{
	image_index = 1;
	col = c_white;
}	
else
{
	image_index = 0;
	col = c_white;
}

draw_sprite_ext(sprite_index, -1, x, y, 1, 1, 0, col, 1);

draw_sprite_ext(tower_spr, 0, x, y, 1, 1, 0, col, 1);

draw_set_font(fnt_info);

draw_set_color(c_black);
draw_text(x, y-sprite_height/2 - 10, string(cost));
draw_set_color(c_white);
