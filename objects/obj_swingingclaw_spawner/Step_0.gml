/// @description Insert description here
// rotAngle of 90 is down, 270 is up. So calculate in the other direction (counterclockwise)
// swingMode of 0 is the free swing, when the player initially is grabbed
// swingMode of 1 is the circular swing, after the chain hits its max length
if (claw.swingMode == 0) {
	var nextClawDist = point_distance(baseX, baseY, claw.x + claw.XSpeed, claw.y + claw.YSpeed)
	var curClawAng = point_direction(baseX, baseY, claw.x + claw.XSpeed, claw.y + claw.YSpeed)
	
	// If the claw would move out the chain...
	if (nextClawDist > chainLength) {
		// You hit the edge of the chain so basically cap your movement
		claw.x = baseX + dcos(curClawAng) * chainLength
		claw.y = baseY - dsin(curClawAng) * chainLength
		
		//show_debug_message("Dist: " + string(nextClawDist))
		//show_debug_message("Angle: " + string(curClawAng))
		
		if (curClawAng > 0 && curClawAng < 180) {
			claw.YSpeed += 0.25
		
			claw.x += claw.XSpeed
			claw.y += claw.YSpeed
		} else {
			claw.swingMode = 1
			rotAngle = curClawAng
			var rotBonus = rotSpeed + claw.XSpeed * dcos(rotAngle) - claw.YSpeed * dsin(rotAngle)
			//show_debug_message("Rotation Boost: " + string(rotBonus))
			rotSpeed = rotBonus
			
		}
	} else {
		claw.YSpeed += 0.25
		
		claw.x += claw.XSpeed
		claw.y += claw.YSpeed
	}
}

if (claw.swingMode == 1) {
	claw.x = baseX + dcos(rotAngle) * chainLength
	claw.y = baseY - dsin(rotAngle) * chainLength
	
	if (claw.isGrabbing) {
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

	// Make sure rotation stays between 0 and 360
	rotAngle = clamp(rotAngle, 180, 360)
	claw.XSpeed = -1 * rotSpeed * dsin(rotAngle)
	claw.YSpeed = -1 * rotSpeed * dcos(rotAngle)
}
