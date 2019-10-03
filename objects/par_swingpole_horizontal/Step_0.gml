/// @description Swing! (And Release)
if (isSwinging) {
	// Move the char's center point to the pole
	swingChar.y = y;
	swingChar.XSpeed = 0;
	swingChar.YSpeed = 0;
	swingChar.AnimationAngle = 95;
	swingChar.AnimationDirection = -sign(swingSpeed);
	// Lock the player like any other spring
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

		swingChar.YSpeed = sign(swingSpeed) * clamp(abs(swingSpeed) + 2, 7, 16);

		if (swingChar.YSpeed < 0) {
			// Force the player into the vulnerable spring anim afterwards
			swingChar.Action = ActionSpring;
			swingChar.Animation = "SPRING"
		} else {
			// Force the player into a roll afterwards
			swingChar.Action = ActionRolling;
			swingChar.Animation = "ROLL"
		}
		
		swingChar.AnimationAngle = 0;
		swingChar.AnimationDirection = 1;
		
		swingChar.InputLock_L = 0;
		swingChar.InputLock_R = 0;
		swingChar.InputAlarm = 0;
		// Lock the pole for a bit so you can't immediately hit it again
		LockTimer = 5
		
		
		swingChar.AnimationSpeed = swingChar.YSpeed
		
		if (swingChar.KeyDown) PlaySound(snd_character_roll, global.SFXVolume, 1, 1);
	}
}

if (LockTimer > 0) LockTimer--;

