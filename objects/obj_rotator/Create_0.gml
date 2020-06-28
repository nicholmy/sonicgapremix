/// @description Create the two sets of balls + center

instance_create(x, y, obj_rotator_center)

balls = array_create(chainLength)

for (var i = chainLength - 1; i >= 0; i--;) {
	balls[i] = instance_create(x + ballOffset + i * ballDistance, y, obj_rotator_spike)
}

oppositeBalls = array_create(chainLength)

for (var i = chainLength - 1; i >= 0; i--;) {
	oppositeBalls[i] = instance_create(x - ballOffset - i * ballDistance, y, obj_rotator_spike)
}