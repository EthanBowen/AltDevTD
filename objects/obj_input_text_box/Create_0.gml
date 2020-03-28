/// @description Initialize textbox variables
delete_timer = 0;
text = "";
self.image_speed = 0;

selected = false;

referenced_object = instance_nearest(x, y, obj_articlewriting_paper);

// Stores the relative position of this box to the paper it's on
x_base = x - referenced_object.x;
y_base = y - referenced_object.y;



