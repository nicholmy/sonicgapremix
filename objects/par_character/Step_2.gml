/// @description  Keep the character within the level's boundaries.

   // Create the Sprite offset:
      var _SOffset = sprite_get_width(spr_mask_main) div 2;
      
   // Find Camera:    
      var _Cam     = obj_camera;
                    
   // Check the Horizontal speed and whether not we collide with the horizontal borders:
      if(instance_exists(_Cam)){
         if(x <= (_Cam.Cam_LeftLimit)+_SOffset && XSpeed < 0.0){  
            XSpeed = 0;
            x     = (_Cam.Cam_LeftLimit)+_SOffset;
         }else
         if(x >= (_Cam.Cam_RightLimit)-_SOffset && XSpeed > 0.0){   
            XSpeed = 0;
            x      = (_Cam.Cam_RightLimit)-_SOffset
         }                       
      }

   
    // Keep the character within the camera's boundaries.
       var _C;
       _C = instance_nearest(x, y, obj_camera);       
      /* 
       if(_C != noone){
          if(_C.Camera_BindX == 1){
             if(x <= _C.Camera_MinX - 7 + _SOffset && XSpeed < 0.0){
                XSpeed = 0;
                x      = _C.Camera_MinX - 7  + _SOffset; 
             }else
             if(x >= _C.Camera_MaxX - 7  - _SOffset && XSpeed > 0.0){
                XSpeed = 0;
                x      = _C.Camera_MaxX - 7  - _SOffset; 
             }             
          }
          if(_C.Camera_BindY == 1){
             if(y <= _C.Camera_MinY + _SOffset*2 && YSpeed < 0.0){
                YSpeed = 0;
                y      = _C.Camera_MinY + _SOffset*2; 
             }      
          }          
       }
       */
/*         if(_C != noone){
          if(_C.Camera_BindX == 1){
             if(x <= view_xview - 7 + _SOffset && XSpeed < 0.0){
                XSpeed = 0;
                x      = view_xview - 7 + _SOffset;
             }
             if(x >= view_xview+320 + 7 - _SOffset && XSpeed > 0.0){
                XSpeed = 0;
                x      = view_xview+320 + 7 - _SOffset;
             }             
          }
       }


/* */
///Animation Core.
// Define the core system of the animation system:
   scr_animation_core();

/* */
///Apply Animations and Direction.
// Used to apply animations and change the facing direction:

   // Change the direction we face:
      scr_animation_direction();
      
   // Apply the correct animation:
      scr_animation_apply();   
      scr_animation_apply_tail();
 
