/// @description  scr_character_handle_hammerables()
 // Script to handle tiles that can be hammer dropped.

_ObjectHandle = scr_character_collision_object(x, y+16, par_collision_hammerable);

if (Action == ActionHammerDrop && _ObjectHandle != noone){
	// Destroy the object:
	with(_ObjectHandle){
		// Sound:
		PlaySound(snd_object_destroy, global.SFXVolume, 1, 1);
		instance_destroy();
	}
	Ground = 0;
}

