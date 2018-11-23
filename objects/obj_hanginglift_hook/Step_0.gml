/// @description Handle moving and stop sounds
depth = 5;

if (isTriggered) {
	alarm[0] = 10;
	isTriggered = false;
}

if (isMoving && inUse && y > originY - liftDistance) {
	y -= moveSpeed;
} else if (isMoving && inUse) {
	isMoving = false;
	StopSound(snd_object_machine_rod);
}


if (!inUse && y < originY) {	
	y += moveSpeed;
} else if (!inUse) {
	isMoving = false;
	StopSound(snd_object_machine_rod);
}