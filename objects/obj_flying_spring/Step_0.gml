/// @description Handle Bouncing
// You can write your code in this editor
if (startBounce) {
	time = 360;
	startBounce = false;
	bounceStrength = 2;
}

if (superBounce) {
	time = 360;
	superBounce = false;
	bounceStrength = 4;
}

if (time > 0) {
	y = y - dsin(time) * bounceStrength;
	time -= 24;
}