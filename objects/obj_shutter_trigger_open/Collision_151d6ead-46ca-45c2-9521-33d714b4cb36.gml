/// @description Open the proper door (if it exists)
with (obj_shutter) {
	if (doorID == other.doorID) alarm[0] = 1;
}
