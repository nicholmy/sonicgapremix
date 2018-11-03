/// @description Swing the ball and chain

// Move the ball
spikeBall.y = y + (ballDistance)*dcos(swingAngle);

chainOffset = sprite_height/2 + 1;
// Move the chain
for(var i = 0; i < chainLength; i++) {
	period = (i+1)*chainLinkArr[i].sprite_height;
	chainLinkArr[i].y = y + period*dcos(swingAngle);
	chainLinkArr[i].y -= chainLinkArr[i].sprite_height/2;
}

// Calculate the literal movement speed on the screen
swingSpeed = ballDistance *-dsin(swingAngle);
swingDirection = 1;
if (swingSpeed < 0) {
	swingDirection = -1;
}

depth = 0;
for(var i = 1; i <= chainLength; i++) {
	chainLinkArr[i-1].depth = i * swingDirection;
}
spikeBall.depth = swingDirection * (chainLength + 1);


// Sound effects (only in earshot)
if ((swingAngle == 0 || swingAngle == 180) && abs(x - par_character.x) < 500 && abs(y - par_character.y) < 500) {
	PlaySound(snd_object_spike_chain_swing, global.SFXVolume, 1, 1);   
}

// Rotate the whole chain
swingAngle += rotationSpeed;

// Reset the chain's angle after a whole swing
if (swingAngle >= 360) {
	swingAngle = 0;
}