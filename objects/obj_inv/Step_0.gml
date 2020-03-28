  
/// @description Insert description here
// You can write your code in this editor
#region ADD ITEMS TO INVENTORY
x1 = x - sprite_width /2;
y1 = y - sprite_height/2;
x2 = x + sprite_width / 2;
y2 = y + sprite_height / 2;

if(collision_rectangle(x1, y1, x2, y2, obj_desk, false, false))//place_meeting(x1, y1, spr_desk_items))
{
	//show_debug_message("Collided");
	itemInstanceID = collision_rectangle(x1, y1, x2, y2, obj_desk, false, false);
	item = itemInstanceID.objectIndex;
	if(itemInstanceID.canBePickedUp) {
		inv_grab_obj(item, itemInstanceID);
	}
}
#endregion
#region TOGGLE INVENTORY
if(keyboard_check_pressed(vk_tab)){
	showInventory = !showInventory;
}
#endregion 