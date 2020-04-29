/// @description Collide with an enemy

// Shark deal damage to the global hp
global.hp -= other.sharkDamage;

// Shark dies
with (other) {
	instance_destroy();
}
