/// @description Selects a box
if (mouse_check_button_pressed(mb_left)) {
	var i;
	show_debug_message("Left Down detected");
	for (i = 0; i < max_boxes; i++) {
		if (position_meeting(mouse_x, mouse_y, boxes[i])) {
			show_debug_message("selected box");
			boxes[i].selected = true;
		}
		else {
			boxes[i].selected = false;	
		}
	}
}
