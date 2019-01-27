/// @description Close the Door
if (isOpen && !isMoving) {
	isOpen = false;
	isMoving = true;
	moveDistance = 0;
}