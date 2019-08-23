/// @description Handle the free and circular swing modes
// rotAngle of 90 is down, 270 is up. So calculate in the other direction (counterclockwise)
// swingMode of 0 is the free swing, when the player initially is grabbed
// swingMode of 1 is the circular swing, after the chain hits its max length
if (swingMode == 0) {
	// Predict where the claw will be next step
	var nextClawDist = point_distance(baseX, baseY, x + XSpeed, y + YSpeed)
	var curClawAng = point_direction(baseX, baseY, x + XSpeed, y + YSpeed)
	
	// If the claw would move out the chain...
	if (nextClawDist > chainLength) {
		// You hit the edge of the chain so basically cap your movement
		x = baseX + dcos(curClawAng) * chainLength
		y = baseY - dsin(curClawAng) * chainLength
		
		show_debug_message("Dist: " + string(nextClawDist))
		show_debug_message("Angle: " + string(curClawAng))
		
		if (curClawAng > 0 && curClawAng < 180) {
			YSpeed += 0.25
		
			x += XSpeed
			y += YSpeed
		} else {
			swingMode = 1
			rotAngle = curClawAng
			var rotBonus = rotSpeed + XSpeed * dcos(rotAngle) - YSpeed * dsin(rotAngle)
			show_debug_message("XSpeed: "  + string(XSpeed))
			show_debug_message("YSpeed: "  + string(YSpeed))
			show_debug_message("Rotation Speed: " + string(rotBonus))
			rotSpeed = rotBonus
			
		}
	} else {
		YSpeed += 0.25
		
		x += XSpeed
		y += YSpeed
	}
}

if (swingMode == 1) {
	x = baseX + dcos(rotAngle) * chainLength
	y = baseY - dsin(rotAngle) * chainLength
	
	if (isGrabbing) {
		// The player can influence the chain, but eventually gravity will get more intense
		if (par_character.KeyRight) {
			rotAngle += playerSpeed
			//rotSpeed -= 0.2
		} else if (par_character.KeyLeft) {
			rotAngle -= playerSpeed
			//rotSpeed += 0.2
		}
	}
	
	var restAngle = 270

	// Accelerate towards rest thanks to gravity
	if (rotAngle > 90 && rotAngle < restAngle) {
		rotSpeed += 0.2
	} else {
		rotSpeed -= 0.2
	}

	// Friction (so the pendulum doesn't endlessly swing back and forth
	if (rotSpeed > 0.05) rotSpeed = rotSpeed - 0.05
	else if (rotSpeed < -0.05) rotSpeed = rotSpeed + 0.05
	else rotSpeed = 0

	
	// Cap the overall rotation speed so it doesn't get out of control
	rotSpeed = clamp(rotSpeed, -1 * rotSpdMax, rotSpdMax)

	rotAngle += rotSpeed

	// Make sure rotation stays between 180 and 360
	rotAngle = clamp(rotAngle, 180, 360)
	
	XSpeed = -1 * rotSpeed * dsin(rotAngle)
	YSpeed = -1 * rotSpeed * dcos(rotAngle)
}

if (isGrabbing) {
	image_index = 1;

	par_character.x = x + playerOffsetX;
	par_character.y = y + playerOffsetY;
	par_character.YSpeed = 0;
	par_character.XSpeed = 0;
	par_character.Action = ActionJump;
	par_character.ShieldUsable = false;
	
	// Getting out of the grab state
	if (par_character.KeyAction_Pressed) {
		par_character.XSpeed = XSpeed;
		par_character.YSpeed = clamp(YSpeed + par_character.JumpStrength, -par_character.YSpeed_Max, par_character.JumpStrength);
		//par_character.YSpeed = min(YSpeed + par_character.JumpStrength, par_character.JumpStrength);
		show_debug_message("Jump XSpeed: " + string(par_character.XSpeed))
		show_debug_message("Jump YSpeed: " + string(par_character.YSpeed))
		par_character.ShieldUsable = true;
		
		isGrabbing = false;
		lockTimer = 30;
		PlaySound(snd_character_jump, global.SFXVolume, 1, 1);
	}
} else {
	image_index = 0;
}

if (lockTimer > 0) lockTimer--;


