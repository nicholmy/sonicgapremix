/// @description Init the ball and chain
//Init the ball
spikeBall = instance_create(x , y + ballDistance, obj_spikeball_ball);
ballDistance -= spikeBall.sprite_height/2;
chainLinkArr = array_create(chainLength);
//chainDistance = ballDistance - spikeBall.sprite_height;

// Init the chain
for(var i = 0; i < chainLength; i++) {
	chainLinkArr[i] = instance_create(x, y + ((i+1)/chainLength) * ballDistance, obj_spikeball_chain);
	//chainLinkArr[i].x += chainOffset;
} 



swingAngle = startAngle;