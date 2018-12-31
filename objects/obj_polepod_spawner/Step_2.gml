/// @description Animation & Depth

if (MoveState == 0) {
	doorObj.image_index = 11;
} else if (MoveState == 1) {
	doorObj.image_index = 12 * (((CompareAngle + 15) mod 360) / 360)
	CharacterID.AnimationFrame = doorObj.image_index;
} else if (MoveState == 2 and Momentum < -1) {
	doorObj.image_index = 12 * (((CompareAngle + 15) mod 360) / 360)	
}

if (MoveState = 1 or MoveState = 2) {
	if (CompareAngle > 90 and CompareAngle < 270) {
		outsideObj.depth = 7;
		insideObj.depth = 6;
		if (MoveState = 1) CharacterID.depth = 5;
		doorObj.depth = 4;
	
	} else {
		outsideObj.depth = 2;
		insideObj.depth = 1;
		if (MoveState = 1) CharacterID.depth = 0;
		doorObj.depth = -1;
	}
}