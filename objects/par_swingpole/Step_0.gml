/// @description Swing! (And Release)
if (isSwinging) {
	// Move the char's center point to the pole
	swingChar.x = x;
	swingChar.y = y;
	swingChar.XSpeed = 0;
	swingChar.YSpeed = 0;
	//Set a control lock (the way you face changes the way the swing looks)
	swingChar.InputLock_L = 1;
	swingChar.InputLock_R = 1;
	swingChar.InputAlarm = 10;
	// Set the angle of the swing
	var adjustedSwing = (swingProgress + 720) % 360
	swingChar.AnimationFrame = floor(12 * (adjustedSwing / 360.0))
	
	// Move the swing
	// Regardless of direction, swingspeed needs to be positive
	swingProgress += abs(swingSpeed) * 2
	
	if (swingProgress >= 720) {
		isSwinging = false;
		swingChar.y = y + 24;
		swingChar.Ground = 1;
		swingChar.Action = swingChar.KeyDown ? ActionRolling : ActionNormal
		swingChar.XSpeed = 10
		// Release the control lock
		swingChar.InputLock_L = 0;
		swingChar.InputLock_R = 0;
		swingChar.InputAlarm = 0;
		
		// Lock the pole for a bit so you can't immediately hit it again
		LockTimer = 5
		
		swingChar.XSpeed = sign(swingSpeed) * clamp(abs(swingSpeed) + 1, 10, 16);
		
		if (swingChar.KeyDown) PlaySound(snd_character_roll, global.SFXVolume, 1, 1);
	}
}

if (LockTimer > 0) LockTimer--;

