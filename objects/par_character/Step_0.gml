/// @description  Death, Movement, Actions, Underwater
    if(Action = ActionDie){
    
       if(DeathTimer == "NO"){
          Angle = 0;
          if(global.BonusStage == false){            
             YSpeed        = -7;
          }          
          DeathTimer    = 120;
          //depth         = -999995;  
          if(instance_exists(obj_audio_manager)){
             with(obj_audio_manager){
                  DeadFade = true;
             }
          }       
          if(global.BonusStage == false){          
             global.Lives -= 1;
             global.DoTime = 0;
             PlaySound(snd_character_die, global.SFXVolume, 1, 0);
          }
          
          // Destroy Shields:
             if(ShieldChild != 0){
                with(ShieldChild){
                     instance_destroy();
                }
             }             
             
          // Make sure to reset the Character state:
             CharacterState = CharacterNormal;
             Animation      = "IDLE";
             alarm[0]       = -1;             
             
       }
       
       // Set Gravity:
          if(Underwater == false){
             YSpeed += 0.21875;
          }else{
             YSpeed += 0.0625;
          }
          y      += YSpeed;
          
       
       // Stop Sounds:
          StopSound(snd_character_flying);
          StopSound(snd_character_flying_fall);
          
       // Decrease Kill Timer:
          if(DeathTimer != 0){
             DeathTimer--
          }
          if(DeathTimer > -128 && DeathTimer <= 0){
             if(global.BonusStage == false){
                if(global.Lives > 0){
                   if(instance_exists(obj_fade_restart) == false){
                      instance_create(0, 0, obj_fade_restart);
                   }
                }else{
                   if(instance_exists(obj_game_over) == false){
                      instance_create(0, 0, obj_game_over);
                   }                
                }
             }else{
                   if(instance_exists(obj_fade_from_bonus) == false){
                      instance_create(0, 0, obj_fade_from_bonus);                   
                   }               
             }
             DeathTimer = -128;
          } 
       
    }
    
 // Death fade fix:
    if(instance_exists(obj_audio_manager)){
       if(obj_audio_manager.DeadFade == true && Action != ActionDie){
          DeadFade = -1;
       }
    }

    

