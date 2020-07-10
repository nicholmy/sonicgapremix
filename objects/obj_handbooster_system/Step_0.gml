/// @description State management
// State 0 - Hidden
// State 1 - Rising
// State 2 - Waiting
// State 3 - Falling
// State 4 - Grabbing
// State 5 - Grabbing + Spinning
// State 6 - Frozen

if (state == 0) {
	hand.x = x;
	hand.y = y + hand.sprite_height;
}

// If hidden or falling, rise again
if ((state == 0 or state == 3) and distance_to_object(par_character) <= 64) {
	state = 1;
}

if (state == 1) {
	hand.y -= 8;
}

// Don't rise too far
if (state == 1 and hand.y <= y) {
	state = 2;
}

if (state == 2) {
	hand.y = y;
}

// If waiting or rising, fall again
if ((state == 1 or state == 2) and distance_to_object(par_character) > 64) {
	state = 3;
}

if (state == 3) {
	hand.y += 8;
}

// Don't fall too far
if (state == 3 and hand.y >= y + hand.sprite_height) {
	state = 0;
}

// Grabbing the player
if (state == 4 or state == 5) {
	grabbedPlayer.x = x;
	grabbedPlayer.Allow_XMovement = 0;
	grabbedPlayer.Allow_YMovement = 0;
	grabbedPlayer.InputLock_S = 1;
	grabbedPlayer.LockTimer = 1;
	grabbedPlayer.InputLock_D = 1;
	
	grabbedPlayer.XSpeed = sign(launchDirection) * releaseSpeed;
	grabbedPlayer.OnWater = 0;
	
	grabbedPlayer.Action = ActionNormal;
	StopSound(snd_character_waterrun);
}

if (state == 4) {
	hand.isGrabbing = true;
	spinner.visible = false;
}

if (state == 5) {
	hand.isGrabbing = true;
	spinner.visible = true;
}

// Release the player
if (grabbedPlayer and grabbedPlayer.KeyAction_Pressed) {
	lockTimer = 10;
	
	hand.isGrabbing = false;
	
	// Release controls and movement
	grabbedPlayer.Allow_XMovement = 1;
	grabbedPlayer.Allow_YMovement = 1;
	grabbedPlayer.InputLock_S = 0;
	grabbedPlayer.LockTimer = 0;
	grabbedPlayer.InputLock_D = 0;
	
	grabbedPlayer.Ground = 0;
	
	if (grabbedPlayer.Underwater) {
		grabbedPlayer.XSpeed = 3;
		grabbedPlayer.YSpeed = -3;
	} else {
		grabbedPlayer.XSpeed = 5;
		grabbedPlayer.YSpeed = -5;
	}
	grabbedPlayer.XSpeed *= sign(launchDirection);
	grabbedPlayer.Action = ActionNormal;
	
	grabbedPlayer = 0;
	StopSound(snd_character_jump);
	
	if (state == 4) {
		state = 2;
	}
	
	if (state == 5) {
		state = 6;
	}
}


if (lockTimer > 0) lockTimer--;