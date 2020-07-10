/// @description Reposition the spikes

// Inherit the parent event
event_inherited();

//speed = -0.25;
//direction = 0;

for (var i = 0; i < array_length_1d(spikes); i++) {
	spikes[i].x = x + spikeRadius * dcos(spikeAngle + 90*i)
	spikes[i].y = y - spikeRadius * dsin(spikeAngle + 90*i);
}