/// @description  Create parts of the Level.
	

    // Camera:
       instance_create(0, 0, obj_camera);       
	   depth = -500;
	   
	   // Flag to start in Act 2 if needed
	   if (Act2StartFlag) { 
		   global.ZoneAct = 2;
		   Act2StartFlag = false;
		   obj_camera.Cam_LeftLimit  = __view_get( e__VW.XView, 0 ); 
	   }
	   
    // Titel Card:
       instance_create(0, 0, obj_title_card_controller);

    // Character specific:
       CharID   = 0;
       alarm[0] = 5;
    
    // Cheat Input
       CheatCode    = "";
       CheatTime    = 30;
       KonamiCode   = 0;
       KonamiLoaded = noone;
       KonamiSprite = noone;

    // Reset Values:
       if(global.BonusStage = false){
          global.Rings        = 0;
          global.Time         = 0;
          global.GameTime     = 0;
          global.DoTime       = 0;       
          global.ObjectTime   = 0;
          global.CharControl  = 0;
          if(global.Ring100Check_Deactivate == false){
             global.Ring100Check = 1;
          }
          FrameRate           = 60;
          obj_audio_manager.DeadFade = false;
       }


/// Pause screen variables.
    GamePaused = false;
    GamePBG    = noone;


