/// @description Bounce
// You can write your code in this editor
bounceChar.XSpeed = bounceXSpeed
if (bounceChar.KeyAction) {
	bounceChar.YSpeed = min(bounceYSpeed, maxBounceYSpeed);
	bounceChar.Action = ActionSpring
}
else {
	bounceChar.YSpeed = maxBounceYSpeed
	bounceChar.Action = ActionRolling
}



isBouncing = false;

bounceChar.InputLock_S = 1;
bounceChar.InputAlarm = 10;

PlaySound(snd_object_mushroombounce, global.SFXVolume, 1, 1);