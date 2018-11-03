/// @description Handle Trigger Animations
// You can write your code in this editor

if (leftTrigger) {
	image_index = 1;
	alarm[0] = 10;
	leftTrigger = false;
	PlaySound(snd_object_bumper, global.SFXVolume, 1, 1);
}

if (rightTrigger) {
	image_index = 2;
	alarm[0] = 10;
	rightTrigger = false;
	PlaySound(snd_object_bumper, global.SFXVolume, 1, 1);
}