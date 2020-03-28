/// @description Handle key presses/input
if (selected)
{
	if (keyboard_check(vk_anykey) and string_length(text) < 50)
	{
		text = text + string(keyboard_string);
		keyboard_string = "";
	}

	if (keyboard_check(vk_backspace) and !keyboard_check_pressed(vk_backspace) and delete_timer = 2) {
		text = string_delete(text, string_length(text), 1);
		delete_timer = 0;
		keyboard_string = "";
	}

	if (keyboard_check_pressed(vk_backspace)) {
		text = string_delete(text, string_length(text), 1);
		delete_timer = -4;
		keyboard_string = "";
	}

	// Handle Timer update.
	if (delete_timer != 2) {
		delete_timer++;
	}
}

// Moves this box relative to the article holder.
x = referenced_object.x + x_base;
y = referenced_object.y + y_base;

