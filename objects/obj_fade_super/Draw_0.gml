/// @description  Draw the Fade.

    if(State == 1){
    draw_set_alpha(1){
                   if(Color = c_black){
                      draw_set_blend_mode_ext(bm_inv_src_color, bm_inv_dest_color)
                   }else{
                      draw_set_blend_mode(bm_add)
                   }
                   draw_set_color(make_color_rgb(ColorRed, ColorGreen, ColorBlue))
                   draw_circle(Parent.x, Parent.y, 16+Scale, false)
                   draw_set_blend_mode(bm_normal)
                   draw_set_alpha(image_alpha)
    }
    draw_set_blend_mode(-1)
    draw_set_alpha(1)
    }else{
                   if(Color = c_black){
                      draw_set_blend_mode(bm_subtract)
                   }else{
                      draw_set_blend_mode(bm_add)
                   }  
                   
                   draw_set_color(make_color_rgb(ColorRed, ColorGreen, ColorBlue))
                   draw_set_alpha(image_alpha)
                   draw_circle(Parent.x, Parent.y, 16+Scale, false)                   
                   draw_set_blend_mode(-1)                    
    }
    draw_set_blend_mode(-1)
    draw_set_alpha(1)


