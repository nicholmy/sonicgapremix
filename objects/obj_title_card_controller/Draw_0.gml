/// @description  Draw the Title Card.

    // Black Backdrop:
       if(SpecialFlag == false){
       draw_set_color(c_black);
       draw_set_alpha(Backdrop_Alpha);
       draw_rectangle(__view_get( e__VW.XView, 0 )+0, __view_get( e__VW.YView, 0 )+0, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ), 0);    
       draw_set_alpha(1);       
       draw_set_color(c_white);
       }
              
    // Banner:
       if(global.BonusStage == false){
          draw_sprite(spr_title_card_banner, -1, floor(__view_get( e__VW.XView, 0 )+Banner_Position_X), floor(__view_get( e__VW.YView, 0 )+Banner_Position_Y));
       }
       
    // Zone Name:   
       draw_set_font(global.Font_Card)
       if(global.BonusStage == false){       
          draw_text(__view_get( e__VW.XView, 0 )+Zone_Position_X[1], __view_get( e__VW.YView, 0 )+Zone_Position_Y, string_hash_to_newline(string(global.ZoneName)));
          draw_text(__view_get( e__VW.XView, 0 )+Zone_Position_X[2], __view_get( e__VW.YView, 0 )+Zone_Position_Y, string_hash_to_newline(string("#ZONE")));
       }else{
          draw_text(__view_get( e__VW.XView, 0 )+Zone_Position_X[1], __view_get( e__VW.YView, 0 )+224/2 -16, string_hash_to_newline(string(global.ZoneName)));       
       }
       
    // Zone Act:
       if(global.BonusStage == false){
          draw_sprite(spr_title_card_acts, global.ZoneAct-1, __view_get( e__VW.XView, 0 )+Act_Position_X, __view_get( e__VW.YView, 0 )+Act_Position_Y);    
       }
       
        

