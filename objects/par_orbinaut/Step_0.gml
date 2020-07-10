/// @description State Management
// State 0 = Detracted spikes
// State 1 = Extending spikes
// State 2 = Extended spikes
// State 3 = Detracting spikes

// Inherit the parent event (Lower the spike timer)
event_inherited();

if (state == 0) {
	spikeRadius = minSpikeRadius;
	
	// Don't extend if the flag isn't set
	if (isExtendable and distance_to_object(par_character) < senseDistance and par_character.Action != ActionDie) {
		state = 1;
	}
}

if (state == 1) {
	spikeRadius += spikeExtendSpeed;
	
	if (spikeRadius >= maxSpikeRadius) {
		state = 2;
	}
}

if (state == 2) {
	spikeRadius = maxSpikeRadius;
	
	if (distance_to_object(par_character) > senseDistance and par_character.Action != ActionDie) {
		state = 3;
	}
}

if (state == 3) {
	spikeRadius -= spikeExtendSpeed;
	
	if (spikeRadius <= minSpikeRadius) {
		state = 0;
	}
}

if (trackPlayer) {
	if (par_character.x > x) {
		image_xscale = -1;
	} else if (par_character.x < x) {
		image_xscale = 1;
	}
}

spikeAngle += rotateSpeed;