/// @description Checks HP of this enemy

if (hp <= 0) {
	instance_destroy();
}
image_angle = direction;

distance += spd;