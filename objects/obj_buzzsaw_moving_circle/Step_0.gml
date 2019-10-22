/// @description Rotate!
// You can write your code in this editor
x = baseX + radius * dcos(rotAngle);
y = baseY - radius * dsin(rotAngle);

rotAngle += rotSpeed;

while (rotAngle < 0) rotAngle += 360;

rotAngle = rotAngle % 360;