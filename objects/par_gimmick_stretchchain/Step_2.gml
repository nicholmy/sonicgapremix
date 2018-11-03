/// @description Update the position of the chain links
// You don't draw the chain link at the first and last points, that's where the other objects are
// The last chain has to have a multiplier of 1, so considering how i works, must -1
for (var i = 0; i < chainNum; i++) {
	chainArr[i].x = (chainBeginX + (i / (chainNum - 1)) * (totalRadius * dcos(chainDirection)));
	chainArr[i].y = (chainBeginY + (i / (chainNum - 1)) * (totalRadius * -dsin(chainDirection)));
}