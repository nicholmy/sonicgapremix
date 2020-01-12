/// @description  Change Menu Option.
 
    if(!SetupKeyboard && !SetupGamepad){
    
    if(SetupMDirection == 1){
       if(keyboard_check_pressed(global.Key_LEFT)){
          if(SetupMID != 1){
             SetupMID --
          }else{
             SetupMID = SetupMID_Max
          }
          PlaySound(snd_object_switch, global.MaxSFXV, 1, 1)
       }
       if(keyboard_check_pressed(global.Key_RIGHT)){
          if(SetupMID != SetupMID_Max){
             SetupMID ++
          }else{
             SetupMID = 1
          }
          PlaySound(snd_object_switch, global.MaxSFXV, 1, 1)
       }            
    }
    
    if(SetupMDirection == 2){
       if(keyboard_check_pressed(global.Key_UP)){
          if(SetupMID != 1){
             SetupMID --
          }else{
             SetupMID = SetupMID_Max
          }
          PlaySound(snd_object_switch, global.MaxSFXV, 1, 1)
       }
       if(keyboard_check_pressed(global.Key_DOWN)){
          if(SetupMID != SetupMID_Max){
             SetupMID ++
          }else{
             SetupMID = 1
          }
          PlaySound(snd_object_switch, global.MaxSFXV, 1, 1)          
       }       
    }    
    
    }
    
    // Sounds in the input menu:
    if(SetupKeyboard){
       if(keyboard_check_pressed(vk_anykey)){
          PlaySound(snd_object_switch, global.MaxSFXV, 1, 1)
       }
    }
    if(SetupGamepad){
       if(gamepad_get_button_pressed(global.Controller_Input_Found)){
          PlaySound(snd_object_switch, global.MaxSFXV, 1, 1)
       }
    }