/// Handle X/Y, Collision and Objects.


 // Exit if we're death:
    if(Action != ActionDie){
                                                                             
    var TotalSteps, Sample;

    if(Allow_XMovement) {
       if(SpeedLimit){
          XSpeed = scr_clamp(XSpeed, -XSpeed_Max, XSpeed_Max);
       }

    TotalSteps = 1;
    if(XSample > 0) {
       TotalSteps += floor(abs(XSpeed) / XSample);
    }

    Sample = XSpeed / TotalSteps;

    repeat (TotalSteps) {
                                             
        x += cos(degtorad(Angle)) * Sample;               
        y -= sin(degtorad(Angle)) * Sample;
           
        // Move the Character outside in case he gets stuck inside a wall:
        while (Sample > 0 && scr_character_collision_right(x, y, Angle, spr_mask_mid) == true) {
               x -= cos(degtorad(Angle));
               y += sin(degtorad(Angle));          
        }
        while (Sample < 0 && scr_character_collision_left(x, y, Angle, spr_mask_mid) == true) {
               x += cos(degtorad(Angle));
               y -= sin(degtorad(Angle));         
        }
         
        scr_character_handle_layers();
        scr_character_handle_tunnel_locks();
        scr_character_handle_springs();
        scr_character_handle_casino_gimmicks();
        scr_character_handle_bosses();
        scr_character_handle_watersurface();  
        scr_character_handle_collapsing_tiles(); 
        scr_character_handle_platforms();
        scr_character_handle_launch_sensor();   
        scr_character_handle_bonus_objects();
		scr_character_handle_breakables(); 
		scr_character_handle_walltreadmill();
		scr_character_handle_gaps();
		scr_character_handle_hanging();
		scr_character_handle_gimmicks1();
        
        if (Ground) {
            while (scr_character_collision_main(x, y)) {
                x -= sin(degtorad(Angle));
                y -= cos(degtorad(Angle));
            }
            if (scr_character_collision_slopes(x, y, Angle, spr_mask_mid)) {
                while (not scr_character_collision_main(x, y)) {
                    x += sin(degtorad(Angle));
                    y += cos(degtorad(Angle));
                }
            }
              
            if (Allow_YMovement) {

                // Get a new angle:
                if (scr_character_collision_left_edge(x, y, Angle) and scr_character_collision_right_edge(x, y, Angle)) {
                    Angle = scr_character_calculate_angle(x, y, Angle);
                }
            }
        }
        
        scr_character_handle_tunnel_locks();          
        scr_character_handle_collectibles();       
        scr_character_handle_harmful();
        scr_character_handle_spikes();         
        scr_character_handle_obstacles();                                               
        scr_character_handle_monitors("Side");      
        scr_character_handle_enemies();  
                        
        if (XSpeed == 0) {
            break; // abort;
        }
               
    }
            
}     
                
if (Allow_YMovement) {   
    // Limit the vertical speed:
    if (AirLimit) {
        YSpeed = scr_clamp(YSpeed, -YSpeed_Max, YSpeed_Max);
    }

    if (not Ground) {
        TotalSteps = 1;
        if (XSample > 0) {
            TotalSteps += floor(abs(YSpeed) / YSample);
        }
    
        Sample = YSpeed / TotalSteps;
    
        repeat (TotalSteps) {
                                                 
            x += sin(degtorad(Angle)) * Sample;
            y += cos(degtorad(Angle)) * Sample;

            // Move the player outside in case he got stuck inside floor or the ceiling:        
            while (Sample < 0 and scr_character_collision_top(x, y, 0, spr_mask_mid) == true) {
                   x += sin(degtorad(Angle));
                   y += cos(degtorad(Angle));
            }
            while (Sample > 0 and scr_character_collision_bottom(x, y, 0, spr_mask_mid) == true) {
                   x -= sin(degtorad(Angle));            
                   y -= cos(degtorad(Angle));           
            }
  
            scr_character_handle_launch_sensor();                        
            scr_character_handle_layers();
            scr_character_handle_tunnel_locks();            
            scr_character_handle_watersurface()
            scr_character_handle_collapsing_tiles();
            scr_character_handle_springs();
            scr_character_handle_casino_gimmicks();
            scr_character_handle_spikes(); //Mighty has to check for spikes in the air before landing   
            scr_character_handle_bosses();                     
            scr_character_handle_platforms();
            scr_character_handle_enemies()        
            scr_character_handle_monitors("Top");            
            scr_character_handle_bonus_objects();
			scr_character_handle_breakables(); 
			scr_character_handle_walltreadmill();
			scr_character_handle_gaps();
			scr_character_handle_hanging();
			scr_character_handle_gimmicks1();
			
            Landed = false;                      
            // Check for Landing:            
            if (YSpeed >= 0 and scr_character_collision_bottom(x, y, 0, spr_mask_big)) {
                 if (scr_character_collision_left_edge(x, y, 0) and scr_character_collision_right_edge(x, y, 0)) {
                    scr_character_angle(scr_character_calculate_angle(x, y, Angle));
                 } else {
                    scr_character_angle(global.GravityAngle);
                 }
                 
                 // Check if landed on obstacles
                 if (scr_character_collision_bottom_object(x, y, Angle, spr_mask_main, par_collision_obstacles)) {
                     scr_character_angle(global.GravityAngle);
                 }

                 if(abs(XSpeed) <= abs(YSpeed) && RelativeAngle >= 22.5 && RelativeAngle <= 337.5){
                    XSpeed = -YSpeed*sign(sin(degtorad(RelativeAngle)));
					// Reduced speed penalty instead of half
                    if(RelativeAngle < 45 || RelativeAngle > 315) { XSpeed *= 0.75 }
                 }
  
                 //XSpeed -= sin(degtorad(Angle))*(YSpeed+ConversionFact);
                 YSpeed = 0;
                 Ground = true;
                 Landed = true;
                                               
                 // Return to a normal state when the character was hurt or jumping:
                 if (Action = ActionHurt || Action = ActionJump){
                     Action = ActionNormal;    
                 }
              
                 // Return to a normal state when the character was flying:
                 if (Action = ActionFly || Action = ActionFlydrop) {
                     Action = ActionNormal;
                     YAcceleration = YAccel_Common;
                 }
                 
                 // Allow for a smooth transition into rolling
                 if (KeyDown && abs(XSpeed) >= 1.03125) {
                    PlaySound(snd_character_roll, global.SFXVolume, 1, 1);
                    Action = ActionRolling;
                 }
                 
                 //Put any code that should be checked on landing here (Use landing flag)
                 if (CharacterID == CharacterMighty) {
                    scr_character_action_hammer_drop();
                    scr_character_action_uncurl();
                 } else if (CharacterID == CharacterSonic) {
					 scr_character_action_drop_dash();
				 }
            }
            
            /*if ((YSpeed < 0 and scr_character_collision_top(x, y, 0, spr_mask_large)) && (!scr_character_collision_top_object(x, y, Angle, spr_mask_large, par_collision_obstacles))) {
                // Calculate new terrain angle
                scr_character_angle(180);
             
                // Check if possible to land using that angle
                if (scr_character_collision_left_edge(x, y, Angle) && scr_character_collision_right_edge(x, y, Angle)) {
                    scr_character_angle(scr_character_calculate_angle(x, y, Angle));

                                                                 
                    // Check if the landed angle isn't a flat top
                    if (RelativeAngle > 160 && RelativeAngle < 200) {
                        scr_character_angle(global.GravityAngle);
                        YSpeed       = 0;  
                        ShieldUsable = true;                                         
                    }
					
                    // Calculate new movement values
                       XSpeed -= sin(degtorad(Angle))*(YSpeed); 
                       Ground = true;
                              
                } else {
                    scr_character_angle(global.GravityAngle);
                    YSpeed       = 0;
                    if (not Ground) {
                        break; // no need to continue looping
                    }  
                }
                
            }*/
			
			if ((YSpeed < 0 and scr_character_collision_top(x, y, 0, spr_mask_large)) && (!scr_character_collision_top_object(x, y, Angle, spr_mask_large, par_collision_obstacles))) {
				// Calculate new terrain angle
                scr_character_angle(180);
             
                // Check if possible to land using that angle
                if (scr_character_collision_left_edge(x, y, Angle) && scr_character_collision_right_edge(x, y, Angle)) {
                    var newAngle = scr_character_calculate_angle(x, y, Angle);
					
					if (newAngle < 135 || newAngle > 225) {
						scr_character_angle(newAngle);
						XSpeed -= sin(degtorad(Angle))*(YSpeed); 
						
						Ground = true;
						Landed = true;
						YSpeed = 0;
						Action = ActionNormal;
						FloorMode = round(Angle/90) % 4; 
						// Allow for a smooth transition into rolling
						if (KeyDown && abs(XSpeed) >= 1.03125) {
							PlaySound(snd_character_roll, global.SFXVolume, 1, 1);
							Action = ActionRolling;
						}
						
						//exit;
					}
				}
			}

            // Wall Collision (again)
            while (scr_character_collision_right(x, y, Angle, spr_mask_mid)) {
                x -= cos(degtorad(Angle));
                y += sin(degtorad(Angle));
            }
            while (scr_character_collision_left(x, y, Angle, spr_mask_mid)) {
                x += cos(degtorad(Angle));
                y -= sin(degtorad(Angle));
            }

            scr_character_handle_tunnel_locks();              
            scr_character_handle_collectibles();             
            scr_character_handle_harmful();
            scr_character_handle_spikes();            
            scr_character_handle_obstacles();
            scr_character_handle_monitors("Side");
			scr_character_handle_gaps();
                                                                           
        if (YSpeed == 0) {
            break; // abort;
        }
         
      }                                      

   }
}
     
    // Fall off the ground if the edges aren't colliding         
       if(Ground && ( FloorMode = 1 || FloorMode = 3 ) /*Angle != global.GravityAngle*/ && LockTunnel = 0){
          if( scr_character_collision_left_edge(x, y, Angle) == false
          ||(scr_character_collision_right_edge(x,y,  Angle) == false)){
             if(Action != ActionRolling && PeeloutFlag != 1){
                GSpeed        = XSpeed;             
                YSpeed        = -(dsin(RelativeAngle) * GSpeed+1)                           
                if(Angle >= 60 && Angle <= 300 && Angle != 180){
                   LaunchedTimer = 3;                 
                }                  
             }else{
                GSpeed        = XSpeed;             
                YSpeed        = -(dsin(RelativeAngle) * GSpeed+1)   
                if(Angle >= 60 && Angle <= 300 && Angle != 180){
                   LaunchedTimer = 3;
                }          
             }
                XSpeed = cos(degtorad(RelativeAngle))*XSpeed;
                Ground = false;                 
             }    
       }
    
    // Get the GSpeed:   
       scr_character_movement_gspeed();
     
   }     

