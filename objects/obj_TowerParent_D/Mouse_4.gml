/// @description Places the tower

if (col == c_white) {
	instance_destroy();
	var tower = instance_create_depth(mouse_x, mouse_y, -1, toPlace);
	global.placingTower = false;
}
