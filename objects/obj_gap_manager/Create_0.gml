/// @description Set Gaps Here
gapNameList = [
	"Hello World Sling",
	"Hello World Ramp",
	"Hello World Transfer",
	"Hello World Mighty",
	"Hello World Ray",
	"Over the Loop"];
	
gapStaleList = array_create(5);

for (i = 0; i < 5; i++) {
	gapStaleList[i] = 0;
}
	
	
SONICList = [0, 0, 0, 0, 0];

if (debugFlag) {
	with (obj_gap) {
		visible = true;
	}
}