/* */
with (other) {
/// Accel/Decel and more X/Y Movement related stuff.

 // Exit if we're death:
    if(Action != ActionDie){

    // Input Alarm, ignores left or right input while above zero.
    // Used to stop the character from inching up steep slopes.
       if(InputAlarm > 0){
          InputAlarm -= 1;
       }else{
          InputAlarm     = 0;
          AlarmDirection = 0;
       }
       
    // Accel/Decel changes:
       if(Ground){
          _Accel = XAcceleration;
          _Decel = XDeceleration;
          _Fric  = _Accel;
       }else{
          _Accel = XAcceleration * 2;
          _Decel = 0;
          _Fric  = 0;       
       }
       
   // Perform Horizontal / X Movement:
      scr_character_movement_x();
              
   // Perform Vertical / Y Movement:
      scr_character_movement_y();
            
   // Air Drag:
      if(!Ground && (Action != ActionHurt) ){
         if(YSpeed < 0 && YSpeed >= -4){
            XSpeed -= ((XSpeed / 0.125) / 256);
         }
      }           
                  
   // Floor Mode
      FloorMode = round(Angle/90) % 4;  
    }

             

            



/* */
}
/// Character states and actions.
//  Add all actions the character can perform, here!

  // Exit if we're death:
     if(Action != ActionDie){

  // Goal State:
     scr_character_action_goal();
                
  // Transforming (Has to be triggered before the jump script.)
     if(CharacterID != CharacterAmy){
        if(CharacterID != CharacterTails){
           scr_character_action_transform();
        }else if(CharacterID == CharacterTails){
                 if(global.Emeralds == 14){
                    scr_character_action_transform(); 
                 }
        }
     }
          
  // Shields (Has to be triggered before the jump script.)
     scr_character_action_shield();

  // Insta Shield (Has to be triggered before the jump script.)
     if(CharacterID == CharacterSonic){
        scr_character_action_insta_shield()
     }
                            
  // Drop Dash (Has to be triggered before the jump script.)
     if(CharacterID == CharacterSonic){  
        scr_character_action_drop_dash();
     }
  
  // Hyper Dash (Has to be triggered before the jump script.)
     if(CharacterID == CharacterSonic){  
        scr_character_action_hyper_dash();
     }
  
  // Miles Fly/Drop Action (Has to be triggered before the jump script.)
     if(CharacterID == CharacterTails){
        scr_character_action_fly();
     }
      
  // Knuckles gliding and climbing ability (Has to be triggered before the jump script.)
     if(CharacterID == CharacterKnuckles){ 
        scr_character_action_glide();
        scr_character_action_climb();
        scr_character_action_slide();
     }
       
  // Amy Hammer attacks 
     if(CharacterID == CharacterAmy){
        scr_character_action_hammer();
     }
   
  // Mighty's Hammer Drop and Uncurling from Spikes
     if(CharacterID == CharacterMighty){
        scr_character_action_hammer_drop();
        scr_character_action_uncurl();
        if (Ground) HasSpikeTapped = 0;
     }
	 
  // Ray's Squirrel Glide
	 if(CharacterID == CharacterRay){
        scr_character_action_squirrel_glide();
     }
	 
  // Spinning:
	 scr_character_action_spin();

                 
   // Collapsing tiles have to be handled differently to prevent that the Character gets stuck or gets pushed away.
   // This is why the following code exists here. Anywhere else, we'll just get stuck and won't be able to Jump.
    if(place_meeting(x, y + YSpeed, par_collision_collapse_tiles)){
       while(!place_meeting(x, y + sign(YSpeed), par_collision_collapse_tiles)){
              y += sign(YSpeed);
       }
       Ground = true;   
    }         
                     
  // Jump:
     scr_character_action_jump();  
     
  // Look up:     
     scr_character_action_lookup();    
           
  // Crouch:
     scr_character_action_crouch();      
     
  // Spindash:   
     scr_character_action_spindash();   
           
  // Push:
     scr_character_action_push();  
     
  // Peelout:
     if(CharacterID == CharacterSonic){
        if(AbilityPeelout == 1){
           scr_character_action_peelout();
        }
     }
        
  // Skidding:
     scr_character_action_skid();
	 
  // Hanging:
	 scr_character_action_hang();
	 
  // Fans:
	 scr_character_action_fan();
	 

     
     }
  
  

