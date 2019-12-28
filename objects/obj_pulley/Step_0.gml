/// @description Set the path
/*var topX = x
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

plat1.progress = (plat1.progress + pathSpeed) % 1000; */

var topX = x
var topY = y

var rightX = topX + 32
var rightY = topY

var bottomX = x
var bottomY = y + 320

var leftX = bottomX - 32
var leftY = bottomY

for (var i = 0; i < array_length_1d(platArr); i++) {
	// Top Circle Movement
	if (platArr[i].progress >= 0 && platArr[i].progress < 180) {
		platArr[i].x = topX + 32 * dcos(platArr[i].progress + 180);
		platArr[i].y = topY + 32 * dsin(platArr[i].progress + 180);
	}

	// Right (Top to bottom) Rope Movement
	if (platArr[i].progress >= 180 && platArr[i].progress < 500) {
		platArr[i].x = rightX
		platArr[i].y = rightY + (platArr[i].progress - 180)
	}

	// Bottom Circle Movement
	if (platArr[i].progress >= 500 && platArr[i].progress < 680) {
		// Start at angle 360 and move down angles
		platArr[i].x = bottomX + 32 * dcos(platArr[i].progress - 500);
		platArr[i].y = bottomY + 32 * dsin(platArr[i].progress - 500);
	}

	// Left (Bottom to top) Rope Movement
	if (platArr[i].progress >= 680 && platArr[i].progress < 1000) {
		platArr[i].x = leftX
		platArr[i].y = leftY - (platArr[i].progress - 680)
	}
	
	if (platArr[i].progress < 0) platArr[i].progress += maxPathLength;
	platArr[i].progress = (platArr[i].progress + Direction * pathSpeed) % maxPathLength;
}
