/// @description Turn the fan off if you're not colliding with it
Fan = scr_character_collision_object(x, y, obj_fan_range_down);

if (!Fan) {
	with (obj_fan_down) {
		if (obj_fan_down.isActivated) obj_fan_down.isActivated = false;
	}
}
