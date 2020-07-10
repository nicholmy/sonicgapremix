/// @description scr_character_action_spin();
// Script to perform Spinning on platforms.

if (Action == ActionSpin) {
	LockControl = 1;
	Ground = 1;
}

if (Action == ActionWaterSlide && !Ground) {
	Action = ActionNormal;
	Animation = "HURT";
}