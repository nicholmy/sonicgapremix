/// @description Resize the chain if its too much/little
// You can write your code in this editor

// Inherit the parent event
event_inherited();

chainNum = floor(totalRadius / chainLinkHeight) + 1;

// Resize here
if (chainNum > ds_list_size(chainLst)) {
	//show_debug_message("Extending the chain to " + string(chainNum) + " length");
	while (chainNum > ds_list_size(chainLst)) {
		var tempChain = instance_create(x, y, chainResource);
		tempChain.depth = depth + 1;
		ds_list_add(chainLst, tempChain);
	}
} else if (chainNum < ds_list_size(chainLst)) {
	//show_debug_message("Removing the chain to " + string(chainNum) + " length");
	while (chainNum < ds_list_size(chainLst)) {
		instance_destroy(chainLst[| ds_list_size(chainLst) - 1]);
		ds_list_delete(chainLst, ds_list_size(chainLst) - 1);
	}
}
