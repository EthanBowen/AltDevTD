draw_self();
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(fnt_headline);
draw_text_transformed(x, y - (sprite_height*0.3), headline, image_xscale, image_yscale, image_angle);

draw_set_font(fnt_company);
draw_text_transformed(x, y - (sprite_height*0.45), "News Co", image_xscale, image_yscale, image_angle);

draw_set_font(fnt_date);
draw_text_transformed(x, y - (sprite_height*0.385), "4/22/1999", image_xscale, image_yscale, image_angle);