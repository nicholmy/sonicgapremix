/// @description Spawn a ring at a spawner
if (state == 1) {
	state = 0;
	
	
	if (ringsLeft > 0 and instance_exists(obj_bonusring_spawner)) {
		var totalSpawners = instance_number(obj_bonusring_spawner);
		
		
		var spawners = array_create(totalSpawners);
		
		var i = totalSpawners - 1;
		with (obj_bonusring_spawner) {
			spawners[i] = id;
			i--;
		}
		
		var pickedI = irandom(totalSpawners-1);
		show_debug_message(string(pickedI));
		ring = instance_create(spawners[pickedI].x, spawners[pickedI].y, obj_ring_bonus);
		
	} 
	
	
}
