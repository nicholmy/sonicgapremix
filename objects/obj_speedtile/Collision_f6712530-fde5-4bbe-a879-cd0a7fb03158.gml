/// @description Insert description here
// You can write your code in this editor
if (other.Action != ActionHurt && other.Action != ActionDie) {
	if (isRight) {
		if (other.XSpeed >= 0) other.XSpeed += 0.3 
		if (other.XSpeed < 0) other.XSpeed += 0.06
	} else {
		if (other.XSpeed >= 0) other.XSpeed -= 0.06 
		if (other.XSpeed < 0) other.XSpeed -= 0.3
	}

	if (soundTimer == 0) PlaySound(snd_object_accelerator, global.SFXVolume, 1, 1);
	soundTimer = 20
}