/// @description  Draw the Monitor.

    draw_sprite(sprite_index, -1, x, y);
    if(global.GameTime div 4 mod 2 != 0 ){
       draw_sprite(spr_monitor_icon, MonitorIcon, x, y-5);
    }

