/// @description  Draw the Fade:

    draw_set_alpha(1){
                   if(Color = c_black){
                      draw_set_blend_mode(bm_subtract)
                   }else{
                      draw_set_blend_mode(bm_add)
                   }
                   draw_set_color(make_color_rgb(ColorRed, ColorGreen, ColorBlue))
                   draw_rectangle(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ), false)
                   draw_set_blend_mode(bm_normal)
                   draw_set_alpha(image_alpha)
    }
    draw_set_blend_mode(-1)
    draw_set_alpha(1)

