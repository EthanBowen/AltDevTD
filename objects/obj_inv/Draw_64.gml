/// @description Insert description here
// You can write your code in this editor
#region DRAW INVENTORY 
invList[0] = spr_bone;
invList[1] = spr_potted_plant;
invList[2] = spr_phone;
//show_debug_message(obj_desk.objectIndex);
//invIndex = obj_desk.objectIndex;
//invHolder = 0;
if(showInventory) { 
	startInvX = room_width - (sprite_get_width(spr_desk_items) * .5);// - 30; 
	startInvY = room_height - (sprite_get_height(spr_desk_items) * .5);// - 30; 
	for(var inv = 0; inv < maxInvSlots; inv++){ 
		
		var item = global.a_inv[inv]; 
		
		itemX = startInvX; 
		itemY = startInvY - (inv * sprite_get_width(spr_desk_items)); 
		
		#region GET MOUSE COORDS AND CHANGE selectedItem
		//Mouse Coordinates
		var mouseX = device_mouse_x_to_gui(0);
		var mouseY = device_mouse_y_to_gui(0);
		var halfWidth = (sprite_get_width(spr_inv)/ 2);
		var halfHeight = (sprite_get_height(spr_inv)/ 2);
		//mouse is colliding with inv slot
		if(abs(itemX - mouseX) <= halfWidth) && (abs(itemY - mouseY) <= halfHeight)
		{
			selectedItem = inv;
			
			if(mouse_check_button_pressed(mb_left)) {
				item = global.a_inv[inv];
				remove_inv_item(item);
			}
		}
		#endregion
		//invHolder = invIndex;
		draw_sprite(spr_inv, 0, itemX, itemY); 	
		if(item > -1) {
			draw_sprite(spr_desk_items, item, itemX , itemY); 
		}		
	} 
} 
#endregion 