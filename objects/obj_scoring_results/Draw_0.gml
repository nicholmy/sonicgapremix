/// @description  Draw Results.

 // "Character" Got:
    draw_sprite(spr_results_name, par_character.CharacterID-1, __view_get( e__VW.XView, 0 )+42+ResultGFX_Position[0], __view_get( e__VW.YView, 0 )+56);

 // Through:
    draw_sprite(spr_results_through, 0, __view_get( e__VW.XView, 0 )+99+ResultGFX_Position[1], __view_get( e__VW.YView, 0 )+76);
    
 // Act Letter:
    draw_sprite(spr_title_card_acts, global.ZoneAct-1, __view_get( e__VW.XView, 0 )+223+ResultGFX_Position[1], __view_get( e__VW.YView, 0 )+59);
    
 // Time Bonus:
    draw_sprite(spr_results_time, 0, __view_get( e__VW.XView, 0 )+64+ResultGFX_Position[2], __view_get( e__VW.YView, 0 )+108);     

 // Ring Bonus:
    draw_sprite(spr_results_rings, 0, __view_get( e__VW.XView, 0 )+64+ResultGFX_Position[3], __view_get( e__VW.YView, 0 )+124);  

 // Total:
    draw_sprite(spr_results_total, 0, __view_get( e__VW.XView, 0 )+84+ResultGFX_Position[4], __view_get( e__VW.YView, 0 )+151);   
    
 // Draw Bonuses:
    draw_set_font(global.Font_HUD)
    draw_set_color(c_white)
    draw_set_halign(fa_right)
    
    scr_draw_number_zero(__view_get( e__VW.XView, 0 )+247+8+ResultGFX_Position[2], __view_get( e__VW.YView, 0 )+113,""+ string(BonusTime),  0);
    scr_draw_number_zero(__view_get( e__VW.XView, 0 )+247+8+ResultGFX_Position[3], __view_get( e__VW.YView, 0 )+129,""+ string(BonusRings), 0);
    scr_draw_number_zero(__view_get( e__VW.XView, 0 )+247+8+ResultGFX_Position[4], __view_get( e__VW.YView, 0 )+157,    string(BonusTotal), 0);
    
    draw_set_halign(-1)    
            
/*
 // Got through:
    draw_sprite(sprite_index, 0, view_xview+160+GoOff, view_yview+65);
    
 // Draw the Tally: 
    draw_sprite(spr_results_tally, 0, view_xview+55+GoOff, view_yview+140);
    
 // Act Letter:
    draw_sprite(spr_title_card_acts, global.ZoneAct-1, view_xview+230+GoOff, view_yview+68);
     
 // Draw Bonuses:
    draw_set_font(global.Font_HUD)
    draw_set_color(c_white)
    draw_set_halign(fa_left)
    
    scr_draw_number_zero(view_xview+230+GoOff_2, view_yview+188,''+ string(BonusTotal), 0);
    scr_draw_number_zero(view_xview+230+GoOff_2, view_yview+147,''+ string(BonusTime),  0);
    scr_draw_number_zero(view_xview+230+GoOff_2, view_yview+162,    string(BonusRings), 0);
    
    draw_set_halign(-1)


/* */
/*  */
