/// @description Insert description here
// You can write your code in this editor
if (instance_exists(objectToShoot)) {
	image_angle = point_direction(x,y,objectToShoot.x, objectToShoot.y);
	var proj = instance_create_depth(x+range, y, -9, bullet);
	proj.tower = self;
	proj = instance_create_depth(x+range, y+range, -9, bullet);
	proj.tower = self;
	proj = instance_create_depth(x+range, y-range, -9, bullet);
	proj.tower = self;
	proj = instance_create_depth(x, y+range, -9, bullet);
	proj.tower = self;
	proj = instance_create_depth(x, y-range, -9, bullet);
	proj.tower = self;
	proj = instance_create_depth(x-range, y+range, -9, bullet);
	proj.tower = self;
	proj = instance_create_depth(x-range, y, -9, bullet);
	proj.tower = self;
	proj = instance_create_depth(x-range, y-range, -9, bullet);
	proj.tower = self;
	
	
	//proj.speed = 10;
	//proj.direction = point_direction(x,y,objectToShoot.x, objectToShoot.y);
	alarm[0] = fire_rate;
}
else {
	shooting = false;
}