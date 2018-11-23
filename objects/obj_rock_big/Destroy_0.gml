/// @description Make Sound & Create Debris

// Inherit the parent event
event_inherited();

piece1 = instance_create(x, y, breakablePiece);
piece2 = instance_create(x+23, y, breakablePiece);
piece3 = instance_create(x, y+23, breakablePiece);
piece4 = instance_create(x+23, y+23, breakablePiece);
piece5 = instance_create(x, y+46, breakablePiece);
piece6 = instance_create(x+23, y+46, breakablePiece);
piece7 = instance_create(x, y+69, breakablePiece);
piece8 = instance_create(x+23, y+69, breakablePiece);

// This could probably be improved, slight difference in debris path based on direction
piece1.XSpeed = sign(rockDir) * rockSpd;
piece2.XSpeed = sign(rockDir) * rockSpd + sign(rockDir) * 1;
piece3.XSpeed = sign(rockDir) * rockSpd;
piece4.XSpeed = sign(rockDir) * rockSpd + sign(rockDir) * 1;
piece5.XSpeed = sign(rockDir) * rockSpd;
piece6.XSpeed = sign(rockDir) * rockSpd + sign(rockDir) * 1;
piece7.XSpeed = sign(rockDir) * rockSpd;
piece8.XSpeed = sign(rockDir) * rockSpd + sign(rockDir) * 1;

piece1.YSpeed = rockYSpd - 3;
piece2.YSpeed = rockYSpd - 2;
piece3.YSpeed = rockYSpd - 1;
piece4.YSpeed = rockYSpd;
piece5.YSpeed = rockYSpd + 1;
piece6.YSpeed = rockYSpd + 2;
piece7.YSpeed = rockYSpd + 3;
piece8.YSpeed = rockYSpd + 4;