/* */
/// Input Lock.

 // Exit if we're death:
    if(Action != ActionDie){
       
    // Exit if we're dead or hurt:
       if(Action != ActionDie && Action != ActionHurt){
              
    // Enable after jumping:
       if(InputLock_S && !JumpLock && Action = ActionJump){
          LockTimer = 0;
          AlarmDirection = 0;          
       }
       
    // Disable Alarm Direction when the angle is 0:
       if(AlarmDirection != 0 && Angle = 0){
          AlarmDirection = 0;
       }
       
    // Disable Locks:
       if(LockTimer < 1 && InputLock_S = true){
          InputLock_S = false;
          
          // Enable input:
             InputLock_L = 0;
             InputLock_R = 0;
         
       }
       
    // Enable Locks:
       if(InputLock_S && XSpeed > 0){
          InputLock_L = 1;
          KeyRight    = 1;
       }else if(InputLock_S && XSpeed < 0){
                InputLock_R = 1;
                KeyLeft    = 1;
       }
       
    // Decrease lock timer:
       if(LockTimer > 0){
          LockTimer -= 1;
       }
       
       }
       
    }       

/* */
///(Invincibility) Timers & Sparkle Effects.
 
 // Exit if we're death:
    if(Action != ActionDie){
          
   // Speed Shoe timer:
      if(SpeedShoeTimer > -1 && HasSpeedShoes == true){
         SpeedShoeTimer--
      }else{
         HasSpeedShoes  = false;
         SpeedShoeTimer = 900;
      }
   
   // If our Invincibility timer is above zero, slowly decrease from it:
      if(InvTimer > -1){
         InvTimer -= 1;
         if(InvTimer == 0){
            Invincibility = 0;
            InvTimer      = 0;
         }
      }
   
   // When we're hit and collide with the ground, set a invincibility timer:
      if(Invincibility == 1 && InvTimer == -1 && Ground){
         InvTimer = 120;
      }
   
   // When we're super, we're always invincible:
      if(CharacterState = CharacterSuper or CharacterState = CharacterHyper){
         Invincibility =  2;
         InvTimer      = -2;
      }else{
         if(InvTimer = -2){
            Invincibility = 0;
            InvTimer      = 0;
         }
      }
      
   // Sparkles:
      if(Invincibility > 1){
         if(CharacterState != CharacterHyper){
            repeat(1){
                   instance_create(x + YLen*4, y-XLen*4, obj_invincibility_sparkle)
            }
         }else{
            if(CharacterState == CharacterHyper){
               repeat(1){
                      instance_create(x + YLen*4, y-XLen*4, obj_hyper_sparkle)
               }      
            }   
         }
      }

    }

