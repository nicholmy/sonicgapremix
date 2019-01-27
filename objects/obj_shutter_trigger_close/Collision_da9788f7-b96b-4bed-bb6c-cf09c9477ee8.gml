/// @description Close the proper door (if it exists)
with (obj_shutter) {
	if (doorID == other.doorID) alarm[1] = 1;
}
