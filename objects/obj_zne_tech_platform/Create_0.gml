/// @description Create collision box
instance_create(x, y+2, obj_generic_platform)
if (layer_exists(layer_get_id("Back Instances"))) {
	layer = layer_get_id("Back Instances");
}