/// @description Insert description here
// You can write your code in this editor
if(room == rm_start_screen)
{
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_set_font(fnt_title);
	draw_text(room_width*0.5, room_height*0.3, "Feeding Frenzy");
}
else if(room == rm_map_select)
{
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_set_font(fnt_title);
	draw_text(room_width*0.5, room_height*0.3, "Select a map");
}
else {

}
