/// @description Insert description here
// You can write your code in this editor
if(room = rm_desk)
{
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_set_font(fnt_headline);
	draw_text_transformed(room_width*0.1, room_height*0.3, "Reject " + string(rejection_count) + " more.", 1, 1, image_angle);

	draw_text_transformed(room_width*0.9, room_height*0.3, "Publish " + string(publish_count) + " more.", 1, 1, image_angle);
}

if(room = rm_day_count)
{
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_set_font(fnt_day_count);
	draw_text_transformed(room_width*0.5, room_height*0.5, "Day: " + string(day_count), 1, 1, image_angle);
}

if(room = rm_title)
{
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_set_font(fnt_day_count);
	draw_text_transformed(room_width*0.5, room_height*0.5, "News Co!\nClick and Drag!", 1, 1, image_angle);
}