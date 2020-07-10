/// @description State Management
// You can write your code in this editor
// State 0 - Swimming back and forth
// State 1 - Chomping in place
// State 2 - Swimming in direction of player
// State 3 - Swimming back to original position

if (state == 0) {
	speed = swimSpeed;
}

if (state == 0 and !isTired and distance_to_object(par_character) <= 64) {
	speed = 0;
 
	state = 1;
	alarm[1] = 30;	
}

// Keep looking at the player
if (state == 1) {
	image_xscale = sign(x - par_character.x);
}

if (state == 2) {
	speed = rushSpeed;
	direction = rushAngle;
}

if (state == 2 and distance_to_point(startX, startY) > 64) {
	state = 3;
}

if (state == 3) {
	speed = rushSpeed / 2;
	direction = point_direction(x, y, startX, startY);
}

if (state == 3 and distance_to_point(startX, startY) < 0.5) {
	state = 0;
	
	if (direction > 90 and direction < 270) {
		direction = 180;
	} else {
		direction = 0;
	}
	alarm[0] = 240;
}

if (state != 1 and direction > 90 and direction < 270) {
	image_xscale = 1;
} else if (state != 1) {
	image_xscale = -1;
}