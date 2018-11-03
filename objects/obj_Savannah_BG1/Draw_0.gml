/// @description  Draw the Flicky Ruins Background.

 // Draw the Colored Background (Doing it this way saves up more memory than drawing the color in the room, which fills the entire room.)
    draw_set_color( make_color_rgb(32, 0, 160) );
    draw_rectangle(__view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, 0 ), false);
    draw_set_color(c_white);

 // Draw the Clouds (A speed variable is used to help it move separately from the others.)
    //scr_draw_background_tiled_area(bg_flicky_ruins_parallax_clouds, 0,  0, __view_get( e__VW.XView, view_current ) + (cl_speed * 0.75), __view_get( e__VW.YView, view_current ) + 0 , __view_get( e__VW.WView, 0 ) - (cl_speed * 0.75), 32);
    //scr_draw_background_tiled_area(bg_flicky_ruins_parallax_clouds, 0, 32, __view_get( e__VW.XView, view_current ) + (cl_speed * 0.50), __view_get( e__VW.YView, view_current ) + 32, __view_get( e__VW.WView, 0 ) - (cl_speed * 0.50), 16);
    //scr_draw_background_tiled_area(bg_flicky_ruins_parallax_clouds, 0, 48, __view_get( e__VW.XView, view_current ) + (cl_speed * 0.25), __view_get( e__VW.YView, view_current ) + 48, __view_get( e__VW.WView, 0 ) - (cl_speed * 0.25), 16);

 // Draw the Mountains (This is the most basic one; this outlines what you're basically supposed to do.)
    scr_draw_background_tiled_area(bg_lionking_icantwait, 0,  0, __view_get( e__VW.XView, view_current ) * 1, __view_get( e__VW.YView, view_current ) + 0 , __view_get( e__VW.XView, view_current ) * 0.125 + __view_get( e__VW.WView, 0 ), 200);
	scr_draw_background_tiled_area(bg_lionking_icantwait, 0, 200, __view_get( e__VW.XView, view_current )  + (cl_speed * 0.75), __view_get( e__VW.YView, view_current ) + 200 , __view_get( e__VW.WView, 0 ) * 1.125 - (cl_speed * 0.75), 24);
	//scr_draw_background_tiled_area(bg_flicky_ruins_parallax_mountains01, 0,  24, __view_get( e__VW.XView, view_current ) * 0.875, __view_get( e__VW.YView, view_current ) + 88 , __view_get( e__VW.XView, view_current ) * 0.125 + __view_get( e__VW.WView, 0 ), 16);
	//scr_draw_background_tiled_area(bg_flicky_ruins_parallax_mountains01, 0,  40, __view_get( e__VW.XView, view_current ) * 0.850, __view_get( e__VW.YView, view_current ) + 104, __view_get( e__VW.XView, view_current ) * 0.150 + __view_get( e__VW.WView, 0 ), 40);
    //scr_draw_background_tiled_area(bg_flicky_ruins_parallax_mountains01, 0,  80, __view_get( e__VW.XView, view_current ) * 0.825, __view_get( e__VW.YView, view_current ) + 144, __view_get( e__VW.XView, view_current ) * 0.175 + __view_get( e__VW.WView, 0 ), 48);

	//scr_draw_background_tiled_area(bg_flicky_ruins_parallax_mountains02, 0,  8, __view_get( e__VW.XView, view_current ) * 0.800, __view_get( e__VW.YView, view_current ) + 192 , __view_get( e__VW.XView, view_current ) * 0.200 + __view_get( e__VW.WView, 0 ), 128);