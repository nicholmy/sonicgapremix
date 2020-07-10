/// @description Lower the grabber (and release + shoot the player)
state = 2;

hand.y += 24;
hand.isGrabbing = false;

spinner.y += 23;
spinner.visible = false;

lockTimer = 10;

if (grabbedPlayer) {
	grabbedPlayer.y += 23;
	
	// Release controls and movement
	grabbedPlayer.Allow_XMovement = 1;
	grabbedPlayer.Allow_YMovement = 1;
	grabbedPlayer.InputLock_S = 0;
	grabbedPlayer.InputLock_L = 0;
	grabbedPlayer.InputLock_R = 0;
	grabbedPlayer.LockTimer = 0;
	grabbedPlayer.InputLock_D = 0;
	
	grabbedPlayer.XSpeed = sign(launchDirection) * releaseSpeed;
	grabbedPlayer.YSpeed = 0;
	
	if (grabbedPlayer.KeyDown) {
		grabbedPlayer.Action = ActionRolling;
	} else {
		grabbedPlayer.Action = ActionNormal;
	}
	
	grabbedPlayer = 0;
	PlaySound(snd_character_spindash_release, global.SFXVolume, 1, 1);
}
