/// @description Initialize the controller

currently_selected = 0;
max_boxes = instance_number(obj_input_text_box);

var i;
for (i = 0; i < max_boxes; i++) {
	boxes[i] = instance_find(obj_input_text_box, i);
}
