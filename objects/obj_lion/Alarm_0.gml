/// @description Insert description here
// You can write your code in this editor
if (instance_exists(objectToShoot)) {
	image_angle = point_direction(x,y,objectToShoot.x, objectToShoot.y);
	instance_create_depth(x+30, y, -9, bullet);
	instance_create_depth(x+30, y+30, -9, bullet);
	instance_create_depth(x+30, y-30, -9, bullet);
	instance_create_depth(x, y+30, -9, bullet);
	instance_create_depth(x, y-30, -9, bullet);
	instance_create_depth(x-30, y+30, -9, bullet);
	instance_create_depth(x-30, y, -9, bullet);
	instance_create_depth(x-30, y-30, -9, bullet);
	
	
	//proj.speed = 10;
	//proj.direction = point_direction(x,y,objectToShoot.x, objectToShoot.y);
	alarm[0] = fire_rate;
}
else {
	shooting = false;
}