/// @description Purchase Tower Logic

if (global.coins >= cost) {
	var tower = instance_create_depth(mouse_x, mouse_y, -9, obj_Tower01_D);
	tower.range = range;
	tower.bullets_per_second = bullets_per_second;
	tower.tower_sprite = tower_sprite;
	global.coins -= cost;
}
