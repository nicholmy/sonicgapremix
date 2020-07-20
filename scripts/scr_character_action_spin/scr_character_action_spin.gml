/// @description scr_character_action_spin();
// Script to perform Spinning on platforms.

if (Action == ActionSpin) {
	LockControl = 1;
	Ground = 1;
}

if (Action == ActionWaterSlide && (!Ground || place_meeting(x, y, par_slide)) ) {
	Action = ActionNormal;
	Animation = "HURT";
}