/// @description Swing! (And Release)
if (isSwinging) {
	// Move the char's center point to the pole
	swingChar.x = x;
	swingChar.y = y;
	swingChar.XSpeed = 0;
	swingChar.YSpeed = 0;
	
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
		// Lock the player like any other spring
		swingChar.InputLock_S = 1;
        swingChar.LockTimer = 16;
		
		// Lock the pole for a bit so you can't immediately hit it again
		LockTimer = 5
		
		swingChar.XSpeed = sign(swingSpeed) * clamp(abs(swingSpeed) + 1, 10, 16);
		
		if (swingChar.KeyDown) PlaySound(snd_character_roll, global.SFXVolume, 1, 1);
	}
}

if (LockTimer > 0) LockTimer--;

