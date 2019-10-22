/// @description Bounce
// You can write your code in this editor
bounceChar.XSpeed = bounceXSpeed

if (bounceState == 0) {
	bounceChar.YSpeed = -6;
	bounceChar.Action = ActionRolling;
} else if (bounceState == 1) {
	bounceChar.YSpeed = -8;
	bounceChar.Action = ActionNormal;
	bounceChar.Animation = "ROTATION_1";
} else if (bounceState == 2) {
	bounceChar.YSpeed = -10;
	bounceChar.Action = ActionSpring;
}

with (obj_mushroom_triplejump) {	
	bounceState = (bounceState + 1) % 3
}

isBouncing = false;

bounceChar.InputLock_S = 1;
bounceChar.InputAlarm = 10;

PlaySound(snd_object_mushroombounce, global.SFXVolume, 1, 1);