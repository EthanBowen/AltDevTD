/// @description Draws text

// Changes the color of the border
if (selected) {
	 image_index = 1;
}
else {
	image_index = 0;
}

// Draws the sprite and the text inside it.
draw_self();
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, text);


