/// @description Purchase Tower Logic

if (global.coins >= cost) {
	instance_create_depth(mouse_x, mouse_y, -9, toPlace);
	global.coins -= cost;
}
