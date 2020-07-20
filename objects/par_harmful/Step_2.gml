/// @description Move
// moveState of 0 is nothing/free movement
// moveState of 1 is moving
// moveState of 2 is deflected
if (moveState == 1) {
	// Add gravity as a force
	if (hasGravity) {
		YAccel += gravityVal
	}

	// Add forces to the object's speed...
	XSpeed += XAccel
	YSpeed += YAccel

	// Move
	hspeed = XSpeed
	vspeed = YSpeed

} else if (moveState == 2) {
	var NewSpeed = sqrt(sqr(hspeed) + sqr(vspeed));
    hspeed =  dcos(deflectAngle) * NewSpeed * 2;
    vspeed = -dsin(deflectAngle) * NewSpeed * 2;
}

if (canDie) currentAge++

if (currentAge >= endAge) instance_destroy()