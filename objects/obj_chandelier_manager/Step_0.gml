/// @description Manage States
// If within the screen
isActive = rectangle_in_rectangle(bbox_left - 128, bbox_top - 128, bbox_right + 128, bbox_bottom + 256, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ));   

inView = point_in_rectangle(par_character.x, par_character.y, bbox_left - 128, bbox_top - 128, bbox_right + 128, bbox_bottom + 256)
if (!hasStarted and inView) {
	hasStarted = true;
	alarm[0] = 1;
}

if (state == 0) {
	chainLength = 0;
	StopSound(snd_object_chain);
}

if (state == 1) {
	chainLength += dropSpeed;
	
	if (chainLength >= maxChainLength) {
		alarm[1] = 60;
		state = 2;
		if (isActive) PlaySound(snd_object_heavyThud, global.SFXVolume, 1, 1);
	}
}

if (state == 2) {
	chainLength = maxChainLength;
}

if (state == 3) {
	chainLength += -riseSpeed;
	if (chainLength <= 0) {
		// Start the drop soon
		alarm[0] = 5;
		// Stop playing the chain sound
		alarm[2] = 0;
		state = 0;
	}
}

