/// @description Insert description here
// You can write your code in this editor
gapNameList = [
	"Hello World Ramp",
	"Hello World Transfer",
	"Hello World Sling",
	"Hello World Batjump",
	"Hello World Hop"];
	
gapStaleList = array_create(5);

for (i = 0; i < 5; i++) {
	gapStaleList[i] = 0;
}
	
if (debugFlag) {
	with (obj_gap) {
		visible = true;
	}
}