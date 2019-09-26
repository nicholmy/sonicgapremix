/// @description State Handling
// You can write your code in this editor
// State 0 - Walking
// State 1 - Readying
// State 2 - Throwing
// State 3 - In Panic
if (state == 0) {
	XSpeed = -0.125
	//x = x - 0.125
	
	leftClaw.x = x-8
	leftClaw.y = y+8
	leftClaw.centerX = leftClaw.x - 56
	leftClaw.centerY = leftClaw.y
	// To make sure the claw doesn't die while the slicer holds it
	leftClaw.currentAge = 0
	
	rightClaw.x = x+8
	rightClaw.y = y+8
	rightClaw.centerX = rightClaw.x - 56
	rightClaw.centerY = rightClaw.y
	rightClaw.currentAge = 0
	
	if (distance_to_object(par_character) < 100) {
		alarm[0] = 30
		state = 1;
	}
}

if (state == 1) {
	XSpeed = 0
	image_speed = 4
	
	leftClaw.image_index = 3
	rightClaw.image_index = 3
	
	leftClaw.x = x-24
	leftClaw.y = y-8
	
	rightClaw.x = x-8
	rightClaw.y = y-8
}

if (state == 2) {
	image_index = 0
	image_speed = 0
	
	// IF both claws got deflected, PANIC
	if (leftClaw.moveState == 2 && rightClaw.moveState == 2) {
		state = 3
	}
}

if (state == 3) {
	image_speed = 4
}