/// @description Initializes variables

text_displayed = "";

// Objects that relate to how this box moves around the room
referenced_object = instance_nearest(x, y, obj_input_text_box);
referenced_move = instance_nearest(x, y, obj_articlewriting_paper);

// Stores the relative position of this box to the paper it's on
x_base = x - referenced_move.x;
y_base = y - referenced_move.y;



