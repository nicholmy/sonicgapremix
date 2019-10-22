/// @description Activate the Trap
// You can write your code in this editor
if (!isTriggered) {
	isTriggered = true;
	
	PlaySound(snd_object_saw, global.SFXVolume, 1, 1);
	alarm[0] = 120;
	alarm[1] = 180;
}