/// @description Insert description here
// You can write your code in this editor
if (automaticallystartround) {
	col = c_red;
	event_perform(ev_mouse, ev_left_press);
}
else
{
	col = c_white;
}

draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, col, 1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_font(fnt_info);

draw_text(x,y,"Start\nRound");

draw_set_color(c_white);
