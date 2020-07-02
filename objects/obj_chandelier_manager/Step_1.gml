/// @description Set the platform's position
// Doing it in the before step prevents stuttering when moving
platform.y = floor(y + 48 + chainLength);