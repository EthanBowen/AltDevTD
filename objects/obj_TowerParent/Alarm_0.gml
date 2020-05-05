/// @description Shooting logic

if (instance_exists(objectToShoot)) {
	image_angle = point_direction(x,y,objectToShoot.x, objectToShoot.y);
	var proj = instance_create_depth(x, y, -9, bullet);
	proj.tower = self;
	//proj.speed = 10;
	proj.direction = point_direction(x,y,objectToShoot.x, objectToShoot.y);
	alarm[0] = fire_rate/global.fast_forward;
}
else {
	shooting = false;
}

