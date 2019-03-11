/// @description Spawn the rock and keep track of it
rock = instance_create(x, y, obj_rock_big);
rock.spawnerRef = id;

isRockSpawned = true;
rocksLeft--;