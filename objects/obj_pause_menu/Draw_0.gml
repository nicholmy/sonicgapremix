/// @description  Draw Menu.

 // BG Alpha:
    draw_set_color(c_black);
    draw_set_alpha(_alpha);
    draw_rectangle(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ), false);
    draw_set_alpha(1);
    draw_set_color(c_white);
    
 // Menu:
    draw_sprite(sprite_index, Option_ID-1, __view_get( e__VW.XView, 0 )+floor(_x), __view_get( e__VW.YView, 0 )+global.ScreenHeight/2)

