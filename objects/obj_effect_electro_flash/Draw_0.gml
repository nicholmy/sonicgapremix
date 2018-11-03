/// @description  Draw Flash.
    draw_set_alpha(Alpha)
    draw_set_color(c_white)
    draw_rectangle(__view_get( e__VW.XView, 0 ), global.WaterSurfacePosition-5, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ), global.WaterSurfacePosition-5+__view_get( e__VW.HView, 0 ), false)
    draw_set_alpha(1)

