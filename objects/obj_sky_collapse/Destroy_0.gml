/// @description On destroy, create debris
piece1 = instance_create(x-8, y, obj_sky_collapse_pieces);
piece2 = instance_create(x-8, y-16, obj_sky_collapse_pieces);
piece3 = instance_create(x+8, y, obj_sky_collapse_pieces);
piece4 = instance_create(x+8, y-16, obj_sky_collapse_pieces);

piece1.XSpd = -2;
piece2.XSpd = -2;
piece3.XSpd = 2;
piece4.XSpd = 2;