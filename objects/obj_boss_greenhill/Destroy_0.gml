/// @description Insert description here
// You can write your code in this editor

instance_destroy(chainBase);
for(i=0; i<chainLength; i++){
	instance_destroy(chainLinkArr[i]);
}
instance_destroy(chainBall);

instance_destroy(eggMobileFire);