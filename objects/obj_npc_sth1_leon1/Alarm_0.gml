/// @description Insert description here
// You can write your code in this editor
if (state == 1 || state == 2) {
	fireball = instance_create(x-32, y-10, obj_npc_sth1_leon_fireball)
	fireball.hspeed = -1
	
	alarm[0] = 120;
	state = 2;
	alarm[1] = 10;
	PlaySound(snd_object_projectile, global.SFXVolume, 1, 1);
}