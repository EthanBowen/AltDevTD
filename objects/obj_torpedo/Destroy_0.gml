/// @description Insert description here
// You can write your code in this editor
var proj = instance_create_depth(x, y, -9, obj_explosion);
proj.tower = tower;

audio_play_sound(bombExplosion,0,0);