/// Proceed to next step.
 
    // Make sure we can select something:
       if(SetupCanEnter != 1){
          SetupCanEnter += 0.25;
       }
    
	if(keyboard_check_pressed(global.Key_SPECIAL) && SetupCanEnter && SetupProcess > 1){
		if (SetupProcess == 2 or SetupProcess == 3 or SetupProcess == 5) SetupProcess--;
		else SetupProcess = 1;
		
		SetupMID     = 1;
		SetupCanEnter   = 0;
		
		if (SetupProcess == 1) {
			SetupMDirection = 1;
			SetupMID_Max = 2;
		}
		if (SetupProcess == 2 or SetupProcess == 3) SetupMID_Max = 3;
		if (SetupProcess == 4) SetupMID_Max = 6;
		if (SetupProcess == 5) SetupMID_Max = 5;
	}
	
	// Choose setup
    if(SetupProcess == 1){
       if(keyboard_check_pressed(global.Key_ENTER) && SetupCanEnter){
          switch(SetupMID){
                 case 1:{
                 SetupProcess    = 2;
                 SetupMDirection = 2;
                 SetupMID_Max    = 3;
                 SetupMID        = 1;
                 SetupCanEnter   = 0;
                 break;    
                 }
                 case 2:{
                 SetupProcess    = 4;
                 SetupMDirection = 2;
                 SetupMID_Max    = 6;
                 SetupMID        = 1;
                 SetupCanEnter   = 0;
				 room_goto(rm_flicky_select_char)
                 break;
                 }
          }
       }
    }
    
	// Controller Setup
    if(SetupProcess == 2){
       if(keyboard_check_pressed(global.Key_ENTER) && SetupCanEnter){
          switch(SetupMID){
                 case 1:{
                 if(SetupKeyboard != 1){
                    SetupCanEnter  = 0;                 
                    SetupKeyboard  = 1;
                 }
                 break;    
                 }
                 case 2:{
                 if(SetupGamepad != 1 && global.Controller_Input_Found != -1){
                    SetupCanEnter = 0;                  
                    SetupGamepad  = 1;
                 }else{
                    PlaySound(snd_object_error, global.SFXVolume, 1, 1);
                 }              
                 break;
                 }
                 case 3:{
                 SetupProcess    = 3;
                 SetupMDirection = 2;
                 SetupMID_Max    = 3;
                 SetupMID        = 1;
                 SetupCanEnter   = 0;                           
                 break;
                 }                 
          }
       }
    }   
        
	// Sound Options
    if(SetupProcess == 3 && SetupCanEnter){
       if(SetupMID == 1 && keyboard_check(global.Key_LEFT)){
          if(global.MaxBGMV > 0.00){
             global.MaxBGMV -= 0.01;
             global.BGMVolume = global.MaxBGMV;
          }
       }
       if(SetupMID == 1 && keyboard_check(global.Key_RIGHT)){
          if(global.MaxBGMV < 1.0){
             global.MaxBGMV += 0.01;
             global.BGMVolume = global.MaxBGMV;
          }
       }  
       if(SetupMID == 2 && keyboard_check(global.Key_LEFT)){
          if(global.MaxSFXV > 0.00){
             global.MaxSFXV -= 0.01;
             global.SFXVolume = global.MaxSFXV;
          }
       }
       if(SetupMID == 2 && keyboard_check(global.Key_RIGHT)){
          if(global.MaxSFXV < 1.0){
             global.MaxSFXV += 0.01;
             global.SFXVolume = global.MaxSFXV;
          }
       }   
       if(global.MaxBGMV < 0.01){
          global.MaxBGMV = 0.00;
          global.BGMVolume = global.MaxBGMV;          
       }
       if(global.MaxBGMV > 1.0){
          global.MaxBGMV = 1.0;
          global.BGMVolume = global.MaxBGMV;          
       }  
       if(global.MaxSFXV < 0.01){
          global.MaxSFXV = 0.00;
          global.SFXVolume = global.MaxSFXV;          
       }
       if(global.MaxSFXV > 1.0){
          global.MaxSFXV = 1.0;
          global.SFXVolume = global.MaxSFXV;          
       }  
       if(SetupMID == 3 && keyboard_check(global.Key_ENTER)){
          Flicky_SaveConfiguration()
          SetupProcess    = 4;
          SetupMDirection = 2;
          SetupMID_Max    = 6;
          SetupMID        = 1;
          SetupCanEnter   = 0;
		  room_goto(rm_flicky_select_char)
       }                         
    }
    
	// Character Select
    if(SetupProcess == 4){
       if(keyboard_check_pressed(global.Key_ENTER) && SetupCanEnter){
          switch(SetupMID){
                 case 1:{
                 global.Character_1 = CharacterSonic;
                 //room_goto_next(); 
                 break;    
                 }
                 case 2:{
                 global.Character_1 = CharacterTails;
                 //room_goto_next();             
                 break;
                 }
                 case 3:{                 
                 global.Character_1 = CharacterKnuckles;
                 //room_goto_next();                                 
                 break;
                 }   
                 case 4:{
                 global.Character_1 = CharacterAmy;
                 ///room_goto_next();                                 
                 break;
                 }
                 case 5:{
                 global.Character_1 = CharacterMighty;
                 //room_goto_next();                                 
                 break;
                 }
				 case 6:{
                 global.Character_1 = CharacterRay;
                 //room_goto_next();                                 
                 break;
                 }   
          }
		  //room_goto(rm_flicky_select);
		  SetupProcess    = 5;
          SetupMDirection = 2;
          SetupMID_Max    = 5;
          SetupMID        = 1;
          SetupCanEnter   = 0;
       }
    }
	
	// Level Select
	if (SetupProcess == 5) {
		if (keyboard_check_pressed(global.Key_ENTER) && SetupCanEnter) {
			switch(SetupMID){
                 case 1:{
                 room_goto(rm_SkyStationZone); 
                 break;    
                 }
                 case 2:{
                 room_goto(rm_StarStationZone);            
                 break;
                 }
                 case 3:{                 
                 room_goto(rm_TechTreeZone);                                
                 break;
                 }   
                 case 4:{
                 room_goto(rm_test_zone2);                            
                 break;
                 }
                 case 5:{
                 room_goto(rm_test_zone3);                                
                 break;
                 }
			}
		}
	}

    

