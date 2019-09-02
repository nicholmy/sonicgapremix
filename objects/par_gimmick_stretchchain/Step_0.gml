/// @description Update the beginning, chain link, and ending positions

// Update the base positions of everything in case this object moves
beginObj.x = x;
beginObj.y = y;
endObj.baseX = x;
endObj.baseY = y;

var chainDirection = point_direction(x, y, endObj.x, endObj.y);

var chainBeginX = x + beginRadius * dcos(chainDirection);
var chainBeginY = y + beginRadius * -dsin(chainDirection);

var chainDirectionToStart = point_direction(endObj.x, endObj.y, x, y);

var chainEndX = endObj.x + endRadius * dcos(chainDirectionToStart);
var chainEndY = endObj.y + endRadius * -dsin(chainDirectionToStart);

var totalRadius = point_distance(chainBeginX, chainBeginY, chainEndX, chainEndY);

// Update the position of the chain links
// You don't draw the chain link at the first and last points, that's where the other objects are
// The last chain has to have a multiplier of 1, so considering how i works, must -1
for (var i = 0; i < chainNum; i++) {
	chainArr[i].x = (chainBeginX + (i / (chainNum - 1)) * (totalRadius * dcos(chainDirection)));
	chainArr[i].y = (chainBeginY + (i / (chainNum - 1)) * (totalRadius * -dsin(chainDirection)));
}

