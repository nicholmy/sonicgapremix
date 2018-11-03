/// @description Generate electricity randomly
// Consider the edges and the width of the electricity itself

if (makeElecFlag) {
	instance_create(random_range(x + 16, x + sprite_width - 32), y, obj_electricgenerator_electricity);
	PlaySound(snd_shield_use_electricity, global.SFXVolume, -1, true);

	alarm[0] = random_range(0,60);
}