/// @description Accelerate on Collision
// You can write your code in this editor
if (place_meeting(x, y, par_character)) {
	if (!isAccelerating) {
		PlaySound(snd_object_accelerator, global.SFXVolume, 1, 1);
		isAccelerating = true;
	}
	if (minPush > 0) {
		par_character.XSpeed = min(max(par_character.XSpeed + accelForce, minPush), par_character.XSpeed_Max);
	} else {
		par_character.XSpeed = max(min(par_character.XSpeed + accelForce, minPush), -1 * par_character.XSpeed_Max);;
	}
	
} else {
	isAccelerating = false;
}