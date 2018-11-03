/// @description Blow the character up

if (other.Ground) {
	other.Ground = false;
}

// Gliding into up fans forces you to pull up
if (other.Action == ActionSquirrelGlide) {
	other.GlideAngle = 45;
	other.GlideAngleDirection = -1;
	other.YSpeed = maxSpeed;
	other.GSpeed = 1;
} else {
	// Always go at least up
	other.YSpeed = min(0, other.YSpeed - 0.1 * fanStrength);
	other.Action = ActionFan;
}


// Cap the speed
other.YSpeed = max(other.YSpeed, maxSpeed);

with(obj_fan_up) {
	isActivated = true;
}

