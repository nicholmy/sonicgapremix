/// @description  Text Positions.
    
    if(GoingOut == 0){
       if(ResultGFX_Position[0] < 0){
          ResultGFX_Position[0] += 10;
       }else{
          ResultGFX_Position[0] = 0;    
       }
       if(ResultGFX_Position[1] > 0){
          ResultGFX_Position[1] -= 10;
       }else{
          ResultGFX_Position[1] = 0;    
       }    
       if(ResultGFX_Position[2] > 0){
          ResultGFX_Position[2] -= 10;
       }else{
          ResultGFX_Position[2] = 0;    
       }    
       if(ResultGFX_Position[3] > 0){
          ResultGFX_Position[3] -= 10;
       }else{
          ResultGFX_Position[3] = 0;    
       }    
       if(ResultGFX_Position[4] > 0){
          ResultGFX_Position[4] -= 10;
       }else{
          ResultGFX_Position[4] = 0;              
       }       
       if(ResultGFX_Position[0] == 0 && ResultGFX_Position[1] == 0 && ResultGFX_Position[2] == 0 &&
          ResultGFX_Position[4] == 0 && ResultGFX_Position_Completed == false){
          ResultGFX_Position_Completed = true;
          // Trigger Bonuses.
             alarm[0] = 280;
             if(BonusTime > 0){
                alarm[1] = 280;
             }
             alarm[2] = 280;
             alarm[3] = 280;
             alarm[4] = 30;          
       }
    }else{
       if(SpecialFlag != 0 && CanDo == 2){
       
       if(ResultGFX_Position[0] > -320){
          ResultGFX_Position[0] -= 10;
       }else{
          ResultGFX_Position[0] = -320;    
       }
       if(ResultGFX_Position[1] < 320){
          ResultGFX_Position[1] += 10;
       }else{
          ResultGFX_Position[1] = 320;    
       }    
       if(ResultGFX_Position[2] < 320){
          if(ResultGFX_Position[0] > -290){
             ResultGFX_Position[2] += 10;
          }
       }else{
          ResultGFX_Position[2] = 320;    
       }    
       if(ResultGFX_Position[3] < 320){
          if(ResultGFX_Position[2] > 30){
             ResultGFX_Position[3] += 10;
          }
       }else{
          ResultGFX_Position[3] = 320;    
       }    
       if(ResultGFX_Position[4] < 320){
          if(ResultGFX_Position[3] > 30){
             ResultGFX_Position[4] += 10;
          }      
       }else{
          ResultGFX_Position[4] = 320;    
       }
             
       }     
    }
    

/// Finish counting bonuses.

    if(CanCount == 0){
       if(BonusRings == 0 && BonusTime == 0){
          if(CanDo == 0){
             CountSound = 0;
             PlaySound(snd_scoring_result, global.SFXVolume, 1, 1)
             global.Rings = 0;
             CanDo = 1;
          }
          if(CanDo = 1 && CheckSound(snd_scoring_result) == false){
             CanDo = 2;
          }
          if(GoingOut = 0 && CanDo == 2){
             var JingleClear;
                 JingleClear = obj_audio_manager.Jingle_ActClear;
             if(CheckSound(JingleClear) == false){
                GoingOut = 1
                if(SpecialFlag == 0){
                   alarm[4] = 100;
                }else{
                   alarm[4] = 30;
                }
             }
          }
       }
    }

    

///Skip counting.
   if(keyboard_check(global.Key_ACTION) && CanSkip == 1){
      BonusTotal  += BonusTime + BonusRings;
      BonusTime    =  0;      
      BonusRings   =  0;      
      alarm[0]     = -1;
      alarm[1]     = -1;  
      alarm[3]     =  1; 
      CanSkip      =  0;
      global.Score = BonusTotal;      
   }

/// Disappear for Act 2.

    if(Act2Disappear = true){
    
       if(GoOff > -320){
          GoOff -= 20
       }

       if(GoOff_2 < 320){
          GoOff_2 += 20
       }
           
       if(alarm[6] == -1){
          alarm[6] = 120;
       }
       
    }

