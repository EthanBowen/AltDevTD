/// @description Insert description here
// You can write your code in this editor
if(obj_guppy)
	global.coins += 5;
	
else if(obj_dragon)
	global.coins += 15;
	
else if(obj_ghost)
	global.coins += 20;
	
else if(obj_snipe)
	global.coins += 40;
	
else if(obj_yellowfin)
	global.coins += 100;
	
else if(obj_lion)
	global.coins += 150;
	
else if(obj_remora)
	global.coins += 250;
	
else if (obj_koi)
	global.coins += 400;
	
instance_destroy();