// In some cases we have to modify the animation speed, and we do exactly that here:

   // Walking/Jogging Animation:
      if(Animation == "WALK" && Ground){
        if(CharacterID == CharacterSonic){
           AnimationSpeed = min(0.30, max(0.05+abs(XSpeed)/25));
        }
        if(CharacterID == CharacterTails){
           AnimationSpeed = min(0.25, max(0.10+abs(XSpeed)/25));
           TailSpeed      = min(0.20, max(0.10+abs(XSpeed)/25));
      }
        if(CharacterID == CharacterKnuckles){
           AnimationSpeed = min(0.25, max(0.05+abs(XSpeed)/25));
        }      
        if(CharacterID == CharacterAmy){
           AnimationSpeed = min(0.20, max(0.05+abs(XSpeed)/25));
        }
        if(CharacterID == CharacterMighty){
           AnimationSpeed = min(0.30, max(0.05+abs(XSpeed)/25));
        } 
		if(CharacterID == CharacterRay){
           AnimationSpeed = min(0.30, max(0.05+abs(XSpeed)/25));
        } 
     }

   // Running Animation:
      if(Ground && Animation == "RUN"){
         if(CharacterID == CharacterSonic && CharacterState != CharacterNormal){
            AnimationSpeed = 0.20;
         }else{
            AnimationSpeed = 0.20+abs(XSpeed)/25;
         }
         if(CharacterID == CharacterTails){
            AnimationSpeed = 0.20+abs(XSpeed)/25;
            TailSpeed      = 0.25+abs(XSpeed)/25;
         }
         if(CharacterID == CharacterKnuckles){
            AnimationSpeed = 0.20+abs(XSpeed)/25;
         }         
         if(CharacterID == CharacterAmy){
            if(Action != ActionSpindash){
               AnimationSpeed = 0.10+abs(XSpeed)/20;
            }else{
               AnimationSpeed = (SpindashAccumulator)*.030;
            }
         }
		 if(CharacterID == CharacterMighty){
            AnimationSpeed = 0.20+abs(XSpeed)/25;
         }  
		 if(CharacterID == CharacterRay){
            AnimationSpeed = 0.20+abs(XSpeed)/25;
         } 
      }  

   // Rolling Animation:  
      if(Action = ActionRolling){
        if(CharacterID != CharacterTails){
           if(Ground == true){
              AnimationSpeed = 0.25+abs(XSpeed)/12;
              RenderingSpeed = AnimationSpeed;
           }else{
              AnimationSpeed = RenderingSpeed;
          }
        }else{
            AnimationSpeed = 0.25;
            TailSpeed      = 0.25;
        }
      }
  
   // Jumping Animation:
      if(Action = ActionJump && CharacterID != CharacterAmy){
         if(CharacterID != CharacterAmy){
            if(CharacterID != CharacterTails){
               if(DropDashFlag != 2){
                  // We set the rendering speed in the jump script.
                     AnimationSpeed = RenderingSpeed;
               }
            }else{
               AnimationSpeed = 0.25;
               TailSpeed      = 0.25;
            }
         }
      }  
  
   // Amy's Jumping/Rolling Animation: 
      if(CharacterID == CharacterAmy){
         if(Action == ActionJump && AmyRollJump == false || Animation == "JUMP"){
            if(YSpeed > 0 && AnimationFrame < 2){
               AnimationFrame += 0.25;
            }else if(YSpeed > 0 && AnimationFrame >= 2){
                     AnimationFrame = 2;
            }
            if(YSpeed <= 0){
               AnimationFrame = 0;
            }
         }else if(Action == ActionJump && AmyRollJump == true){
                  AnimationSpeed = RenderingSpeed;
         }
      }  
  
   // Amy's Hammer Spin Animation:  
      if(CharacterID == CharacterAmy){
         if(AmyHammerAttack == 2){
            AnimationSpeed = min(0.30, max(0.10+abs(XSpeed)/25));
         }
      }
  
   // Limit Jump/Roll Animation:
      if(Action == ActionJump || Action == ActionRolling){
         if(RenderingSpeed > 1.5){
            RenderingSpeed = 1.5;
         }
         if(AnimationSpeed > 1.5){
            AnimationSpeed = 1.5
         }
      }
  
   // If we hit a wall, reset the animation speed while jumping.
      if(!Ground && YSpeed >= 0 && (scr_character_collision_right(x, y, 0, spr_mask_big) && KeyRight || scr_character_collision_left(x, y, 0, spr_mask_big) && KeyLeft )){
         if(Action = ActionJump || Action = ActionRolling){
            RenderingSpeed = 0.25;
            AnimationSpeed = 0.25;
         }
      }
      
           
   // In some cases, we have to modify the animation speed, we do exactly that, here:
