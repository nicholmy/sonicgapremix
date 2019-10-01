/// @description  scr_animation_data_mighty()
//  All of Mightys Animations are stored here:
 
  // Idle Animation (Standing)
     if(Animation = "IDLE"){
        AnimationSprite      = spr_mighty_idle;
        AnimationStart       = 0;
        AnimationEnd         = 0;
        AnimationLoop        = 0;
        AnimationSpeed       = 0;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";      
     } 
        
  // Idle Animation (Foot tapping)           
     if(Animation = "IDLE_2"){
        AnimationSprite      = spr_mighty_idle2;     
        AnimationStart       = 0;
        AnimationEnd         = 38;
        AnimationLoop        = 0;  
        AnimationSpeed       = 0.15;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }  
          
        
  // Lookup Animation   
     if(Animation = "LOOK_UP"){
        AnimationSprite      = spr_mighty_lookup;     
        AnimationStart       = 0;
        AnimationEnd         = 4;
        AnimationLoop        = 4;
        AnimationSpeed       = 0.15;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";       
     } 
        
  // Crouch Animation   
     if(Animation = "CROUCH"){
        AnimationSprite      = spr_mighty_crouch;     
        AnimationStart       = 0;
        AnimationEnd         = 3;
        AnimationLoop        = 3;
        AnimationSpeed       = 0.15;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";       
     }  
             
  // Walk Animation            
     if(Animation = "WALK"){
        AnimationSprite      = spr_mighty_walk;
        AnimationStart       = 0;
        AnimationEnd         = 11;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.083;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }
     
  // Run Animation            
     if(Animation = "RUN"){
        AnimationSprite      = spr_mighty_run;         
        AnimationStart       = 0;
        AnimationEnd         = 7;
        AnimationLoop        = 0;
        AnimationSpeed       = 0;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";               
     }
     
  // Push Animation            
     if(Animation = "PUSH"){
        AnimationSprite      = spr_mighty_push;         
        AnimationStart       = 0;
        AnimationEnd         = 9;
        AnimationLoop        = 0;
        AnimationSpeed       = .12; // Changing this won't do much for you, check the pushing script.
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }
                    
  // Jump/Roll Animation            
     if(Animation = "ROLL"){
        AnimationSprite      = spr_mighty_roll;         
        AnimationStart       = 0;
        AnimationEnd         = 7;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.2;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE"; 
     }  
          
  // Spindash Animation            
     if(Animation = "SPINDASH"){
        AnimationSprite      = spr_mighty_spindash;         
        AnimationStart       = 0;
        AnimationEnd         = 5;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.8;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }   
           
  // Peelout Animation:
     if(Animation = "PEELOUT"){
        AnimationSprite      = spr_mighty_peelout;         
        AnimationStart       = 0;
        AnimationEnd         = 3;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.8;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }     

  // Skidding Animation            
     if(Animation = "SKID"){
        AnimationSprite      = spr_mighty_skid;         
        AnimationStart       = 0;
        AnimationEnd         = 6;
        AnimationLoop        = 6;
        AnimationSpeed       = 0.50;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 3;
        AnimationLinkedTo    = "SKIDTURN";
     }
          
  // Skid Turn:
     if(Animation = "SKIDTURN"){
        AnimationSprite      = spr_mighty_skid;         
        AnimationStart       = 7;
        AnimationEnd         = 9;
        AnimationLoop        = 9;
        AnimationSpeed       = 0.50;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 1;
        AnimationLinkedTo    = "NONE";
     }    
          
  // Hanging:
     if(Animation = "HANG"){
        AnimationSprite      = spr_mighty_hang;         
        AnimationStart       = 0;
        AnimationEnd         = 7;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.1;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";
     }    
                    
  // Rotation 1:
     if(Animation = "ROTATION_1"){
        AnimationSprite      = spr_mighty_rotation_1;         
        AnimationStart       = 0;
        AnimationEnd         = 11;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.50;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";        
     }
  
  // Spring Animation            
     if(Animation = "SPRING"){
        AnimationSprite      = spr_mighty_spring;         
        AnimationStart       = 0;
        AnimationEnd         = 0;
        AnimationLoop        = 0;
        AnimationSpeed       = 0;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";
     }
           
  // Edge wobble 1 Animation            
     if(Animation = "EDGEWOBBLE_1"){
        AnimationSprite      = spr_mighty_edge_balance;         
        AnimationStart       = 0;
        AnimationEnd         = 4;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.15;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";
     }
           
  // Edge wobble 2 Animation            
     if(Animation = "EDGEWOBBLE_2"){
        AnimationSprite      = spr_mighty_edge_balance2;         
        AnimationStart       = 0;
        AnimationEnd         = 6;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.15;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";
     }                          
    
  // Hurt Animation            
     if(Animation = "HURT"){
        AnimationSprite      = spr_mighty_hurt;         
        AnimationStart       = 0;
        AnimationEnd         = 4;
        AnimationLoop        = 3;
        AnimationSpeed       = 0.10;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";
     }
    
  // Goal Animation            
     if(Animation = "GOAL"){
        AnimationSprite      = spr_mighty_goal;         
        AnimationStart       = 0;
        AnimationEnd         = 10;
        AnimationLoop        = 9;
        AnimationSpeed       = 0.20;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";
     }
    
  // Goal (Finish) Animation            
     if(Animation = "GOAL_FINISH"){
        AnimationSprite      = spr_mighty_goal_finish;         
        AnimationStart       = 0;
        AnimationEnd         = 4;
        AnimationLoop        = 1;
        AnimationSpeed       = 0.10;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "IDLE";
     }       
  // Breath Animation            
     if(Animation = "BREATH"){
        AnimationSprite      = spr_mighty_breath ;         
        AnimationStart       = 0;
        AnimationEnd         = 7;
        AnimationLoop        = 0;
        AnimationSpeed       = 0;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";
     }
                          
  // Die Animation            
     if(Animation = "DIE"){
        AnimationSprite      = spr_mighty_die;     
        if(HasDrowned == false){   
           AnimationStart       = 0;        
           AnimationEnd         = 0;
           AnimationLoop        = 0;
           AnimationSpeed       = 0;
           AnimationRepeat      = 0;
           AnimationRepeatTimes = 0; 
        }else{
           AnimationStart       = 1;
           AnimationEnd         = 1;
           AnimationLoop        = 1;
           AnimationSpeed       = 0;
           AnimationRepeat      = 0;
           AnimationRepeatTimes = 0;        
        }       
        AnimationLinkedTo    = "NONE";
     }
                              
  // Drop Dash Animation            
     if(Animation = "DROPDASH"){
        AnimationSprite      = spr_sonic_drop_dash;         
        AnimationStart       = 0;
        AnimationEnd         = 5;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.6;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }
     
  // Hammer Drop Animation            
     if(Animation = "HAMMERDROP"){
        AnimationSprite      = spr_mighty_hammer_drop;         
        AnimationStart       = 0;
        AnimationEnd         = 7;
        AnimationLoop        = 4;
        AnimationSpeed       = 0.6;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }
     
     // Uncurl Animation            
     if(Animation = "UNCURL"){
        AnimationSprite      = spr_mighty_uncurl;         
        AnimationStart       = 0;
        AnimationEnd         = 5;
        AnimationLoop        = 4;
        AnimationSpeed       = 0.2;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }    
                                
  // Transforming:
     if(Animation = "TRANSFORM"){
        AnimationSprite      = spr_mighty_transform;         
        AnimationStart       = 0;
        AnimationEnd         = 4;
        AnimationLoop        = 3;
        AnimationSpeed       = 0.18;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";        
     }             

	  // Fan:
     if(Animation = "FAN"){
        AnimationSprite      = spr_mighty_fan;         
        AnimationStart       = 0;
        AnimationEnd         = 9;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.2;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";        
     }
	 
	 // Standing Spin:
     if(Animation = "SPIN"){
        AnimationSprite      = spr_mighty_spin;         
        AnimationStart       = 0;
        AnimationEnd         = 11;
        AnimationLoop        = 0;
        AnimationSpeed       = 0;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";        
     }
	 
	 // Pole Swing:
     if(Animation = "SWING"){
        AnimationSprite      = spr_mighty_swing;         
        AnimationStart       = 0;
        AnimationEnd         = 11;
        AnimationLoop        = 0;
        AnimationSpeed       = 0;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";        
     }