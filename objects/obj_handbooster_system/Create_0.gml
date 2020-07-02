/// @description Initialize objects
// You can write your code in this editor
layer = layer_get_id("Back_Instances");

hand = instance_create_layer(x, y, layer, obj_handbooster_hand);
spinner = instance_create_layer(x, y, layer, obj_handbooster_spinner);

grabbedPlayer = 0;