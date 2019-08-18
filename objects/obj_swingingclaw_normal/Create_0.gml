/// @description Initialize the base, chain, and claw
// When inheriting this event, just change the objects used
// The array is what makes this have to be overwritten
beginObj = instance_create(x, y, obj_swingingclaw_base);

chainArr = array_create(chainNum);

// It's best if the chain object has its x/y in the dead middle
for (var i = 0; i < chainNum; i++) {
	chainArr[i] = instance_create(x, y, obj_swingingclaw_chain);
	chainArr[i].depth = depth + 1;
}

endX = x + endXOffset
endY = y + endYOffset
endObj = instance_create(endX, endY, obj_swingingclaw_claw);

// Claw specific params
endObj.baseX = x
endObj.baseY = y
endObj.chainLength = endYOffset