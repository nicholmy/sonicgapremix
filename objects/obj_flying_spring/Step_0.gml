/// @description Handle Bouncing
// You can write your code in this editor
if (startBounce) {
	time = 360;
	startBounce = false;
	bounceStrength = strength;
}

if (superBounce) {
	time = 360;
	superBounce = false;
	bounceStrength = superStrength;
}

if (time > 0) {
	y = y - dcos(time) * bounceStrength/2;
	time -= 24;
}