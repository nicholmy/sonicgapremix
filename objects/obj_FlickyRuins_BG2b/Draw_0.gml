/// @description  Draw the Flicky Ruins Background.

 // Draw the Colored Background (Doing it this way saves up more memory than drawing the color in the room, which fills the entire room.)
    draw_set_color( make_color_rgb(32, 0, 160) );
    draw_rectangle(__view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, 0 ), false);
    draw_set_color(c_white);

 // Draw the Mountains (This is the most basic one; this outlines what you're basically supposed to do.)
	//scr_draw_background_tiled_area(bg_flicky_ruins_parallax_cave01, 0,  0, __view_get( e__VW.XView, view_current ) * 0.875, __view_get( e__VW.YView, view_current ) + 0 , __view_get( e__VW.XView, view_current ) * 0.125 + __view_get( e__VW.WView, 0 ), 48);
    //scr_draw_background_tiled_area(bg_flicky_ruins_parallax_cave06, 0,  0, __view_get( e__VW.XView, view_current ) * 0.900, __view_get( e__VW.YView, view_current ) + 48 , __view_get( e__VW.XView, view_current ) * 0.1 + __view_get( e__VW.WView, 0 ), 128);
	//scr_draw_background_tiled_area(bg_flicky_ruins_parallax_cave07, 0,  0, __view_get( e__VW.XView, view_current ) * 0.900, __view_get( e__VW.YView, view_current ) + 176 , __view_get( e__VW.XView, view_current ) * 0.1 + __view_get( e__VW.WView, 0 ), 128);
	//scr_draw_background_tiled_area(bg_flicky_ruins_parallax_cave01, 0,  0, __view_get( e__VW.XView, view_current ) * 0.875, __view_get( e__VW.YView, view_current ) + 200, __view_get( e__VW.XView, view_current ) * 0.125 + __view_get( e__VW.WView, 0 ), 48);
	
	scr_draw_background_tiled_area(bg_flicky_ruins_parallax_cave01, 0,  0, __view_get( e__VW.XView, view_current ) * 0.875, __view_get( e__VW.YView, view_current ) * 0.825 + 0 , __view_get( e__VW.XView, view_current ) * 0.125 + __view_get( e__VW.WView, 0 ), 128);
	scr_draw_background_tiled_area(bg_flicky_ruins_parallax_cave02, 0,  0, __view_get( e__VW.XView, view_current ) * 0.875, __view_get( e__VW.YView, view_current ) * 0.825 + 128, __view_get( e__VW.XView, view_current ) * 0.125 + __view_get( e__VW.WView, 0 ), 128);
	scr_draw_background_tiled_area(bg_flicky_ruins_parallax_cave03, 0,  0, __view_get( e__VW.XView, view_current ) * 0.875, __view_get( e__VW.YView, view_current ) * 0.825 + 256, __view_get( e__VW.XView, view_current ) * 0.125 + __view_get( e__VW.WView, 0 ), 128);
	scr_draw_background_tiled_area(bg_flicky_ruins_parallax_cave04, 0,  0, __view_get( e__VW.XView, view_current ) * 0.875, __view_get( e__VW.YView, view_current ) * 0.825 + 384, __view_get( e__VW.XView, view_current ) * 0.125 + __view_get( e__VW.WView, 0 ), 128);
	scr_draw_background_tiled_area(bg_flicky_ruins_parallax_cave05, 0,  0, __view_get( e__VW.XView, view_current ) * 0.875, __view_get( e__VW.YView, view_current ) * 0.825 + 512, __view_get( e__VW.XView, view_current ) * 0.125 + __view_get( e__VW.WView, 0 ), 128);
	scr_draw_background_tiled_area(bg_flicky_ruins_parallax_cave06, 0,  0, __view_get( e__VW.XView, view_current ) * 0.875, __view_get( e__VW.YView, view_current ) * 0.825 + 640 , __view_get( e__VW.XView, view_current ) * 0.125 + __view_get( e__VW.WView, 0 ), 128);
	scr_draw_background_tiled_area(bg_flicky_ruins_parallax_cave07, 0,  0, __view_get( e__VW.XView, view_current ) * 0.875, __view_get( e__VW.YView, view_current ) * 0.825 + 768 , __view_get( e__VW.XView, view_current ) * 0.125 + __view_get( e__VW.WView, 0 ), 128);