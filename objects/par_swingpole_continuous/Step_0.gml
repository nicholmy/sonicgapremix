/// @description Swing! (And Release)
if (isSwinging) {
	// Move the char's center point to the pole
	swingChar.x = x;
	if (!isFalling) swingChar.YSpeed = 0;
	else swingChar.YSpeed = 1;
	
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
	
	if (swingChar.KeyRight_Pressed) {
		isSwinging = false;
		swingChar.Action = ActionRolling
		
		// Release the control lock
		swingChar.InputLock_L = 0;
		swingChar.InputLock_R = 0;
		swingChar.InputAlarm = 0;
		
		// Lock the pole for a bit so you can't immediately hit it again
		LockTimer = 5
		
		swingChar.XSpeed = 10;
	}
	
	if (swingChar.KeyLeft_Pressed) {
		isSwinging = false;
		swingChar.Action = ActionRolling
		
		// Release the control lock
		swingChar.InputLock_L = 0;
		swingChar.InputLock_R = 0;
		swingChar.InputAlarm = 0;
		
		// Lock the pole for a bit so you can't immediately hit it again
		LockTimer = 5
		
		swingChar.XSpeed = -10;
	}
	
	if (swingChar.Action == ActionDie || swingChar.Action == ActionHurt) {
		isSwinging = false;
		swingChar.InputLock_L = 0;
		swingChar.InputLock_R = 0;
		swingChar.InputAlarm = 0;
		
		// Lock the pole for a bit so you can't immediately hit it again
		LockTimer = 5
	}
	
	if (swingChar.y > y + sprite_height) {
		isSwinging = false;
		swingChar.Action = ActionRolling
		
		// Release the control lock
		swingChar.InputLock_L = 0;
		swingChar.InputLock_R = 0;
		swingChar.InputAlarm = 0;
		
		// Lock the pole for a bit so you can't immediately hit it again
		LockTimer = 5
	}
}

if (LockTimer > 0) LockTimer--;

