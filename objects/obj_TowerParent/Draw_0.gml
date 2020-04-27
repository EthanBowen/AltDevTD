/// @description Drawing and Detection logic
draw_self();

if (selected || mouseOver(x, y, sprite_width, sprite_height)) {
	draw_circle(x, y, range, true);
}

var en = findTarget(x, y, range, spotCamo);

// Found an enemy
if (en != noone) {
	if (!shooting) {
		alarm[0] = 1;
		shooting = true;
	}
		
	objectToShoot = en;
	if (selected || mouseOver(x, y, sprite_width, sprite_height)) {
		draw_line(x, y, en.x, en.y);
	}
}
else {
	//shooting = false;
	objectToShoot = noone;
}
