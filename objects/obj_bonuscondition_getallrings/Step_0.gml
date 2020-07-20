/// @description Handle ring collection, Stop the timer
// State 0 - Ring spawned
// State 1 - Cooldown
// State 2 - No more rings to spawn, Spawn special ring
// State 3 - Special Ring Collected
if (state == 0 and !instance_exists(ring)) {
	state = 1;
	
	if (ringsLeft <= 0) {
		// Eh no need to pick a spawner when there should only be one
		specialRing = instance_create(obj_ring_special_spawner.x, obj_ring_special_spawner.y, obj_ring_special);
		PlaySound(snd_scoring_mediumGap, global.SFXVolume, 1, 1);
		state = 2;
	} else {
		alarm[0] = 45;
	}
}

if (state == 2 and !instance_exists(specialRing)) {
	instance_create(x, y, obj_bonuslevel_success);
	state = 3;
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