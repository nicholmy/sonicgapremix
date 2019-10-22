/// @description Move Left/Right
// You can write your code in this editor
x = baseX + radius * dsin(rotAngle);

rotAngle += rotSpeed;

while (rotAngle < 0) rotAngle += 360;

rotAngle = rotAngle % 360;