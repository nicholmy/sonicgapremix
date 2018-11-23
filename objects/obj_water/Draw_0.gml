/// @description  Draw the Water.

 // Draw the Water below the surface:
    var water_y;
    water_y = max(global.WaterSurfacePosition-__view_get( e__VW.YView, 0 ), 0); 
    draw_set_blend_mode_ext(bm_dest_color, bm_src_alpha_sat);
    draw_set_color(make_color_rgb(107, 107, 148)); // < Change this if you want to use a different color.
    draw_rectangle(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 )+water_y-8, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ), 0);
    draw_set_color(c_white);  
    draw_set_blend_mode(bm_normal);

    
 // Draw the Surface:
    scr_draw_sprite_tiled_horizontal(spr_water_surface, current_time div 80, __view_get( e__VW.XView, 0 ), global.WaterSurfacePosition);

