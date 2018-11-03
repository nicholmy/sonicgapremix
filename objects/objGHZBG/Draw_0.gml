/// @description  Draw the GHZ Background.

 // Draw the Colored Background (Doing it this way saves up more memory than drawing the color in the room, which fills the entire room.)
    draw_set_color( make_color_rgb(32, 0, 160) );
    draw_rectangle(__view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, 0 ), false);
    draw_set_color(c_white);

 // Draw the Ocean (The heights are all the same, so a for-loop is highly recommended.)
    for(a = 0; a < 7; a += 1){
        ax = 0.875 - (a * 0.05);
        ay = 0.125 + (a * 0.05);
        scr_draw_background_tiled_area(sea_back, 0, a * 16, __view_get( e__VW.XView, view_current ) * ax, __view_get( e__VW.YView, view_current ) + (a * 16) + 144, __view_get( e__VW.XView, view_current ) * ay + __view_get( e__VW.WView, 0 ), 16);
    }

 // Draw the Clouds (A speed variable is used to help it move separately from the others.)
    scr_draw_background_tiled_area(bg_ghz_parallax_clouds, 0,  0, __view_get( e__VW.XView, view_current ) + (cl_speed * 0.75), __view_get( e__VW.YView, view_current ) + 0 , __view_get( e__VW.WView, 0 ) - (cl_speed * 0.75), 32);
    scr_draw_background_tiled_area(bg_ghz_parallax_clouds, 0, 32, __view_get( e__VW.XView, view_current ) + (cl_speed * 0.50), __view_get( e__VW.YView, view_current ) + 32, __view_get( e__VW.WView, 0 ) - (cl_speed * 0.50), 16);
    scr_draw_background_tiled_area(bg_ghz_parallax_clouds, 0, 48, __view_get( e__VW.XView, view_current ) + (cl_speed * 0.25), __view_get( e__VW.YView, view_current ) + 48, __view_get( e__VW.WView, 0 ) - (cl_speed * 0.25), 16);

 // Draw the Mountains (This is the most basic one; this outlines what you're basically supposed to do.)
    scr_draw_background_tiled_area(mtn_back, 0,  0, __view_get( e__VW.XView, view_current ) * 0.875, __view_get( e__VW.YView, view_current ) + 64 , __view_get( e__VW.XView, view_current ) * 0.125 + __view_get( e__VW.WView, 0 ), 50);
    scr_draw_background_tiled_area(mtn_back, 0, 50, __view_get( e__VW.XView, view_current ) * 0.850, __view_get( e__VW.YView, view_current ) + 114, __view_get( e__VW.XView, view_current ) * 0.150 + __view_get( e__VW.WView, 0 ), 50);

