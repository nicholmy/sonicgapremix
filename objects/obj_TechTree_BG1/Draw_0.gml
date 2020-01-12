/// @description Draw Many BG Elements

// Inherit the parent event
event_inherited();

// Palette: (Only if we allow Shaders)
if(global.Shaders != 0){
    //pal_swap_set(spr_skystation_palette, floor(PalettePosition), false);
}

//Skies
scr_draw_background_tiled_area(bg_tt_sky, 0,  0, __view_get( e__VW.XView, view_current ) * 1, __view_get( e__VW.YView, view_current ) * globalYScroll + 0 , __view_get( e__VW.XView, view_current ) * 0 + __view_get( e__VW.WView, 0 ), 397);

//Mountains & Water
//scr_draw_background_tiled_area(bg_tt_mountains, 0,  0, __view_get( e__VW.XView, view_current ) * 0.95, __view_get( e__VW.YView, view_current ) * globalYScroll + 265 , __view_get( e__VW.XView, view_current ) * 0.05 + __view_get( e__VW.WView, 0 ), 32);
//scr_draw_background_tiled_area(bg_tt_water, 0,  0, __view_get( e__VW.XView, view_current ) * 0.9 + (cl_speed * 0.50), __view_get( e__VW.YView, view_current ) * globalYScroll + 297 , __view_get( e__VW.XView, view_current ) * 0.1 + __view_get( e__VW.WView, 0 ) - (cl_speed * 0.50), 188);

scr_draw_background_tiled_area(bg_tt1_tree4, 0, 0, __view_get( e__VW.XView, view_current ) * 0.9, __view_get( e__VW.YView, view_current ) * globalYScroll + 100 , __view_get( e__VW.XView, view_current ) * 0.1 + __view_get( e__VW.WView, 0 ), 322);
scr_draw_background_tiled_area(bg_tt1_tree4, 0, 0, __view_get( e__VW.XView, view_current ) * 0.8, __view_get( e__VW.YView, view_current ) * globalYScroll + 200 , __view_get( e__VW.XView, view_current ) * 0.2 + __view_get( e__VW.WView, 0 ), 322);
scr_draw_background_tiled_area(bg_tt1_tree1, 0, 0, __view_get( e__VW.XView, view_current ) * 0.7, __view_get( e__VW.YView, view_current ) * (globalYScroll - 0.2) + 650 , __view_get( e__VW.XView, view_current ) * 0.3 + __view_get( e__VW.WView, 0 ), 643);
scr_draw_background_tiled_area(bg_tt1_tree1, 0, 0, __view_get( e__VW.XView, view_current ) * 0.6, __view_get( e__VW.YView, view_current ) * (globalYScroll - 0.2) + 750 , __view_get( e__VW.XView, view_current ) * 0.4 + __view_get( e__VW.WView, 0 ), 643);
/*
scr_draw_background_tiled_area(bg_tt_coaster_yellow, 0,  0, __view_get( e__VW.XView, view_current ) * 0.88, __view_get( e__VW.YView, view_current ) * globalYScroll + 225 , __view_get( e__VW.XView, view_current ) * 0.12 + __view_get( e__VW.WView, 0 ), 179);


//Back Grass
scr_draw_background_tiled_area(bg_tt_grass1, 0,  0, __view_get( e__VW.XView, view_current ) * 0.87, __view_get( e__VW.YView, view_current ) * globalYScroll + 320 , __view_get( e__VW.XView, view_current ) * 0.13 + __view_get( e__VW.WView, 0 ), 11);

scr_draw_background_tiled_area(bg_tt_trees, 0,  0, __view_get( e__VW.XView, view_current ) * 0.85, __view_get( e__VW.YView, view_current ) * globalYScroll + 200 , __view_get( e__VW.XView, view_current ) * 0.15 + __view_get( e__VW.WView, 0 ), 171);

scr_draw_background_tiled_area(bg_tt_grass2, 0,  0, __view_get( e__VW.XView, view_current ) * 0.85, __view_get( e__VW.YView, view_current ) * globalYScroll + 328 , __view_get( e__VW.XView, view_current ) * 0.15 + __view_get( e__VW.WView, 0 ), 13);
scr_draw_background_tiled_area(bg_tt_grass3, 0,  0, __view_get( e__VW.XView, view_current ) * 0.8, __view_get( e__VW.YView, view_current ) * globalYScroll + 337 , __view_get( e__VW.XView, view_current ) * 0.2 + __view_get( e__VW.WView, 0 ), 18);

//Coasters
scr_draw_background_tiled_area(bg_tt_coaster_blue, 0,  0, __view_get( e__VW.XView, view_current ) * 0.75, __view_get( e__VW.YView, view_current ) * globalYScroll + 200 , __view_get( e__VW.XView, view_current ) * 0.25 + __view_get( e__VW.WView, 0 ), 255);

//Front Grass
scr_draw_background_tiled_area(bg_tt_grass4, 0,  0, __view_get( e__VW.XView, view_current ) * 0.7, __view_get( e__VW.YView, view_current ) * globalYScroll + 345 , __view_get( e__VW.XView, view_current ) * 0.3 + __view_get( e__VW.WView, 0 ), 128);
*/