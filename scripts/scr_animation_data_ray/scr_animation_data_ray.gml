/// @description  scr_animation_data_ray()
//  All of Rays Animations are stored here:
 
  // Idle Animation (Standing)
     if(Animation = "IDLE"){
        AnimationSprite      = spr_ray_idle;
        AnimationStart       = 0;
        AnimationEnd         = 5;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.1;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";      
     } 
        
  // Idle Animation (Foot tapping)      
     if(Animation = "IDLE_2"){
        AnimationSprite      = spr_ray_idle2;     
        AnimationStart       = 0;
        AnimationEnd         = 13;
        AnimationLoop        = 4;  
        AnimationSpeed       = 0.10;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }  
        
  // Lookup Animation   
     if(Animation = "LOOK_UP"){
        AnimationSprite      = spr_ray_lookup;     
        AnimationStart       = 0;
        AnimationEnd         = 5;
        AnimationLoop        = 5;
        AnimationSpeed       = 0.15;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";       
     } 
        
  // Crouch Animation   
     if(Animation = "CROUCH"){
        AnimationSprite      = spr_ray_crouch;     
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
        AnimationSprite      = spr_ray_walk;
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
        AnimationSprite      = spr_ray_run;         
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
        AnimationSprite      = spr_ray_push;         
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
        AnimationSprite      = spr_ray_roll;         
        AnimationStart       = 0;
        AnimationEnd         = 15;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.2;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE"; 
     }  
          
  // Spindash Animation            
     if(Animation = "SPINDASH"){
        AnimationSprite      = spr_ray_spindash;         
        AnimationStart       = 0;
        AnimationEnd         = 15;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.8;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }   
           
  // Peelout Animation:
     if(Animation = "PEELOUT"){
        AnimationSprite      = spr_ray_peelout;         
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
        AnimationSprite      = spr_ray_skid;         
        AnimationStart       = 0;
        AnimationEnd         = 8;
        AnimationLoop        = 8;
        AnimationSpeed       = 0.50;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "SKIDTURN";
     }
          
  // Skid Turn:
     if(Animation = "SKIDTURN"){
        AnimationSprite      = spr_ray_skidturn;         
        AnimationStart       = 0;
        AnimationEnd         = 3;
        AnimationLoop        = 3;
        AnimationSpeed       = 0.50;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 1;
        AnimationLinkedTo    = "NONE";
     }    
          
  // Hanging:
     if(Animation = "HANG"){
        AnimationSprite      = spr_ray_hang;         
        AnimationStart       = 0;
        AnimationEnd         = 5;
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
        AnimationSprite      = spr_ray_spring;         
        AnimationStart       = 0;
        AnimationEnd         = 1;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.5;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
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
        AnimationSprite      = spr_ray_hurt;         
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
        AnimationSprite      = spr_ray_goal;         
        AnimationStart       = 0;
        AnimationEnd         = 15;
        AnimationLoop        = 14;
        AnimationSpeed       = 0.2;
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
        AnimationSprite      = spr_ray_die;     
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
	 
	 // Squirrel Glide Animation            
     if(Animation = "SGLIDE"){
        AnimationSprite      = spr_ray_squirrel_glide;         
        AnimationStart       = 4;
        AnimationEnd         = 0;
        AnimationLoop        = 0;
        AnimationSpeed       = 0;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";       
     }
	 
	 // Squirrel Glide Animation (Start from Lean Down)
	 if(Animation = "SGLIDED"){
        AnimationSprite      = spr_ray_squirrel_glide;         
        AnimationStart       = 8;
        AnimationEnd         = 0;
        AnimationLoop        = 0;
        AnimationSpeed       = 0;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";       
     }
	 
	 // Squirrel Glide Animation (Start from Lean Up)
	 if(Animation = "SGLIDEU"){
        AnimationSprite      = spr_ray_squirrel_glide;         
        AnimationStart       = 0;
        AnimationEnd         = 0;
        AnimationLoop        = 0;
        AnimationSpeed       = 0;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";       
     }
	 
	 // Squirrel Glide (Lean Up)
	 if(Animation = "SGLIDEUP") {
        AnimationSprite      = spr_ray_squirrel_glideup;         
        AnimationStart       = 0;
        AnimationEnd         = 1;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.4;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }   
	 
	 // Squirrel Glide (Lean Down)
	 if(Animation = "SGLIDEDOWN") {
        AnimationSprite      = spr_ray_squirrel_glidedown;         
        AnimationStart       = 0;
        AnimationEnd         = 1;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.4;
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
        AnimationSprite      = spr_ray_fan;         
        AnimationStart       = 0;
        AnimationEnd         = 9;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.2;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";        
     }      
