/// @function inv_grab_obj(items to be grabbed)
/// @description Add an item to Inventory
/// @param {real} item the item to be picked up
/// @param {real} itemInstanceID the ID of the items instance
item = argument0;
itemInstanceID = argument1;

for(var inv = 0; inv < obj_inv.maxInvSlots; inv++)
{
	//Check for an empty slot
	if(global.a_inv[inv] == -1) 
	{
		//Add item to inv
		global.a_inv[inv] = item;
		//Destroy item, for now
		with itemInstanceID 
		{
			remove_item_from_desk(self);
			instance_destroy();	
		}
		break;
	}
}