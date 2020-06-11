/// @description Spin!
// You can write your code in this editor
if (isSpinning && (par_character.Action == ActionHurt || par_character.Action == ActionDie)) isSpinning = false
if (isSpinning) {
	// Switch directions if at top
	if (par_character.y < y + switchYOffset) {
		par_character.y = y + switchYOffset 
		isGoingUp = false
	}
	
	// Switch directions if at bottom
	if (par_character.y > (y + sprite_height) - switchYOffset) {
		par_character.y = (y + sprite_height) - switchYOffset
		isGoingUp = true
	}
	
	// Move the character
	par_character.x = x + spinDirection * dsin(rotAngle * cycleSpd * 3) * 16
	// Derivative of the above function
	var xspeed = spinDirection * dcos(rotAngle * cycleSpd * 3) / (3 * cycleSpd) * 16
	
	if (isGoingUp) par_character.YSpeed = -verticalSpd
	else par_character.YSpeed = verticalSpd
	
	rotAngle = (rotAngle + 1) % 360
	par_character.ShieldUsable = false;
	par_character.Action = ActionJump;
	par_character.Ground = false;
	
	//if (xspeed > 0) depth = spinDirection * -1;
	//else if (xspeed < 0) depth = spinDirection * 1;
	
	if (xspeed > 0) par_character.layer = layer_get_id("Front_Instances");
	else if (xspeed < 0) par_character.layer = layer_get_id("Back_Instances");
	
	// For camera purposes!
	if (par_character.KeyRight) par_character.XSpeed = launchXSpd;
	else if (par_character.KeyLeft) par_character.XSpeed = -launchXSpd;
	else par_character.XSpeed = 0;
	
	// Getting out of the grab state
	if (par_character.KeyAction_Pressed) {
		par_character.XSpeed = launchXSpd * sign(xspeed);
		par_character.YSpeed = 0;
		par_character.ShieldUsable = true;
		par_character.layer = layer_get_id("Instances");
		
		isSpinning = false;
		lockTimer = 30;
		PlaySound(snd_character_jump, global.SFXVolume, 1, 1);
	}
}
if (lockTimer > 0) lockTimer--;