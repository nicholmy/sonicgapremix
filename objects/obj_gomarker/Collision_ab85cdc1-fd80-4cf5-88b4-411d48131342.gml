/// @description Start spinning on collision
if (!isSpinning and other.XSpeed > minSpeed) {
	PlaySound(snd_object_checkpoint, global.SFXVolume, 1, 1);
	
	spinSpeed = other.XSpeed;
	isSpinning = true;
}
