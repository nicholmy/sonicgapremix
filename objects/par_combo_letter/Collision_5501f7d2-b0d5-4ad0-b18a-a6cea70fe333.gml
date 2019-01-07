/// @description Player is doing SONIC now

if (!obj_gap_manager.isDoingSONIC) {
	obj_gap_manager.isDoingSONIC = true;
}

if (obj_gap_manager.SONICList[SONICListPos] == 0) {
	obj_gap_manager.SONICList[SONICListPos] = 1;
	show_debug_message(string(SONICListPos))
	PlaySound(snd_object_switch, global.SFXVolume, 1, 1);
}