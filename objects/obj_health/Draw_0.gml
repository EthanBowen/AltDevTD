/// @description Insert description here
// You can write your code in this editor
draw_self();

//draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, col, 1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_font(fnt_money);


if(global.hp <= 0)
{
	draw_text(x+sprite_width/4, y, 0);
}
else
{
	draw_text(x+sprite_width/4, y, global.hp);
}
draw_set_color(c_white);