/// @description Displays the cost

draw_self();

draw_set_font(fnt_info);

draw_set_color(c_black);
draw_text(x, y-sprite_height/2 - 5, string(cost));
draw_set_color(c_white);
