/// @description Play Repeating Chain Sound
// You can write your code in this editor
if (state == 3) {
	if (isActive) PlaySound(snd_object_chain, global.SFXVolume, 1, 1);
	alarm[2] = chainSoundFreq;
} else {
	alarm[2] = 0;
}
