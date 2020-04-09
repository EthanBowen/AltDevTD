/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_info);

draw_set_color(c_black);
draw_text(30,30, "Coins: " + string(global.coins));
draw_text(30,50, "Level: " + string(global.level));
draw_set_color(c_white);
