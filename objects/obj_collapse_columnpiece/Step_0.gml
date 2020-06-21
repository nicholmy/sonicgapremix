/// @description Fall and stop upon hitting the floor
if (state == 1) {
	vspeed += 0.125
	
	if (place_meeting(x + sprite_width/2, y + sprite_height, par_collision_solid)) {
		state = 2
		vspeed = 0;
	}
}
