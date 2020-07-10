/// @description State Management
// You can write your code in this editor
// State 0 - Swimming back and forth
// State 1 - Chomping in place
// State 2 - Swimming in direction of player

if (state == 0) {
	XSpd = -image_xscale * swimSpeed;
	YSpd = 0;
}

if (state == 0) {
	x = x + XSpd
	y = y + YSpd
}

if (state == 0 and !isTired and distance_to_object(par_character) <= 128) {
	image_xscale = sign(x - par_character.x);
	XSpd = 0;
	YSpd = 0;
 
	state = 1;
	alarm[1] = 30;	
}

if (state == 2) {
	speed = rushSpeed;
	direction = rushAngle;
}

if (state == 2 and ((y - 16) < global.WaterSurfacePosition)) {
	if (direction > 90 or direction < 270) {
		image_xscale = -1;
		direction = 0;
	} else {
		image_xscale = 1;
		direction = 180;
	}
}