/// @description Manage States
// You can write your code in this editor
if (isBouncing) {
	bounceChar.XSpeed = 0;
	bounceChar.YSpeed = 0;
	image_index = 1;
} else {
	image_index = 0;
}

if (LockTimer > 0) LockTimer--;