/// @description Draw Many Clouds

// Inherit the parent event
event_inherited();

// Palette: (Only if we allow Shaders)
if(global.Shaders != 0){
    pal_swap_set(spr_skystation_palette, floor(PalettePosition), false);
}

 // Draw the Top Clouds (A speed variable is used to help it move separately from the others.)
scr_draw_background_tiled_area(bg_skysanct_clouds1, 0,  0, __view_get( e__VW.XView, view_current ) + (cl_speed * 0.40), __view_get( e__VW.YView, view_current ) * globalYScroll + 0 , __view_get( e__VW.WView, 0 ) - (cl_speed * 0.40), 112);

// Big Cloud in the Middle (Top)
scr_draw_background_tiled_area(bg_skysanct_clouds5, 0,  0, __view_get( e__VW.XView, view_current ) * 0.9 + (cl_speed * 0.50), __view_get( e__VW.YView, view_current ) * globalYScroll + 112 , __view_get( e__VW.XView, view_current ) * 0.1 + __view_get( e__VW.WView, 0 ) - (cl_speed * 0.50), 80);
scr_draw_background_tiled_area(bg_skysanct_clouds5, 0,  80, __view_get( e__VW.XView, view_current ) * 0.875 + (cl_speed * 0.60), __view_get( e__VW.YView, view_current ) * globalYScroll + 192 , __view_get( e__VW.XView, view_current ) * 0.125 + __view_get( e__VW.WView, 0 ) - (cl_speed * 0.60), 40);

//Middle Clouds
scr_draw_background_tiled_area(bg_skysanct_clouds5, 0,  120, __view_get( e__VW.XView, view_current ) * 0.85 + (cl_speed * 0.70), __view_get( e__VW.YView, view_current ) * globalYScroll + 232 , __view_get( e__VW.XView, view_current ) * 0.15 + __view_get( e__VW.WView, 0 ) - (cl_speed * 0.70), 176);

//Bottom Part of Big Cloud
scr_draw_background_tiled_area(bg_skysanct_clouds5, 0,  296, __view_get( e__VW.XView, view_current ) * 0.875 + (cl_speed * 0.60), __view_get( e__VW.YView, view_current ) * globalYScroll + 408 , __view_get( e__VW.XView, view_current ) * 0.125 + __view_get( e__VW.WView, 0 ) - (cl_speed * 0.60), 40);
scr_draw_background_tiled_area(bg_skysanct_clouds5, 0,  336, __view_get( e__VW.XView, view_current ) * 0.9 + (cl_speed * 0.50), __view_get( e__VW.YView, view_current ) * globalYScroll + 448 , __view_get( e__VW.XView, view_current ) * 0.1 + __view_get( e__VW.WView, 0 ) - (cl_speed * 0.50), 64);

//Skies
scr_draw_background_tiled_area(bg_skysanct_clouds3, 0,  0, __view_get( e__VW.XView, view_current ) + (cl_speed * 0.40), __view_get( e__VW.YView, view_current ) * globalYScroll + 512 , __view_get( e__VW.WView, 0 ) - (cl_speed * 0.40), 256);

//Bottom Clouds
scr_draw_background_tiled_area(bg_skysanct_clouds4, 0,  0, __view_get( e__VW.XView, view_current ) * 0.9 + (cl_speed * 0.50), __view_get( e__VW.YView, view_current ) * globalYScroll + 768 , __view_get( e__VW.XView, view_current ) * 0.1 + __view_get( e__VW.WView, 0 ) - (cl_speed * 0.50), 64);
scr_draw_background_tiled_area(bg_skysanct_clouds4, 0,  64, __view_get( e__VW.XView, view_current ) * 0.875 + (cl_speed * 0.60), __view_get( e__VW.YView, view_current ) * globalYScroll + 832 , __view_get( e__VW.XView, view_current ) * 0.125 + __view_get( e__VW.WView, 0 ) - (cl_speed * 0.60), 64);

// When we modified the palette, make sure to reset it:
      if(global.Shaders != 0){
            pal_swap_reset()
      }