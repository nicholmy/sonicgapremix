/// @description Manage ball positions

for (var i = chainLength - 1; i >= 0; i--;) {
	balls[i].x = x + dcos(rotAngle) * (ballOffset + ballDistance * i);
	balls[i].y = y - dsin(rotAngle) * (ballOffset + ballDistance * i);

	oppositeBalls[i].x = x + dcos(180 + rotAngle) * (ballOffset + ballDistance * i);
	oppositeBalls[i].y = y - dsin(180 + rotAngle) * (ballOffset + ballDistance * i);
}

rotAngle -= rotSpeed;

while (rotAngle > 360) rotAngle -= 360;
while (rotAngle < 0) rotAngle += 360;