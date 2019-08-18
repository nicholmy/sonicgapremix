/// @description Grabbing behavior
// You can write your code in this editor
if (isGrabbing) {
	image_index = 1;

	par_character.x = x + offsetX;
	par_character.y = y + offsetY;
	par_character.YSpeed = 0;
	par_character.XSpeed = 0;
	par_character.Action = ActionJump;
	par_character.ShieldUsable = false;
	
	if (par_character.KeyAction_Pressed) {
		par_character.XSpeed = XSpeed;
		par_character.YSpeed = YSpeed + par_character.JumpStrength;
		par_character.ShieldUsable = true;
		
		isGrabbing = false;
		lockTimer = 30;
		PlaySound(snd_character_jump, global.SFXVolume, 1, 1);
	}
} else {
	image_index = 0;
}

if (lockTimer > 0) lockTimer--;