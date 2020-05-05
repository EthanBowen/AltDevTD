/// @description Drawing and Detection logic
draw_self();

if (selected || position_meeting(mouse_x, mouse_y, self)) {//)(x, y, sprite_width, sprite_height)) {
	draw_circle(x, y, range, true);
}

var en = findTarget(x, y, range, spotCamo, targetingType);

// Found an enemy
if (en != noone) {
	if (!shooting) {
		alarm[0] = 1;
		shooting = true;
	}
		
	objectToShoot = en;
	if (selected || position_meeting(mouse_x, mouse_y, self)) {
		draw_line(x, y, en.x, en.y);
	}
}
else {
	//shooting = false;
	objectToShoot = noone;
}