/*   
      // Modify the Walking/Jogging animation:
      if(Animation == "WALK" && Ground){
         if(CharacterID == CharacterSonic){
            AnimationSpeed = min(0.30, max(0.05+abs(XSpeed)/25));
         }
         if(CharacterID == CharacterAmy){
            AnimationSpeed = min(0.20, max(0.05+abs(XSpeed)/25));        
         }
         if(CharacterID == CharacterTails){
            AnimationSpeed = 0
            TailSpeed      = min(0.025, max(0.05+abs(XSpeed)/25));            
         }        
      }
   
      // Modify the Running animation:
      if(Ground){
         if(Animation == "RUN"){
            if(CharacterID != CharacterAmy){            
               if((CharacterState != CharacterSuper && CharacterState != CharacterHyper)){
                  AnimationSpeed = 0.20+abs(XSpeed)/25
               }else{
                  AnimationSpeed = 0.20; // Super Sonic "Flying" Frame speed.
               }
               TailSpeed = 0.25+abs(XSpeed)/25;
            }else{
               if(Action != ActionSpindash){
                  AnimationSpeed = 0.10+abs(XSpeed)/20;
               }else{
                  AnimationSpeed = (SpindashAccumulator)*.030
               } 
            }
         }
      }
         
      // Modify the Rolling animation:    
         if(CharacterID != CharacterTails){
            if(Action = ActionRolling && Ground){
               AnimationSpeed = 0.25+abs(XSpeed)/12;
               RenderingSpeed = AnimationSpeed;
            }else
            if(Action = ActionRolling && !Ground){
               AnimationSpeed = RenderingSpeed;         
            }
         }else{
               AnimationSpeed = 0.25
         }               
      
         
      // Modify the Jumping animation:
      if(CharacterID != CharacterAmy){
         if(CharacterID != CharacterTails){      
            if(Action = ActionJump && DropDashFlag != 2){
               // We set the rendering speed that we use here
               // in scr_character_action_jump()
               AnimationSpeed = RenderingSpeed;         
            }
         }else{
               AnimationSpeed = 0.25;
         }
      }
      
      // Amy Jump/Roll Animation:
      if(CharacterID = CharacterAmy){
         if(Action = ActionJump && AmyRollJump = false || Animation = "JUMP"){
            if(YSpeed > 0 && AnimationFrame < 2){
               AnimationFrame += 0.25;
            }else if(YSpeed > 0 && AnimationFrame >= 2 ){
                     AnimationFrame = 2;
            }
            if(YSpeed <= 0){
               AnimationFrame = 0;
            }           
         }else if(Action = ActionJump && AmyRollJump = true){
                  AnimationSpeed = RenderingSpeed; 
         }           
      }      
      
      // Amy hammer spin:
      if(CharacterID == CharacterAmy){
         if(AmyHammerAttack = 2){
            AnimationSpeed = min(0.30, max(0.10+abs(XSpeed)/25));
         }
      }
      
      // Limit the Jumping/Rolling animation speed:
         if(Action = ActionJump || Action = ActionRolling){
            if(RenderingSpeed > 1.5){
               RenderingSpeed = 1.5;
            }
            if(AnimationSpeed > 1.5){
               AnimationSpeed = 1.5;
            }            
         }
      
      // If we hit a wall while Jumping OR rolling, reset the animation speed just like in original games: 
      if(!Ground && YSpeed >= 0 && (scr_character_collision_right(x, y, 0, spr_mask_big) && KeyRight || scr_character_collision_left(x, y, 0, spr_mask_big) && KeyLeft )){
         if(Action = ActionJump || Action = ActionRolling){
            RenderingSpeed = 0.25;
            AnimationSpeed = 0.25;
         }
      }
      


/* */
///Rotate the characters sprite.
// This will rotate the sprite while resolve thikering when moving on slopes.
   
   // Only run this if we're using the 360 rotation.
      if(global.AngleMode == 360){
         if(!scr_character_collision_bottom_object(x,y, Angle, spr_mask_main, par_collision_solid_no_angle) && !scr_character_collision_bottom_object(x, y, Angle, spr_mask_main, par_collision_platform_no_angle)){
            if(Ground && (AnimationDirection == 1 && Angle >= 45 && Angle <= 300) or (AnimationDirection == -1 && Angle >= 45 && Angle <= 310)){            
               AnimationAngle = RelativeAngle; 
               TailAngle      = Angle;
            }else{
               AnimationAngle = scr_character_rotate_towards(0, AnimationAngle, 6);
               TailAngle      = scr_character_rotate_towards(0, TailAngle, 6);  
            }
         }else{
               AnimationAngle = 0;
               TailAngle      = 0;         
         }
       }
          
   // Otherwise, only use 8 directions for the rotation:
      if(global.AngleMode == 8){ 
         if(Ground && !scr_character_collision_bottom_object(x,y, Angle, spr_mask_main, par_collision_solid_no_angle) && !scr_character_collision_bottom_object(x, y, Angle, spr_mask_main, par_collision_platform_no_angle)){    
            if(Angle>=328   && Angle<   360) { AnimationAngle =   0; TailAngle =   0; }
            if(Angle>=0     && Angle<    45) { AnimationAngle =   0; TailAngle =   0; }
            if(Angle>=45    && Angle<  67.5) { AnimationAngle =  45; TailAngle =  45; }
            if(Angle>=67.5  && Angle< 112.5) { AnimationAngle =  90; TailAngle =  90; }
            if(Angle>=112.5 && Angle< 157.5) { AnimationAngle = 135; TailAngle = 135; }
            if(Angle>=157.5 && Angle< 202.5) { AnimationAngle = 180; TailAngle = 180; }
            if(Angle>=202.5 && Angle< 247.5) { AnimationAngle = 225; TailAngle = 225; }
            if(Angle>=247.5 && Angle< 292.5) { AnimationAngle = 270; TailAngle = 270; }
            if(Angle>=292.5 && Angle<   328) { AnimationAngle = 315; TailAngle = 315; } 
            SnapTimer = 8;
         }else{
            if(--SnapTimer <= 0){
               AnimationAngle = scr_character_rotate_towards(0, AnimationAngle, 45);
               TailAngle      = scr_character_rotate_towards(0, TailAngle, 45);         
               SnapTimer      = 8;
            }
         }              
      }
        
   // Set the Angle to 0 at certain animations:
      if(Animation = "IDLE" || Animation = "IDLE_2" || Animation = "LOOK_UP"       || Animation = "CROUCH"         || Animation = "SPINDASH" || 
         Animation = "ROLL" || Animation = "HURT"   || Animation = "GOAL"          || Animation = "EDGE_BALANCE_1" || Animation = "EDGE_BALANCE_2" ||
         Animation = "PUSH" || Animation = "FLY"    || Animation = "FLY_EXHAUSTED" || Rotation_Animation != 0){  
           
         AnimationAngle = 0;
         if(Animation  != "ROLL"){
            TailAngle   = 0;
         }
         
      }

   // Set the Angle of Miles tail.
      if((Action = ActionJump || Action = ActionRolling || Animation = "ROLL") && Ground == false){
          TailAngle     = point_direction(xprevious, yprevious, x, y);
          if(Ground == false && TailDirection != 1){
             TailDirection = 1;
          }
      }

/* */
/// Water Splash effect.

 // Create a Water Splash:
    if(global.WaterSurfacePosition != -1 && Action != ActionDie){
       if ((abs(YSpeed) >= 0)
       && ((y > global.WaterSurfacePosition && PreviousY < global.WaterSurfacePosition)
       ^^  (y < global.WaterSurfacePosition && PreviousY > global.WaterSurfacePosition))){
           scr_create_dummy_effect(spr_water_splash, 0.25, x, global.WaterSurfacePosition-8, 1, -999996);
           PlaySound(snd_object_water_splash, global.SFXVolume, 1, 1);
       }
    }


/* */
/// Platform Check Reset.
 // To prevent that the character bounces or loses collision on platforms, we create a 30 frames long timer.

   if((Ground == false || place_meeting(x, y, par_collision_platform) == false) && PlatformCheck == 1){
      if(PlatformCheckTimer > 0){
         PlatformCheckTimer -= 1;
      }else if(PlatformCheckTimer = 0){
               PlatformCheck      = false;
               PlatformCheckTimer = 30;
      }
   }

/* */
/*  */
