/// @description  Variables.

 // Play Scoring theme.
    PlaySound(obj_audio_manager.Jingle_ActClear, global.BGMVolume, 1, 1)
  
 // Bonuses:
    BonusRings = (global.Rings * 100);
    BonusTotal = (global.Score);

    Seconds = floor(global.GameTime/1000);
    
    if(Seconds <= 29){
        BonusTime   = 50000;
    }
    else if(Seconds > 29 && Seconds <= 44){
        BonusTime   = 10000;
    }
    else if(Seconds >= 45 && Seconds <= 59){
        BonusTime   = 5000;
        }
    else if(Seconds >= 60 && Seconds <= 89){
        BonusTime   = 4000;
        }
    else if(Seconds >= 90 && Seconds <= 119){
        BonusTime   = 3000;
        }
    else if(Seconds >= 120 && Seconds <= 179){
        BonusTime   = 2000;
        }
    else if(Seconds >= 180 && Seconds <= 239){
        BonusTime   = 1000;
        }
    else if(Seconds >= 240 && Seconds <= 299){
        BonusTime   = 500;
        }
    else if(Seconds >= 300){
        BonusTime   = 0;
        }
            
    ////

 // Reset Variables.
    global.CheckpointX = -1;
    global.CheckpointY = -1;
    
 // Allow counting:
    CanDo      = 0; 
    CanCount   = 0;
    CountSound = 1;
    
 // Skip:
    CanSkip = 0; 
 
 // Positions / Going out:
    GoingOut      =    0;
    GoOff         =  320;
    GoOff_2       = -320;
    
 // Text Positions:
    ResultGFX_Position[0] = -320;
    ResultGFX_Position[1] =  320;    
    ResultGFX_Position[2] =  350;
    ResultGFX_Position[3] =  380;
    ResultGFX_Position[4] =  410;
    ResultGFX_Position_Completed = false;
                
 // Disappear (For Act 2)
    Act2Disappear = false;

 // Misc.
    SpecialFlag = 0;


