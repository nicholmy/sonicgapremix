/// @description Turn the fan off if you're not colliding with it
Fan = scr_character_collision_object(x, y, obj_fan_range_up);

if (!Fan) {
	with (obj_fan_up) {
		if (obj_fan_up.isActivated) obj_fan_up.isActivated = false;
	}
}