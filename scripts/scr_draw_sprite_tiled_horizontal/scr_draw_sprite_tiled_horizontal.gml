/// @description  scr_draw_sprite_tiled_horizontal(sprite, image, x, y);
/// @param sprite
/// @param  image
/// @param  x
/// @param  y
 // Draw a sprite horizontally tiled. 

    var SpriteStart, SpriteEnd, SpriteCurrent, SpriteStep;

    // Retrieve sprite properties        
       SpriteStep  = sprite_get_width(argument0);
       SpriteStart = __view_get( e__VW.XView, view_current )+((argument2-__view_get( e__VW.XView, view_current )) mod SpriteStep)-SpriteStep;
       SpriteEnd   = __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )+SpriteStep;
        
       for (SpriteCurrent = SpriteStart; SpriteCurrent <= SpriteEnd; SpriteCurrent += SpriteStep)
            draw_sprite(argument0, argument1, SpriteCurrent, argument3);
