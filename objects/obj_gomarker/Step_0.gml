/// @description Insert description here
// You can write your code in this editor
if (isSpinning) {
	spinSpeed -= 0.05
}

if (spinSpeed < 0) {
	spinSpeed = 0;
}

if (spinSpeed <= 0) {
	isSpinning = false;
}