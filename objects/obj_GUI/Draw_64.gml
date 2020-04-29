/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_info);

draw_set_color(c_black);
draw_text(60,50, "Coins: " + string(global.coins));
draw_text(60,70, "Level: " + string(global.level));
draw_text(60,90, "HP: " + string(global.hp));
draw_set_color(c_white);

if (end_round) {
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_set_font(fnt_title);
	draw_text(room_width*0.5, room_height*0.3, "GAME OVER");
	draw_set_color(c_white);
}
