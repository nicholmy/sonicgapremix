/// @description Get the input keys.
// If you want to modify any of this. Do so in scr_game_init()

          if(LockControl == 0){
        
             // Keys:
                KeyUp               = keyboard_check(global.Key_UP)     || (gamepad_axis_value(0, gp_axislv) <  0) || (gamepad_axis_value(4, gp_axislv) <  0);
                KeyDown             = keyboard_check(global.Key_DOWN)   || (gamepad_axis_value(0, gp_axislv) >  0) || (gamepad_axis_value(4, gp_axislv) >  0);
                KeyRight            = keyboard_check(global.Key_RIGHT)  || (gamepad_axis_value(0, gp_axislh) >  0) || (gamepad_axis_value(4, gp_axislh) >  0);
                KeyLeft             = keyboard_check(global.Key_LEFT)   || (gamepad_axis_value(0, gp_axislh) <  0) || (gamepad_axis_value(4, gp_axislh) <  0);
                KeyAction           = keyboard_check(global.Key_ACTION);
                KeySpecial          = keyboard_check(global.Key_SPECIAL);
                KeyEnter            = keyboard_check(global.Key_ENTER);
       
             // Key presses:
                KeyUp_Pressed       = keyboard_check_pressed(global.Key_UP);
                KeyDown_Pressed     = keyboard_check_pressed(global.Key_DOWN);
                KeyRight_Pressed    = keyboard_check_pressed(global.Key_RIGHT);
                KeyLeft_Pressed     = keyboard_check_pressed(global.Key_LEFT);
                KeyAction_Pressed   = keyboard_check_pressed(global.Key_ACTION);
                KeySpecial_Pressed  = keyboard_check_pressed(global.Key_SPECIAL);
                KeyEnter_Pressed    = keyboard_check_pressed(global.Key_ENTER);      
       
             // Key releases:
                KeyUp_Released      = keyboard_check_released(global.Key_UP);
                KeyDown_Released    = keyboard_check_released(global.Key_DOWN);
                KeyRight_Released   = keyboard_check_released(global.Key_RIGHT);
                KeyLeft_Released    = keyboard_check_released(global.Key_LEFT);
                KeyAction_Released  = keyboard_check_released(global.Key_ACTION);
                KeySpecial_Released = keyboard_check_released(global.Key_SPECIAL);
                KeyEnter_Released   = keyboard_check_released(global.Key_ENTER);             
       
             // Stop left & right at the same time:
                if(KeyRight && KeyLeft){
                   KeyRight = false;
                   KeyLeft  = false;
                }    
             
             // Input Alarm:
                if(InputAlarm){
                   if(AlarmDirection = 1){
                      KeyRight = false
                   }
                   if(AlarmDirection = -1){
                      KeyLeft  = false
                   }                
                }   

             // Input Lock:
                if(InputLock_L){
                   KeyLeft = false;
                }
                if(InputLock_R){
                   KeyRight = false;
                }      
       
             // Holding Jump:
                if(KeyAction){
                   if(global.Key_ACTION_HeldTimer != 10){
                      global.Key_ACTION_HeldTimer++
                   }
                }else{
                   global.Key_ACTION_HeldTimer = 0;
                }
          }
       


