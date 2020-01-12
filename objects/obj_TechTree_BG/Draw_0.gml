/// @description Draw Many BG Elements

// Inherit the parent event
event_inherited();

// Palette: (Only if we allow Shaders)
if(global.Shaders != 0){
    //pal_swap_set(spr_skystation_palette, floor(PalettePosition), false);
}

//Skies
scr_draw_background_tiled_area(bg_tt_sky, 0,  100, __view_get( e__VW.XView, view_current ) * 1, __view_get( e__VW.YView, view_current ) * globalYScroll + 0 , __view_get( e__VW.XView, view_current ) * 0 + __view_get( e__VW.WView, 0 ), 397);

//Mountains & Water
scr_draw_background_tiled_area(bg_tt_mountains, 0,  0, __view_get( e__VW.XView, view_current ) * 0.95, __view_get( e__VW.YView, view_current ) * globalYScroll + 265 - 50 , __view_get( e__VW.XView, view_current ) * 0.05 + __view_get( e__VW.WView, 0 ), 32);
scr_draw_background_tiled_area(bg_tt_water, 0,  0, __view_get( e__VW.XView, view_current ) * 0.9 + (cl_speed * 0.50), __view_get( e__VW.YView, view_current ) * globalYScroll + 297 - 50 , __view_get( e__VW.XView, view_current ) * 0.1 + __view_get( e__VW.WView, 0 ) - (cl_speed * 0.50), 188);


scr_draw_background_tiled_area(bg_tt_coaster_yellow, 0,  0, __view_get( e__VW.XView, view_current ) * 0.88, __view_get( e__VW.YView, view_current ) * globalYScroll + 225 - 50 , __view_get( e__VW.XView, view_current ) * 0.12 + __view_get( e__VW.WView, 0 ), 179);


//Back Grass
scr_draw_background_tiled_area(bg_tt_grass1, 0,  0, __view_get( e__VW.XView, view_current ) * 0.87, __view_get( e__VW.YView, view_current ) * globalYScroll + 320 - 50 , __view_get( e__VW.XView, view_current ) * 0.13 + __view_get( e__VW.WView, 0 ), 11);

scr_draw_background_tiled_area(bg_tt_trees, 0,  0, __view_get( e__VW.XView, view_current ) * 0.85, __view_get( e__VW.YView, view_current ) * globalYScroll + 200 - 50 , __view_get( e__VW.XView, view_current ) * 0.15 + __view_get( e__VW.WView, 0 ), 171);

scr_draw_background_tiled_area(bg_tt_grass2, 0,  0, __view_get( e__VW.XView, view_current ) * 0.85, __view_get( e__VW.YView, view_current ) * globalYScroll + 328 - 50 , __view_get( e__VW.XView, view_current ) * 0.15 + __view_get( e__VW.WView, 0 ), 13);
scr_draw_background_tiled_area(bg_tt_grass3, 0,  0, __view_get( e__VW.XView, view_current ) * 0.8, __view_get( e__VW.YView, view_current ) * globalYScroll + 337 - 50 , __view_get( e__VW.XView, view_current ) * 0.2 + __view_get( e__VW.WView, 0 ), 18);

//Coasters
scr_draw_background_tiled_area(bg_tt_coaster_blue, 0,  0, __view_get( e__VW.XView, view_current ) * 0.75, __view_get( e__VW.YView, view_current ) * globalYScroll + 200 - 50 , __view_get( e__VW.XView, view_current ) * 0.25 + __view_get( e__VW.WView, 0 ), 255);

//Front Grass
scr_draw_background_tiled_area(bg_tt_grass4, 0,  0, __view_get( e__VW.XView, view_current ) * 0.7, __view_get( e__VW.YView, view_current ) * globalYScroll + 345 - 50 , __view_get( e__VW.XView, view_current ) * 0.3 + __view_get( e__VW.WView, 0 ), 128);

/*
 // Draw the Treetops
    scr_draw_background_tiled_area(bg_aquaticruin_treetop, 0,  0, __view_get( e__VW.XView, view_current ) * 0.9, __view_get( e__VW.YView, view_current ) * globalYScroll + 0 , __view_get( e__VW.XView, view_current ) * 0.1 + __view_get( e__VW.WView, 0 ), 128);
	scr_draw_background_tiled_area(bg_aquaticruin_sky, 0,  0, __view_get( e__VW.XView, view_current ) * 1, __view_get( e__VW.YView, view_current ) * globalYScroll + 128 , __view_get( e__VW.XView, view_current ) * 0 + __view_get( e__VW.WView, 0 ), 128);
	
	scr_draw_background_tiled_area(bg_aquaticruin_mountain, 0,  0, __view_get( e__VW.XView, view_current ) * 0.9, __view_get( e__VW.YView, view_current ) * globalYScroll + 256 , __view_get( e__VW.XView, view_current ) * 0.1 + __view_get( e__VW.WView, 0 ), 48);
	
	scr_draw_background_tiled_area(bg_aquaticruin_mountain, 0,  48, __view_get( e__VW.XView, view_current ) * 0.8, __view_get( e__VW.YView, view_current ) * globalYScroll + 304 , __view_get( e__VW.XView, view_current ) * 0.2 + __view_get( e__VW.WView, 0 ), 34);
	
	scr_draw_background_tiled_area(bg_aquaticruin_mountain, 0,  82, __view_get( e__VW.XView, view_current ) * 0.75, __view_get( e__VW.YView, view_current ) * globalYScroll + 338 , __view_get( e__VW.XView, view_current ) * 0.25 + __view_get( e__VW.WView, 0 ), 46);
	scr_draw_background_tiled_area(bg_aquaticruin_bushes, 0,  0, __view_get( e__VW.XView, view_current ) * 0.75, __view_get( e__VW.YView, view_current ) * globalYScroll + 384 , __view_get( e__VW.XView, view_current ) * 0.25 + __view_get( e__VW.WView, 0 ), 16);
	
	scr_draw_background_tiled_area(bg_aquaticruin_bushes, 0,  16, __view_get( e__VW.XView, view_current ) * 0.7, __view_get( e__VW.YView, view_current ) * globalYScroll + 400 , __view_get( e__VW.XView, view_current ) * 0.3 + __view_get( e__VW.WView, 0 ), 48);
	scr_draw_background_tiled_area(bg_aquaticruin_depths, 0,  0, __view_get( e__VW.XView, view_current ) * 0.7, __view_get( e__VW.YView, view_current ) * globalYScroll + 448 , __view_get( e__VW.XView, view_current ) * 0.3 + __view_get( e__VW.WView, 0 ), 512);

// When we modified the palette, make sure to reset it:
      if(global.Shaders != 0){
            pal_swap_reset()
      } */