/// @description  Draw the Doomsday Background.

 // Draw the Colored Background (Doing it this way saves up more memory than drawing the color in the room, which fills the entire room.)
    draw_set_color( make_color_rgb(32, 0, 160) );
    draw_rectangle(__view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, 0 ), false);
    draw_set_color(c_white);

 // Draw the Stars (A speed variable is used to help it move separately from the others.)
    scr_draw_background_tiled_area(bg_doomsday_stars, 0,  0, __view_get( e__VW.XView, view_current ) + (cl_speed * 0.50), __view_get( e__VW.YView, view_current ) * 0.97 + 0 , __view_get( e__VW.WView, 0 ) - (cl_speed * 0.50), 177);
	
 // Draw the Clouds
    scr_draw_background_tiled_area(bg_doomsday_planet1, 0, 0, __view_get( e__VW.XView, view_current ) * 0.9 + (cl_speed * 0.60), __view_get( e__VW.YView, view_current ) * 0.97 + 177, __view_get( e__VW.XView, view_current ) * 0.1 +__view_get( e__VW.WView, 0 ) - (cl_speed * 0.60), 47);
    scr_draw_background_tiled_area(bg_doomsday_planet2, 0, 0, __view_get( e__VW.XView, view_current ) * 0.89 + (cl_speed * 0.70), __view_get( e__VW.YView, view_current ) * 0.97 + 224, __view_get( e__VW.XView, view_current ) * 0.11 +__view_get( e__VW.WView, 0 ) - (cl_speed * 0.70), 62);
	scr_draw_background_tiled_area(bg_doomsday_planet3, 0, 0, __view_get( e__VW.XView, view_current ) * 0.88 + (cl_speed * 0.80), __view_get( e__VW.YView, view_current ) * 0.97 + 286, __view_get( e__VW.XView, view_current ) * 0.12 +__view_get( e__VW.WView, 0 ) - (cl_speed * 0.80), 84);