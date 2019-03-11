/// @description Move the Door
if (isMoving) {
	if (isOpen) {
		y -= abs(moveSpeed);
	} else {
		y += abs(moveSpeed);
	}
	moveDistance += abs(moveSpeed);
		
	if (moveDistance >= totalMove) {
		isMoving = false;
	}
}

