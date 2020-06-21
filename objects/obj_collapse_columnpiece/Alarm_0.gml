/// @description Upon player stepping on, change state
if (state = 0) {
	state = 1
	vspeed = 1

	// Sound:
	PlaySound(snd_object_destroy, global.SFXVolume, 1, 1);
}
               