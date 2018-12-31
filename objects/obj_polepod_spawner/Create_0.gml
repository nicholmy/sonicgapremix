/// @description Setup the Pole Pod pieces
CharacterID = 0;

outsideObj = instance_create(x, y, obj_polepod_outside);
insideObj = instance_create(x, y, obj_polepod_inside);
doorObj = instance_create(x, y, obj_polepod_door);

outsideObj.depth = 2;
insideObj.depth = 1;
doorObj.depth = -1;

// For character collisions
doorObj.spawnerID = self.id;

// For stopper collisions
outsideObj.spawnerID = self.id;

with (obj_polepod_pole_straight) {
	depth = 3;
}