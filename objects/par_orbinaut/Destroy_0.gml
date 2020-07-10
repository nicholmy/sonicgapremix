/// @description Destroy the spike balls too
// You can write your code in this editor

// Inherit the parent event
event_inherited();

for (var i = 0; i < array_length_1d(spikes); i++) {
	instance_destroy(spikes[i]); 
}