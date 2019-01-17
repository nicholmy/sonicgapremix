/// @description Accelerate on Collision
// You can write your code in this editor
if (place_meeting(x, y, par_character)) {
	if (!isAccelerating) {
		PlaySound(snd_object_accelerator, global.SFXVolume, 1, 1);
		isAccelerating = true;
	}
	par_character.XSpeed = min(max(par_character.XSpeed + accelForce, minPush), par_character.XSpeed_Max);
} else {
	isAccelerating = false;
}