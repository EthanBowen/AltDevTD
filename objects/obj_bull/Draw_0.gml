/// @description Insert description here
// You can write your code in this editor

if(hp <= 25)
{
	camo = false;
	defaultCamo = false;
	spd = 4.0;
	thisSpeed = spd*global.spd_mod;
	path_speed = thisSpeed;
}

// Inherit the parent event
event_inherited();
