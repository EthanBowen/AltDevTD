/// @description Insert description here
// You can write your code in this editor
if(room == rm_desk)
{
	repeat(6)
	{
		//var xx = irandom_range(room_width*0.4, room_width*0.6);
		//var yy = irandom_range(room_height*0.4, room_height*0.6);
		instance_create_layer(room_width/2, -room_height/2, "Instances", obj_article);
	}
	
	var xx = irandom_range(room_width*0.3, room_width*0.7);
	var yy = irandom_range(room_height*0.3, room_height*0.7);
	var desk_object = instance_create_layer(xx, yy, "Item_Instances", obj_desk);
	desk_object.persistent = true;
	
	publish_count = 3;
	rejection_count = 3;
}

if(room == rm_day_count)
{
	alarm[0] = room_speed * 5;
}