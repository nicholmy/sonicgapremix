/// @description Insert description here
// You can write your code in this editor
if (lockTimer > 0) lockTimer = max(lockTimer - 1,0);

if (isGrabbing) {
	par_character.x = x + 32 * dcos(image_angle)
	par_character.y = y - 32 * dsin(image_angle)
	par_character.Action = ActionJump;
	par_character.AnimationSpeed = 2;
	par_character.InputAlarm = 1;
	par_character.XSpeed = 0;
	par_character.YSpeed = 0;
	
	if (image_angle == 0 || image_angle == 270) {
		PlaySound(snd_character_roll, global.SFXVolume, 1, 1);
		par_character.x = x + 64 * dcos(image_angle)
		par_character.y = y - 64 * dsin(image_angle)
		par_character.XSpeed = 10 * dcos(image_angle)
		par_character.YSpeed = 10 * -dsin(image_angle)
		isGrabbing = false;
		par_character.InputAlarm = 0;
		lockTimer = 30;
	}
}