/// Modify Physics.

 // Previous Positions:
    PreviousX = x;
    PreviousY = y;
          
 // Switch Physic Modes:
    if(y < global.WaterSurfacePosition or instance_exists(obj_water) == false){
       if(PhysicMode != "Normal"){
          PhysicMode  = "Normal";
          Underwater  = false;
       }
    } 
    if((y > global.WaterSurfacePosition && instance_exists(obj_water) == true) || InSpace){
       if(PhysicMode != "Underwater"){
          PhysicMode  = "Underwater";  
          Underwater  = true;                     
       }       
    }

 // Sonic, Tails, Knuckles, Mighty, Ray Physics:
    if((CharacterID == CharacterSonic || CharacterID == CharacterTails || CharacterID == CharacterKnuckles || CharacterID == CharacterMighty || CharacterID == CharacterRay) && CharacterState = CharacterNormal){
    
       if(PhysicMode == "Normal"){
       
          // Horizontal Values:
             if(HasSpeedShoes == false){
                XSpeed_Top    = 6;
             }else{
                XSpeed_Top    = 12;
             }
             
             XSpeed_Max     = 16;
             
             if(HasSpeedShoes == false){
                XAcceleration = 0.046875;
             }else{
                XAcceleration = 0.09375;
             }
             
             XDeceleration  = 0.5;              
             XSlopeFactor   = 0.5;
             
             if(HasSpeedShoes == false){
                AirAccel      = 0.09375;
             }else{
                AirAccel      = 0.1875;
             }             
             
           
          // Vertical Values:          
             YSpeed_Max     = 16;      
             if(Action != ActionGlide && Action != ActionClimb){
                if(Action != ActionFly && Action != ActionFlydrop){
                   if(Action = ActionHurt){
                      YAcceleration = 0.1875;
                   }else{
                      YAcceleration = YAccel_Common;
                   }
                }
             }else{
               YAcceleration = 0;
             }
             ConversionFact = 0.8;
             
          // Jumping Values:
             if(CharacterID != CharacterKnuckles){
                JumpStrength = -6.5;
             }else{
                JumpStrength = -6;
             }
             JumpRelease    = -4;
             
          // Rolling Values:   
             RollDec                   = 0.3;      
             
             if(HasSpeedShoes == false){
                RollDecLight  = 0.0234375; 
             }else{
                RollDecLight  = 0.046875;
             }
             
             
             RollDecStrong             = 0.125;   
             Rolling_Deceleration_Up   = 0.078125; 
             Rolling_Deceleration_Down = 0.3125;        
      
          // Spindash:
             SpindashAccumMax    =  12;  
             SpindashAccumMin    =  8;  
			 
			 if (CharacterID == CharacterRay) {
				 GlidePeriodFactor = 2;
				 GlideBoost = 2;
			 }   
                             
       }
       
       if(PhysicMode == "Underwater"){
        
          // Horizontal Values:
             XSpeed_Top     = 3;
             XSpeed_Max     = 16;
             XAcceleration  = 0.0234375;
             XDeceleration  = 0.5;                 
             XSlopeFactor   = 0.25;
             AirAccel       = 0.09375*0.5;
             
          // Vertical Values:          
             YSpeed_Max     = 16; 
             if(Action != ActionGlide && Action != ActionClimb){
                if(Action != ActionFly && Action != ActionFlydrop){             
                   if(Action = ActionHurt){
                      YAcceleration = 0.1875*0.5;
                   }else{
                      YAcceleration = 0.0625;
                   }     
                }       
             }else{
               YAcceleration = 0;
             }
             ConversionFact = 0.8;
             
          // Jumping Values:
             if(CharacterID != CharacterKnuckles){
                JumpStrength = -3.5;
             }else{
                JumpStrength = -3;
             }
             JumpRelease    = -2;
             
             
             
          // Rolling Values:   
             RollDec                   = 0.3;       
             RollDecLight              = 0.0234375; 
             RollDecStrong             = 0.125;   
             Rolling_Deceleration_Up   = 0.078125; 
             Rolling_Deceleration_Down = 0.3125;        
      
          // Spindash:
             SpindashAccumMax    =  12;  
             SpindashAccumMin    =  8; 
			 if (CharacterID == CharacterRay) {
				 GlidePeriodFactor = 0.5;
				 
				 //GlideSpeed -= 0.5;
				 GlideBoost = 0.5;
			 }
                                                                                              
       }      
        
    }
    if((CharacterID == CharacterSonic || CharacterID == CharacterTails || CharacterID == CharacterKnuckles || CharacterID == CharacterMighty || CharacterID == CharacterRay) && (CharacterState = CharacterSuper or CharacterState = CharacterHyper)){
    
       if(PhysicMode == "Normal"){
       
          // Horizontal Values:
             XSpeed_Top     = 10;
             XSpeed_Max     = 16;
             XAcceleration  = 0.046875*4;
             XDeceleration  = 1;                 
             XSlopeFactor   = 0.5*2;
             AirAccel       = 0.09375*4;
             
          // Vertical Values:          
             YSpeed_Max     = 16; 
             if(Action != ActionGlide && Action != ActionClimb){             
                if(Action != ActionFly && Action != ActionFlydrop){
                   if(Action = ActionHurt){
                      YAcceleration = 0.1875;
                   }else{
                      YAcceleration = YAccel_Common;
                   }
                }
             }else{
               YAcceleration = 0;
             }
             ConversionFact = 0.8;
             
          // Jumping Values:
             if(CharacterID == CharacterSonic || CharacterID == CharacterMighty){
                JumpStrength = -8;
             }
             if(CharacterID == CharacterTails){
                JumpStrength = -6.5;
             }             
             if(CharacterID == CharacterKnuckles){
                JumpStrength = -6
             }
             JumpRelease    = -4;
             
          // Rolling Values:   
             RollDec                   = 0.3;       
             RollDecLight              = 0.0234375; 
             RollDecStrong             = 0.125;   
             Rolling_Deceleration_Up   = 0.078125; 
             Rolling_Deceleration_Down = 0.3125;        
      
          // Spindash:
             SpindashAccumMax    =  15;  
             SpindashAccumMin    =  11; 
			 
             if (CharacterID == CharacterRay) {
				 GlidePeriodFactor = 2;
				 GlideBoost = 2;
			 }                                                                                             
       }
       
       if(PhysicMode == "Underwater"){
       
          // Horizontal Values:
             XSpeed_Top     = 5;
             XSpeed_Max     = 16;
             XAcceleration  = 0.0234375*4;
             XDeceleration  = 0.25;
             XSlopeFactor   = 0.25*2;
             AirAccel       = 0.09375*0.5;
             
          // Vertical Values:          
             YSpeed_Max     = 16; 
             if(Action != ActionGlide && Action != ActionClimb){                
                if(Action != ActionFly && Action != ActionFlydrop){
                   if(Action = ActionHurt){
                      YAcceleration = 0.1870*0.5;
                   }else{
                      YAcceleration = 0.046875;
                   }
                }
             }else{
               YAcceleration = 0;
             }                       
             ConversionFact = 0.8;
             
          // Jumping Values:
             if(CharacterID == CharacterSonic || CharacterID == CharacterTails || CharacterID == CharacterMighty){
                JumpStrength = -3.5;
             }            
             if(CharacterID == CharacterKnuckles){
                JumpStrength = -3
             }          
             JumpRelease    = -2;
             
          // Rolling Values:   
             RollDec                   = 0.3;       
             RollDecLight              = 0.0234375; 
             RollDecStrong             = 0.125;   
             Rolling_Deceleration_Up   = 0.078125; 
             Rolling_Deceleration_Down = 0.3125;        
      
          // Spindash:
             SpindashAccumMax    =  15;  
             SpindashAccumMin    =  11;   
			 
			 if (CharacterID == CharacterRay) {
				 GlidePeriodFactor = 0.5;
				 
				 GlideSpeed -= 0.5;
				 GlideBoost = 0.5;
			 }
                                                                                              
       }      
        
    }   
    
 // Amy Rose Physics:
    if((CharacterID == CharacterAmy) && CharacterState = CharacterNormal){
    
       if(PhysicMode == "Normal"){
       
          // Horizontal Values:
             if(HasSpeedShoes == false){
                XSpeed_Top    = 5.8;
             }else{
                XSpeed_Top    = 11.8;
             }
             
             XSpeed_Max     = 13.25;
             
             if(HasSpeedShoes == false){
                XAcceleration = 0.046875;
             }else{
                XAcceleration = 0.09375;
             }
             
             XDeceleration  = 0.5;              
             XSlopeFactor   = 0.5;
             
             if(HasSpeedShoes == false){
                AirAccel      = 0.09375;
             }else{
                AirAccel      = 0.1875;
             }             
             
           
          // Vertical Values:          
             YSpeed_Max     = 16; 
             
             if(Action != ActionFly && Action != ActionFlydrop){
                if(Action = ActionHurt){
                   YAcceleration = 0.1875;
                }else{
                   YAcceleration = YAccel_Common;
                }
             }
             ConversionFact = 0.8;
             
          // Jumping Values:
             JumpStrength   = -6.5;
             JumpRelease    = -4;
             
          // Rolling Values:   
             RollDec = 0.3;      
             
             if(HasSpeedShoes == false){
                RollDecLight  = 0.0234375; 
             }else{
                RollDecLight  = 0.046875;
             }
                          
             RollDecStrong             = 0.125;   
             Rolling_Deceleration_Up   = 0.078125; 
             Rolling_Deceleration_Down = 0.3125;        
      
          // Spindash:
             SpindashAccumMax    =  10;  
             SpindashAccumMin    =  6;                         
                             
       }
       
       if(PhysicMode == "Underwater"){
        
          // Horizontal Values:
             XSpeed_Top     = 2.8;
             XSpeed_Max     = 13.25;
             XAcceleration  = 0.0234375;
             XDeceleration  = 0.5;                 
             XSlopeFactor   = 0.25;
             AirAccel       = 0.09375*0.5;
             
          // Vertical Values:          
             YSpeed_Max     = 16; 
             if(Action != ActionFly && Action != ActionFlydrop){             
                if(Action = ActionHurt){
                   YAcceleration = 0.1875*0.5;
                }else{
                   YAcceleration = 0.0625;
                }     
             }       
             ConversionFact = 0.8;
             
          // Jumping Values:
             JumpStrength   = -3.5;
             JumpRelease    = -2;
             
          // Rolling Values:   
             RollDec                   = 0.3;       
             RollDecLight              = 0.0234375; 
             RollDecStrong             = 0.125;   
             Rolling_Deceleration_Up   = 0.078125; 
             Rolling_Deceleration_Down = 0.3125;        
      
          // Spindash:
             SpindashAccumMax    =  10;  
             SpindashAccumMin    =  6;                         
                                                                                              
       }      
        
    }     


