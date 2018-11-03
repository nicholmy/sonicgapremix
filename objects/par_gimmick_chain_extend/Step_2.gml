/// @description Determine positions of the chain links
// Draw from the bottom up
for (var i = 0; i < chainNum; i++) {
	chainLst[| i].x = chainEndX - i * chainLinkHeight * -dcos(chainDirection);
	chainLst[| i].y = chainEndY - i * chainLinkHeight * -dsin(chainDirection);
}