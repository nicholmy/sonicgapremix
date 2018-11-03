/// @description  Move Positions.

    // Banner:
    // Appear:
       if(Position_State == 1){
          if(Banner_Position_Y != 0){
             Banner_Position_Y = min(0, Banner_Position_Y+10);
          }else{
             Banner_Position_Y  = 0;
             Position_State     = 2;
          }
       }

    // Zone Name:
       if(Position_State == 2){         
          if(global.BonusStage == false){    
             if(Zone_Position_X[1] != 320 - 16 - string_width(string_hash_to_newline(string(global.ZoneName)))){
                Zone_Position_X[1] = max(320 - 16 - string_width(string_hash_to_newline(string(global.ZoneName))), Zone_Position_X[1]-10);
             }          
          }else{
             if(Zone_Position_X[1] != 260 - string_width(string_hash_to_newline(string(global.ZoneName)))){
                Zone_Position_X[1] = max(260 - string_width(string_hash_to_newline(string(global.ZoneName))), Zone_Position_X[1]-10);
             }              
          }
       }    
       
    // "ZONE" below the actual zone name:          
       if(global.BonusStage == false){
          if(Position_State == 2 && Zone_Position_X[1] = max(320 - 16 - string_width(string_hash_to_newline(string(global.ZoneName))), Zone_Position_X[1]-10)){        
             if(Zone_Position_X[2] != 320 - 16 - string_width(string_hash_to_newline(string("ZONE")))){
                Zone_Position_X[2] = max(320 - 16 - string_width(string_hash_to_newline(string("ZONE"))), Zone_Position_X[2]-10);
             }
          }
       }else{
          if(Position_State == 2 && Zone_Position_X[1] = max(260 - string_width(string_hash_to_newline(string(global.ZoneName))), Zone_Position_X[1]-10)){        
             if(Zone_Position_X[2] != 320 - 16 - string_width(string_hash_to_newline(string("ZONE")))){
                Zone_Position_X[2] = max(320 - 16 - string_width(string_hash_to_newline(string("ZONE"))), Zone_Position_X[2]-10);
             }
          }       
       }     

       
    // Act Number:        
       if(Position_State == 2 && Zone_Position_X[2] = max(320 - 16 - string_width(string_hash_to_newline(string("ZONE"))), Zone_Position_X[2]-10)){        
          if(Act_Position_X != 320 - 24 - sprite_get_width(spr_title_card_acts)){
             Act_Position_X = max(320 - 24 - sprite_get_width(spr_title_card_acts), Act_Position_X -10);
          }else{
             Position_State = 3;
          }
       }       

   // Count up to 60 frames until we continue...
      if(Position_State == 3){
         if(Stop_Timer != 0){
            Stop_Timer -= 1;
         }else{
           if(Backdrop_Alpha != -2){
              Backdrop_Alpha -= 0.10;
           }else{
              Position_State = 4;
           }
         }
      }
             
    // Disappear:       
       if(Position_State == 4){
          if(Banner_Position_Y != 0 - sprite_get_height(spr_title_card_banner)){
             Banner_Position_Y = max(0 - sprite_get_height(spr_title_card_banner), Banner_Position_Y-15);           
          }
          if(Zone_Position_X[1] != __view_get( e__VW.WView, 0 )){
             Zone_Position_X[1] = max(0 - 16 - string_width(string_hash_to_newline(string(global.ZoneName))), Zone_Position_X[1]+15);           
          }   
          if(Zone_Position_X[2] != __view_get( e__VW.WView, 0 )){
             Zone_Position_X[2] = max(0 - 16 - string_width(string_hash_to_newline(string("ZONE"))), Zone_Position_X[2]+15);           
          }    
          if(Act_Position_X != __view_get( e__VW.WView, 0 )){
             Act_Position_X = max(0 - 24 - sprite_get_width(spr_title_card_acts), Act_Position_X+15);           
          }                        
       }
    
    // Enable Movement for each character and enable game timers:
       if(Backdrop_Alpha < 1){
          if(instance_exists(par_character)){
             with(par_character){
                  LockControl = 0;
             }
                if(Completed = 0 && alarm[0] = -1){
                   global.DoTime = 1;
                   alarm[0]      = 60;
                   if(SpecialFlag == true){
                      if(obj_camera.Cam_Subject != par_character){
                         obj_camera.Cam_Subject  = par_character;
                      }
                   }
                }             
          }
       }   

       

