/// @description  scr_draw_background_tiled_area(back, left, top, x, y, width, height, yscale)
/// @param back
/// @param  left
/// @param  top
/// @param  x
/// @param  y
/// @param  width
/// @param  height
/// @param  yscale
 // Draw a background area tiled. 
  
     var b, w, w_, h, h_, i, j;
     b = argument0;
     l = argument1;
     t = argument2;
     w_ = background_get_width(b);
     w = w_;
     h_ = background_get_height(b);
     h = h_;
     for ( j = 0; j < argument6; j += h_ )
     {
         h = min(argument6 - j, h_);
         for ( i = 0; i < argument5; i += w_ )
         {
             w = min(argument5 - i, w_);
             //draw_background_part(b, l, t, w, h, argument3 + i, argument4 + j);
			 draw_sprite_part_ext(b, 0, l, t, w, h, argument3 + i, argument4 + j, 1, argument7, -1, 1);
         }
     }
     
     
