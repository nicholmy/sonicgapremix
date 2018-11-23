/// @description Make Sound & Create Debris

// Inherit the parent event
event_inherited();

piece1 = instance_create(x-8, y-16, breakablePiece);
piece2 = instance_create(x+8, y-16, breakablePiece);
piece3 = instance_create(x-8, y, breakablePiece);
piece4 = instance_create(x+8, y, breakablePiece);


piece1.XSpeed = -2;
piece2.XSpeed = 2;
piece3.XSpeed = -4;
piece4.XSpeed = 4;