/* */
/// Die from Heights.

    if(global.DeathHeight == noone){
       if(y >= room_height && Action != ActionDie){
          Action = ActionDie;
       }
    }else{
       if(y >= global.DeathHeight && Action != ActionDie){
          Action = ActionDie;
       }
    }

/* */
/// Modify Palette position.

 // Default:
    if(CharacterID = CharacterSonic && CharacterState = CharacterNormal && TransformEnded = 0){
       PalettePosition = 0;
    }
 
 // Back to normal Sonic Palette:
    if(CharacterID = CharacterSonic && CharacterState = CharacterNormal && TransformEnded == 1){
       if(PalettePosition >= 10){
          TransformEnded   = 0;
          PalettePosition  = 0;
       }else{
          PalettePosition += 0.50;
       }
    }
    
 // Back to normal Tails Palette:
    if(CharacterID = CharacterTails && CharacterState = CharacterNormal && TransformEnded == 1){
       if(PalettePosition >= 6){
          TransformEnded   = 0;
          PalettePosition  = 0;
       }else{
          PalettePosition += 0.25;
       }
    }    
    
 // Back to normal Knuckles Palette:
    if(CharacterID = CharacterKnuckles && CharacterState = CharacterNormal && TransformEnded == 1){
       if(PalettePosition >= 5){
          TransformEnded   = 0;
          PalettePosition  = 0;
       }else{
          PalettePosition += 0.25;
       }
    }  
        
 // Super Sonic Palette:
    if(CharacterID = CharacterSonic && CharacterState = CharacterSuper){
       if(PalettePosition > 2){
          PalettePosition = 0;
       }
       PalettePosition += 0.05;
    }
    
 // Hyper Sonic Palette:
    if(CharacterID = CharacterSonic && CharacterState = CharacterHyper){
       if(PalettePosition > 7){
          PalettePosition = 0;
       }
       PalettePosition += 0.10;
    }
    
 // Super Tails Palette:
    if(CharacterID = CharacterTails && CharacterState != CharacterNormal){
       if(PalettePosition > 9){
          PalettePosition = 0;
       }
       PalettePosition += 0.15;
    }    
    
 // Hyper Knuckles Palette:
    if(CharacterID = CharacterKnuckles && CharacterState != CharacterNormal){
       if(PalettePosition > 11){
          PalettePosition = 0;
       }
       PalettePosition += 0.20;
    }        
    

