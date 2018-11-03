/// @description Initiate the chain

//beginObj = instance_create(x, y, beginResource);
endObj = instance_create(endX, endY, endResource);

chainArr = array_create(chainNum);

// It's best if the chain object has its x/y in the dead middle
for (var i = 0; i < chainNum; i++) {
	chainArr[i] = instance_create(x, y, chainObj);
	chainArr.depth = depth + 1;
}

alarm[0] = 60;

