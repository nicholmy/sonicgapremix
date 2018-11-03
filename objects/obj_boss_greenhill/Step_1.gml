/// @description Handle Boss States

if (isSpawnFrame == true) {
	MoveState = "StartDown";
	isSpawnFrame = false;
}

if (MoveState == "StartDown") {
	XSpeed = 0;
	YSpeed = 1;
}

if (MoveState == "StartDown" && y >= MainHeightY) {
	MoveState = "StartLeft";
}

if (MoveState == "StartLeft") {
	XSpeed = -1;
	YSpeed = 0;
}

if (MoveState == "StartLeft" && x == CameraFocus.x) {
	XSpeed = 0;
	YSpeed = 0;
	chainBall.x = x;
	chainBall.y = y;
	chainBall.visible = true;

	MoveState = "PullDown";
}

if (MoveState == "PullDown") {
	for(i=0; i<chainLength; i++){
		chainRadius = chainLinkArr[i].sprite_height * (i+1);
		if (chainLinkArr[i].visible == false && chainBall.y > chainBase.y + chainRadius) {
			chainLinkArr[i].visible = true;
		}
	}
	chainBall.y += 1;
}


if (MoveState == "PullDown" && (chainBall.y >= chainBase.y + ballRadius)) {
	isSwinging = true;
	MoveState = "StartSwinging";
	show_debug_message("Chain Angle: " + string(chainAngle));
	show_debug_message("Pend Angle: " + string(pendulumAngle));
}

if (MoveState == "StartSwinging" || MoveState == "SwungAtLeastOnce") {
	XSpeed = -0.25;
}

if (MoveState == "StartSwinging" && chainAngle <= 10) {
	MoveState = "SwungAtLeastOnce";
}

if (MoveState == "SwungAtLeastOnce" && chainAngle == 90) {
	XSpeed = 0;
	AnimationDirection = 1;
	MoveState = "WaitRight";
}

if (MoveState == "WaitRight" && chainAngle == 180) {
	MoveState = "MoveRight";
}

if (MoveState == "MoveRight") {
	XSpeed = 1;
}

if (MoveState == "MoveRight" && chainAngle == 90) {
	XSpeed = 0;
	AnimationDirection = -1;
	MoveState = "WaitLeft";
}

if (MoveState == "WaitLeft" && chainAngle == 0) {
	MoveState = "MoveLeft";
}

if (MoveState == "MoveLeft") {
	XSpeed = -1;
}

if (MoveState == "MoveLeft" && chainAngle == 90) {
	XSpeed = 0;
	AnimationDirection = 1;
	MoveState = "WaitRight";
}