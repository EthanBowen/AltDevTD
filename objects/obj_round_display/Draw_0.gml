/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_font(fnt_title);

draw_text(x, y+10, global.level);

draw_set_color(c_white);