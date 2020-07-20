/// @description Handle special ring collection, basic win/lose conditions
if (!ringCollected and !instance_exists(specialRing)) {
	timerStart = false;
	ringCollected = true;
	instance_create(x, y, obj_bonuslevel_success);
}

if (global.DoTime and timerStart) {
	currentTime -= 1000/60.0;
}

if (currentTime <= 0) {
	currentTime = 0;
	with(par_character) {
		Action = ActionDie;
	}
}