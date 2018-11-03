/// @description  Variables.

      Position_State = 1;  // How a position should change (see step event)
      
      Zone_Position_X[1] = __view_get( e__VW.WView, 0 );  // X Position of the Zone name.  
      Zone_Position_X[2] = __view_get( e__VW.WView, 0 );  // X Position of the "Zone" below the zone name.              
      Zone_Position_Y    = 90;          // Y Position of the Zone name.    
                    
      Act_Position_X = __view_get( e__VW.WView, 0 );                                   // X Position of the act letter.
      Act_Position_Y = 90+sprite_get_height(spr_title_card_acts)*2;  // Y Position of the act letter.       
         
      Banner_Position_X = 0 + sprite_get_width(spr_title_card_banner);  // X Position of the Banner.         
      Banner_Position_Y = 0 - sprite_get_height(spr_title_card_banner); // Y Position of the Banner.

      Stop_Timer     = 60;  // How long we stop after we show the zone details.
      Backdrop_Alpha = 1;   // Alpha of the black backdrop.
      
      SpecialFlag    = 0;
      Completed      = 0;   // Checks if the object did it's work. 
      

