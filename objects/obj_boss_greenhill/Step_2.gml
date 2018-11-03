/// @description Before running generic code...
// You can write your code in this editor


chainBase.x = x;
chainBase.y = y + 32;

for(i=0; i<chainLength; i++){
	chainRadius = chainLinkArr[i].sprite_height * (i+1);
	chainLinkArr[i].x = chainBase.x + chainRadius * dcos(chainAngle);
	chainLinkArr[i].y = chainBase.y + chainRadius * dsin(chainAngle);
}

ballRadius = chainLinkArr[0].sprite_height * (chainLength-1) + chainBall.sprite_height

chainAngle = 90 + 90 * dsin(pendulumAngle);

if (isSwinging) {
	chainBall.x = chainBase.x + ballRadius * dcos(chainAngle);
	chainBall.y = chainBase.y +  ballRadius * dsin(chainAngle);
	
	pendulumAngle--;
	pendulumAngle = pendulumAngle % 360;
}

if(State == "Defeated"){
    chainBall.explodeTime = DefTime;
}