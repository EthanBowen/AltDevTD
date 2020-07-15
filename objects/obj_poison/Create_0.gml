/// @description Insert description here
// You can write your code in this editor
image_alpha = 0.75;
tower = noone;
seconds = 1;
alarm[0] = room_speed * seconds / global.fast_forward;
speed = spd*global.fast_forward;
dmg = damage;

if(global.fast_forward == 2)
{
	damage = dmg*global.fast_forward;
}
