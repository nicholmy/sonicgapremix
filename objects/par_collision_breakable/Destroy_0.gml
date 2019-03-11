/// @description Make sounds and give points
PlaySound(snd_object_destroy, global.SFXVolume, 1, 1);

if (instance_exists(obj_gap_manager)) {
	obj_gap_manager.pointsAwarded += 10;
	obj_gap_manager.alarm[1] = 1;
	instance_create(x + sprite_width/2, y + sprite_height/2, obj_effect_score);
}

if (instance_exists(spawnerRef)) {
	show_debug_message("Spawner knows the rock is destroyed!");
	(spawnerRef).isRockSpawned = false;
	
}
