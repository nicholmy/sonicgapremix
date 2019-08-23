/// @description Insert description here
// You can write your code in this editor
if (swingMode == 0) {
	XSpeed = 0
}
if (swingMode == 1) {
	var onLeftHalf = rotAngle > 90 && rotAngle < 270
	if ((rotSpeed < 0 && onLeftHalf) || (rotSpeed > 0 && !onLeftHalf )) rotSpeed = -rotSpeed
}
