/// @description If close enough to player, fall

if (state == 0 and par_character.y > y and point_distance(x, y, par_character.x, par_character.y) < 128) {
	state = 1
	vspeed = 1
}

if (state == 1) {
	vspeed += 0.125
	
	if (place_meeting(x + 16, y, par_collision_solid)) {
		state = 2
		vspeed = 0;
	}
}
