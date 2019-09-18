/// @description Spawn electricity

image_index = 1

// Left electricity
instance_create(x-8, y+electricYOffset, obj_electricshocker_elect)

// Right electricity
elec2 = instance_create(x+8, y+electricYOffset, obj_electricshocker_elect)
elec2.image_xscale = -1

PlaySound(snd_shield_use_electricity, global.SFXVolume, -1, true);

alarm[0] = shockFreq
alarm[1] = 3