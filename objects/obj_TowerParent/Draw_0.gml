/// @description Drawing and Detection logic
draw_self();

if (mouseOver(x, y, sprite_width, sprite_height)) {
	draw_circle(x, y, range, true);
}

// TODO: Change to find enemy furthest along path.
var en = instance_nearest(x, y, obj_enemy);

// Found an enemy
if (en != noone) {
	// Enemy is within range
	if (point_distance(x,y,en.x,en.y) <= range + (en.sprite_width / 2)) {
		
		if (!shooting) {
			alarm[0] = 1;
			shooting = true;
		}
		
		objectToShoot = en;
		if (mouseOver(x, y, sprite_width, sprite_height)) {
			draw_line(x, y, en.x, en.y);
		}
	}
	else {
		shooting = false;
		objectToShoot = noone;
	}
}
