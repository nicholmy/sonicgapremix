/// @description Set the path
var topX = x
var topY = y

// Top Circle Movement
if (plat1.progress >= 0 && plat1.progress < 180) {
	plat1.x = topX + 32 * dcos(plat1.progress + 180);
	plat1.y = topY + 32 * dsin(plat1.progress + 180);
}

var rightX = topX + 32
var rightY = topY

// Right (Top to bottom) Rope Movement
if (plat1.progress >= 180 && plat1.progress < 500) {
	plat1.x = rightX
	plat1.y = rightY + (plat1.progress - 180)
}

var bottomX = x
var bottomY = y + 320

// Bottom Circle Movement
if (plat1.progress >= 500 && plat1.progress < 680) {
	// Start at angle 360 and move down angles
	plat1.x = bottomX + 32 * dcos(plat1.progress - 500);
	plat1.y = bottomY + 32 * dsin(plat1.progress - 500);
}

var leftX = bottomX - 32
var leftY = bottomY

// Left (Bottom to top) Rope Movement
if (plat1.progress >= 680 && plat1.progress < 1000) {
	plat1.x = leftX
	plat1.y = leftY - (plat1.progress - 680)
}

plat1.progress = (plat1.progress + pathSpeed) % 1000;