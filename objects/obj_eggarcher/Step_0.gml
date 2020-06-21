/// @description State Management
// 0 - Idle
// 1 - Preparing to Fire
// 2 - Firing
// Wake up when in range
if (state == 0 && point_distance(x, y, par_character.x, par_character.y) < triggerDistance && par_character.Action != ActionDie) {
	state = 1
	currentImage = 0
}

// Begin firing when moving out of range, start timer to reset
if (state == 1 && point_distance(x, y, par_character.x, par_character.y) >= triggerDistance && par_character.Action != ActionDie) {
	state = 2
	currentImage = 0
	
	alarm[0] = 30;
	
	arrow = instance_create(x, y+4, obj_eggarcher_arrow)
	arrow.layer = layer_get_id("Back_Instances");
	
	PlaySound(snd_object_flame, global.SFXVolume, -1, true);
}


if (state == 0) {
	imageMax = 1
	imageSpeed = 0
} else if (state == 1) {
	imageMax = 2
	imageSpeed = 0.15
} else if (state == 2) {
	imageMax = 5
	imageSpeed = 0.15
}
