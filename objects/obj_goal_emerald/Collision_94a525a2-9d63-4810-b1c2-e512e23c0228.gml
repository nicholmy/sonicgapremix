/// @description Trigger End of Level
if(other.Action != ActionDie) {
	PlaySound(snd_object_emerald, global.SFXVolume, 1, 1);
	global.DoTime       = 0;
	obj_level_controller.alarm[1] = 180;
	instance_destroy();
}