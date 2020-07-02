/// @description Break off and create column pieces
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Head pieces
piece1 = instance_create(x-32, y, obj_columnpiece_piece1);
piece2 = instance_create(x-16, y, obj_columnpiece_piece2);
piece3 = instance_create(x, y, obj_columnpiece_piece3);
piece4 = instance_create(x+16, y, obj_columnpiece_piece4);

// This could probably be improved, slight difference in debris path based on direction
piece1.XSpeed = -2;
piece2.XSpeed = -1;
piece3.XSpeed = 1;
piece4.XSpeed = 2;

// Stem pieces
for (var i = 1; i < pieceHeight-1; i++) {
	piece7 = instance_create(x-16, y + i * 16, obj_columnpiece_piece7);
	piece8 = instance_create(x, y + i * 16, obj_columnpiece_piece8);
	
	piece7.XSpeed = -1;
	piece8.XSpeed = 1;
	
	/*piece7.isActive = false;
	piece8.isActive = false;
	
	piece7.alarm[1] = i * 5;
	piece8.alarm[1] = i * 5;*/
}

// Base pieces
piece5 = instance_create(x-16, y + (pieceHeight-1) * 16, obj_columnpiece_piece5);
piece6 = instance_create(x, y + (pieceHeight-1) * 16, obj_columnpiece_piece6);

piece5.XSpeed = -1;
piece6.XSpeed = 1;

/*piece5.isActive = false;
piece6.isActive = false;

piece5.alarm[1] = (pieceHeight-1) * 5;
piece6.alarm[1] = (pieceHeight-1) * 5;*/


