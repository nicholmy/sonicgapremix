/// @description Insert description here
if (state == 0) {
	PlaySound(snd_scoring_largeGap, global.SFXVolume, 1, 1);
	
	state = 1;
	
	speed = 2;
	direction = 90;
	
	image_speed *= 2;
	alarm[0] = 20;
	
	with (obj_bonuscondition_getallrings) {
		timerStart = false;
	}
	
	with (obj_bonuscondition_gettoring) {
		timerStart = false;
	}
}