/// @description Init Eggy, Chain, and Ball
// You can write your code in this editor
StartX = CameraFocus.x + 64;
StartY = CameraFocus.y - 144;
MoveState = "Normal";

OffScreenY = CameraFocus.y - 164;
MainHeightY = CameraFocus.y - 64;
chainAngle = 90;
pendulumAngle = 0;
isSwinging = false;
count = 0;
x = StartX;
y = StartY;
depth = 0;


chainBase = instance_create(x, y + 32, obj_boss_greenhill_chain_base);
chainBase.depth = 0;
//chainBase.visible = false;

chainLength = 4;
chainLinkArr = array_create(chainLength);
for(i=0; i<chainLength; i++){
	chainLinkArr[i] = instance_create(x, y, obj_boss_greenhill_chain);
	chainLinkArr[i].y = chainBase.y + chainLinkArr[i].sprite_height * (i+1);
	
	chainLinkArr[i].visible = false;
	chainLinkArr[i].depth = 2;
}

chainBall = instance_create(x, y, obj_boss_greenhill_chain_ball);
chainBall.visible = false;
chainBall.depth = 1;
//chainBall.y = chainBase.y + chainLinkArr[0].sprite_height * (chainLength-1) + chainBall.sprite_height;


eggMobileFire = instance_create(x, y, obj_boss_greenhill_fire);
eggMobileFire.visible = false;

