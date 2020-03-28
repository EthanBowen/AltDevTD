/// @description Insert description here
// You can write your code in this editor 
/*
enum e_item_stats{ 
	name,	 
} 
enum e_item_type{ 
	plant, 
	phone, 
	bone, 
} 
//ARRAY THAT STORES ITEM INFO 
global.a_items[e_item_type.plant, e_item_stats.name] = "POTTED PLANT"; 
global.a_items[e_item_type.phone, e_item_stats.name] = "PHONE"; 
global.a_items[e_item_type.bone, e_item_stats.name] = "BONE";
*/
enum e_inventory{
	type,
}

maxInvSlots = 5; 

for(var inv = 0; inv < maxInvSlots; inv++){ 
	global.a_inv[inv] = -1; //-1 = EMPTY 
}
showInventory = false;
selectedItem = 0;