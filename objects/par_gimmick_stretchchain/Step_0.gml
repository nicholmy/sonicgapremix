/// @description Update the beginning and ending positions

chainDirection = point_direction(x, y, endObj.x, endObj.y);

chainBeginX = x + beginRadius * dcos(chainDirection);
chainBeginY = y + beginRadius * -dsin(chainDirection);

chainDirectionToStart = point_direction(endObj.x, endObj.y, x, y);

chainEndX = endObj.x + endRadius * dcos(chainDirectionToStart);
chainEndY = endObj.y + endRadius * -dsin(chainDirectionToStart);

totalRadius = point_distance(chainBeginX, chainBeginY, chainEndX, chainEndY);

