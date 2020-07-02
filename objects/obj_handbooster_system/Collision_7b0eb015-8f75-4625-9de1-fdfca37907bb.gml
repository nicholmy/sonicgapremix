/// @description If waiting, transition to grabbing
// You can write your code in this editor
if (state == 2 and other.Ground and lockTimer == 0) {
	state = 4;
	grabbedPlayer = other;
	
	// Transition to Spinning state
	alarm[0] = 30;
	
	PlaySound(snd_character_roll, global.SFXVolume, 1, 1);
}