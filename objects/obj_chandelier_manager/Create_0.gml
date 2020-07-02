/// @description Create objects
// States
// 0 - Waiting at the top
// 1 - Dropping
// 2 - Waiting at the bottom
// 3 - Rising
layer = layer_get_id("Back_Instances");
platform = instance_create_layer(x, y+48, layer, obj_chandelier_platform);

if (startLowered) {
	state = 2;
	alarm[1] = 60;
} else {
	state = 0;
	alarm[0] = 5;
}


