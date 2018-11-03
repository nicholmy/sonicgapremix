/// @description  Draw the Broken Monitor.
    draw_sprite(sprite_index, -1, x, y)
    
 // Draw Icon:
    if(IconDisappearTimer != 0){
       draw_sprite_ext(spr_monitor_icon, IconID, x, Y+IconPosition, 1, 1, 0, c_white, 1)
    }

