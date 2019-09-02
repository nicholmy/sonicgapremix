/// @description Set Gaps Here
gapNameList = [];
	
if (room == rm_StarStationZone) {
	// Want gap lists to be something set per room :/
	gapNameList = [
	"Hello World Sling",
	"Hello World Ramp",
	"Hello World Transfer",
	"Hello World Mighty",
	"Hello World Ray",
	"Hello World Hop",
	"Hello World Drop",
	"Going Fast Enough?",
	"Secret Spiky Hop",
	"Slanted Slingshot"];
}
	
gapStaleList = array_create(array_length_1d(gapNameList));

for (i = 0; i < array_length_1d(gapNameList); i++) {
	gapStaleList[i] = 0;
}
	
	
SONICList = [0, 0, 0, 0, 0];

if (debugFlag) {
	with (obj_gap || obj_rock_spawner_refresh) {
		visible = true;
	}
} else {
	with (obj_gap || obj_rock_spawner_refresh) {
		visible = false;
	}
}

depth = -500;