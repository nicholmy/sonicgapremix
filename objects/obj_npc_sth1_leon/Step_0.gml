/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (state == 0 && distance_to_object(par_character) < 128 && par_character.x < x) {
	state = 1;
	alarm[0] = 20;
}

if (state = 1 && distance_to_object(par_character) >= 128) {
	state = 0;
}