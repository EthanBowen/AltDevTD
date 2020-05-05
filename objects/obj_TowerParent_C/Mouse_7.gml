/// @description Purchase Tower Logic

if (global.coins >= cost) {
	var tow = instance_create_depth(mouse_x, mouse_y, -9, toPlace);
	tow.cost = cost;
	global.coins -= cost;
}
