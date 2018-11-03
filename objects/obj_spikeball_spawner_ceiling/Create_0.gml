/// @description Init the ball and chain

/// @description Init the ball and chain
//Init the ball
spikeBall = instance_create(x + ballDistance, y, obj_spikeball_ball);

chainLinkArr = array_create(chainLength);
chainDistance = ballDistance - spikeBall.sprite_width;
chainOffset = sprite_width/2 + 1;

// Init the chain
for(var i = 0; i < chainLength; i++) {
	chainLinkArr[i] = instance_create(x + (i/chainLength) * chainDistance, y, obj_spikeball_chain);
	chainLinkArr[i].y -= chainLinkArr[i].sprite_width;
} 

swingAngle = startAngle;