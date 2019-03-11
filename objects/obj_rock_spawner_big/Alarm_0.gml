/// @description Spawn another rock
if (!isRockSpawned && rocksLeft > 0) {
	rock = instance_create(x, y, obj_rock_big);
	rock.spawnerRef = id;
	
	isRockSpawned = true;
	rocksLeft--;
}