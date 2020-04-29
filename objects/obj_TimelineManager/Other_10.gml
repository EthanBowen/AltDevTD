/// @description Fires next wave

current_wave++;
show_debug_message("current wave is " + string(current_wave));
if (current_wave <= timelineCount) {
	show_debug_message("Found " + timelineNaming + string(current_wave));
	timelineStart = asset_get_index(timelineNaming + string(current_wave));
	timeline = instance_create_depth(x, y, depth - 1, obj_Timeline);
	timeline.timelineStart = timelineStart;
	with(timeline) {
		timeline_index = timelineStart;
		timeline_running = true;
	}
}