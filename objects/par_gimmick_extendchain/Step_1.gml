/// @description Update the beginning and ending positions, calculate distance

chainDirection = point_direction(x, y, endObj.x, endObj.y);

chainBeginX = x + beginRadius * dcos(chainDirection);
chainBeginY = y + beginRadius * -dsin(chainDirection);

chainDirectionToStart = point_direction(endObj.x, endObj.y, x, y);

chainEndX = endObj.x + endRadius * dcos(chainDirectionToStart);
chainEndY = endObj.y + endRadius * -dsin(chainDirectionToStart);

totalRadius = point_distance(chainBeginX, chainBeginY, chainEndX, chainEndY);

chainNum = floor(totalRadius / chainLinkHeight) + 1;

/// Resize the chain array so the right number is there
if (chainNum > ds_list_size(chainLst)) {
	//show_debug_message("Extending the chain to " + string(chainNum) + " length");
	while (chainNum > ds_list_size(chainLst)) {
		var tempChain = instance_create(x, y, chainObj);
		tempChain.depth = depth + 1;
		ds_list_add(chainLst, tempChain);
	}
} else if (chainNum < ds_list_size(chainLst)) {
	//show_debug_message("Removing the chain to " + string(chainNum) + " length");
	while (chainNum < ds_list_size(chainLst)) {
		instance_destroy(chainLst[| ds_list_size(chainLst) - 1]);
		ds_list_delete(chainLst, ds_list_size(chainLst) - 1);
	}
}


