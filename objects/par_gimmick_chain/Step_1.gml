/// @description Update the beginning and ending positions, calculate distance

chainDirection = point_direction(x, y, endX, endY);

chainBeginX = x + beginRadius * dcos(chainDirection);
chainBeginY = y + beginRadius * -dsin(chainDirection);

chainDirectionToStart = point_direction(endX, endY, x, y);

chainEndX = endX + endRadius * dcos(chainDirectionToStart);
chainEndY = endY + endRadius * -dsin(chainDirectionToStart);

totalRadius = point_distance(chainBeginX, chainBeginY, chainEndX, chainEndY);


