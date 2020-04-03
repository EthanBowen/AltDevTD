/// @description Places the tower

instance_destroy();
var tower = instance_create_depth(mouse_x, mouse_y, -1, obj_Tower02);
tower.range = range;
tower.bullets_per_second = bullets_per_second;
tower.tower_sprite = tower_sprite;
