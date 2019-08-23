/// @description Start Spinning
if (!isSpinning && lockTimer == 0 && other.Action != ActionHurt && other.Action != ActionDie) {
	isSpinning = true;
	isGoingUp = true;
	
	other.ShieldUsable = false;
	par_character.Action = ActionJump;
	
	if (spinDirection > 0) {
		
		if (other.x > x) rotAngle = 90
		else rotAngle = 270
	} else if (spinDirection < 0) {
		if (other.x > x) rotAngle = 270
		else rotAngle = 90
	}
	
	// Put the character in position
	other.x = x + spinDirection * dsin(rotAngle * cycleSpd * 3) * 16
}