/* */
/// Gameplay Effects.

    // After Effect:
       if(!Underwater){
          if((Action = ActionHammerDrop && current_time div 40) || (CharacterState = CharacterHyper && current_time div 40) || (HomingUsed = true && current_time div 40) | (CharacterID == CharacterAmy 
          && (AmyHammerAttack = 2 || AmyHammerAttack = 3) && current_time div 40)){
             if(instance_number(obj_aftereffect) < 3){
                Effect = (instance_create(xprevious, yprevious, obj_aftereffect)){
                          Effect.Parent             = id;
                          Effect.sprite_index       = AnimationSprite;
                          Effect.AnimationFrame     = AnimationFrame;
                          Effect.AnimationDirection = AnimationDirection;
                          Effect.AnimationAngle     = AnimationAngle;
                }
             }
          }
       }


/* */
/// Underwater handling.
 
 // Only run this if we're not in a bonus stage, died or won a stage.
    if(Action != ActionDie && GoalState != 1 && !instance_exists(obj_scoring_results) && !instance_exists(obj_game_over)){
    
       // Underwater:
          if(Underwater == true){
          
             // Stop this code block if we have a Bubble Shield or we're hyper:
                if(Shield == ShieldBubble && CharacterState != CharacterHyper){
                   DrownTimer = 1800;
                   if(DrownCounter != -1){
                      if(instance_exists(DrownCounter)){
                         instance_destroy(DrownCounter);
                      }
                   }
                   exit;
                }
                
             // Reduce the drowning timer:
                if(DrownTimer != 0 && CharacterState != CharacterHyper){
                   DrownTimer--
                }
          
             // Start the drowning theme:
                if(DrownTimer == 650){
                   if(CheckSound(obj_audio_manager.Jingle_Drowning ) == false){
                      PlaySound(obj_audio_manager.Jingle_Drowning, global.SFXVolume, 1, 1);
                   }
                   if(instance_exists(obj_water_countdown) == false){
                      DrownCounter = instance_create(x, y-32, obj_water_countdown);
                      DrownCounter.Parent = id;
                   }
                }
                
             // Kill the Character.
                if(DrownTimer == 0){
                   DrownTimer = 1800;
                   Action     = ActionDie;
                   HasDrowned = true;
                   if(CheckSound(obj_audio_manager.Jingle_Drowning)){
                      StopSound(obj_audio_manager.Jingle_Drowning);
                   }
                }
             
             // Bubble Action.
                if(Action = ActionBreath && !Ground){
                   if(BubbleTimer < 1){
                      XSpeed = 0;
                      YSpeed = 0;
                   }
                    if(KeyLeft or KeyRight){
                       XSpeed += AnimationDirection*.025
                    }
                   if(BubbleTimer < 20){
                      BubbleTimer++
                   }else{
                      BubbleTimer = 0;
                      Animation   = "WALK";
                      Action      = ActionNormal;
                   }
                   DrownTimer = 1800;
                   if(DrownCounter != -1){
                      if(instance_exists(DrownCounter)){
                         instance_destroy(DrownCounter);
                      }
                   }
                   if(CheckSound(obj_audio_manager.Jingle_Drowning) == true){ 
                      if(Invincibility < 1.5){
                         LoopSound(obj_audio_manager.ZoneBGM, global.BGMVolume, 1);   
                         global.BGMVolume = global.MaxBGMV;
                      }
                      StopSound(obj_audio_manager.Jingle_Drowning);
                   }
                }else if(Action = ActionBreath && Ground){
                         Action       = ActionNormal;
                         BubbleTimer  = 0;
                }
                
             // No Bubble Action.
                if(Action != ActionBreath){
                   BubbleTimer = 0;
                } 
                
             // Alarm Sounds:
              if(DrownTimer mod 400 == 0){
                 if(CheckSound(obj_audio_manager.Jingle_Drowning) == false){
                     PlaySound(snd_object_alarm_count, global.SFXVolume, 1, 1);
                 }
              }    
                       
             // Air bubbles:
                if(DrownTimer mod 78 == 0 && DrownTimer > 600 && !InSpace){
                   Bubble = instance_create(x+irandom_range(-7, 8), y-6, obj_air_bubble);
                   Bubble.BubbleIndex = choose(0, 1, 2, 1, 3);
                }
                                            
          }
          
          // Last Checks above water:
             if(Underwater == false && DrownTimer != 1800){
                DrownTimer = 1800;
                DrownTimer = 1800;
                if(DrownCounter != -1){
                   if(instance_exists(DrownCounter)){
                      instance_destroy(DrownCounter);
                   }
                }
                if(CheckSound(obj_audio_manager.Jingle_Drowning) == true){ 
                   if(Invincibility < 1.5){
                      LoopSound(obj_audio_manager.ZoneBGM, global.BGMVolume, 1);   
                      global.BGMVolume = global.MaxBGMV;
                   }
                   StopSound(obj_audio_manager.Jingle_Drowning);
                }
             }
       
    }
           
          // Drowning Bubbles.
             if(Action = ActionDie && HasDrowned && !InSpace){
                if(BreathTimer != 0){
                   BreathTimer -= 0.5;
                   if(random(4) >= 2){
                      Bubble = instance_create(x+irandom_range(-7, 8), y-6, obj_air_bubble);
                      Bubble.BubbleIndex = choose(0, 1, 2, 1, 3);                 
                   }
                }
             }
             
          // Prevent music from not restarting.
             if(GoalState != 1 && !instance_exists(obj_scoring_results) && !instance_exists(obj_game_over)){
                if(CheckSound(obj_audio_manager.Jingle_Drowning) == false && CheckSound(obj_audio_manager.ZoneBGM) == false){
                   if((Action = ActionBreath or Underwater == false) && Action != ActionDie && DrownTimer > 0 && Invincibility < 1.5){
                      LoopSound(obj_audio_manager.ZoneBGM, global.BGMVolume, 1);
                      global.BGMVolume = global.MaxBGMV;
                   }
                }
             }     



/* */
/*  */
