/// @description Insert description here

// Inherit the parent event
event_inherited();

isScared = !par_character.Ground;

if (isScared) XSpeed = 0;
else if (!isScared and image_xscale == 1) XSpeed = 1;
else if (!isScared and image_xscale == -1) XSpeed = -1;