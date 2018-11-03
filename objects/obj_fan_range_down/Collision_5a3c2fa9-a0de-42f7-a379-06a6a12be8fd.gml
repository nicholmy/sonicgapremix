/// @description Blow the character down

if (other.Ground) {
	other.Ground = false;
}

// Gliding into down fans forces you to dive down
if (other.Action == ActionSquirrelGlide) {
	other.GlideAngle = -45;
	other.GlideAngleDirection = 1;
	other.YSpeed = maxSpeed;
	other.GSpeed = 1;
} else {
	// Always go at least down
	other.YSpeed = max(0, other.YSpeed + 0.1 * fanStrength);
	other.Action = ActionFan;
}


// Cap the speed
other.YSpeed = min(other.YSpeed, maxSpeed);

with(obj_fan_down) {
	isActivated = true;
}

