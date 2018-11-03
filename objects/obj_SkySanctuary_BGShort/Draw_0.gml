/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

 // Draw the Clouds (A speed variable is used to help it move separately from the others.)
scr_draw_background_tiled_area(bg_skysanct_clouds1, 0,  0, __view_get( e__VW.XView, view_current ) + (cl_speed * 0.50), __view_get( e__VW.YView, view_current ) * globalYScroll + 0 , __view_get( e__VW.WView, 0 ) - (cl_speed * 0.50), 112);

// Big Cloud in the Middle (Top)
scr_draw_background_tiled_area(bg_skysanct_clouds4, 0,  0, __view_get( e__VW.XView, view_current ) * 0.9 + (cl_speed * 0.50), __view_get( e__VW.YView, view_current ) * globalYScroll + 112 , __view_get( e__VW.XView, view_current ) * 0.1 + __view_get( e__VW.WView, 0 ) - (cl_speed * 0.50), 64);
scr_draw_background_tiled_area(bg_skysanct_clouds4, 0,  64, __view_get( e__VW.XView, view_current ) * 0.875 + (cl_speed * 0.60), __view_get( e__VW.YView, view_current ) * globalYScroll + 176 , __view_get( e__VW.XView, view_current ) * 0.125 + __view_get( e__VW.WView, 0 ) - (cl_speed * 0.60), 64);