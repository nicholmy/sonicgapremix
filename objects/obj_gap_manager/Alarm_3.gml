/// @description Gap Fail/Reset

// Only play the sound when you actually fail a gap
if (currentGapID != -1) {
	PlaySound(snd_character_hurt, global.SFXVolume, 1, 1);
}

currentGapID = -1;
charHighlight = 0;