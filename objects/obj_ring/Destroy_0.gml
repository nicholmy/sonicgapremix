/// @description  Create sparkle (if collected)
/// @param if collected
    if(IsCollected){
       scr_create_dummy_effect(spr_ring_sparkle, 0.4, x, y, 1, 0);
    }
	
	if(isImportant) {
		var importRing = instance_create(x, y, obj_ring_important_shadow);
		importRing.alarm[0] = 10;
	}

