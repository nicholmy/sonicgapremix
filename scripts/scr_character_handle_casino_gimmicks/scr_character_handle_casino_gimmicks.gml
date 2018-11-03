/// @description  scr_character_handle_casino_gimmicks()
//  Script that handles each casino gimmick.

    // Set Bumper handle:
       BumperHandle = scr_character_collision_object(x, y, obj_casino_bumper);
 
    // Normal Bumper:
       if(BumperHandle != noone){
          if(Action       = ActionJump || Action = ActionHammerDrop){
             Action       = ActionRolling;
             //ShieldUsable = false;
          }                    
          AngleToBumper = degtorad(round(scr_character_wrap_angle(point_direction(x, y, BumperHandle.x, BumperHandle.y)-90)/22.5)*24);        
          if(Underwater == false){
             if(Action != ActionGlide){
                XSpeed = sin(scr_character_wrap_angle(AngleToBumper-global.GravityAngle))*8;
             }
                YSpeed = cos(scr_character_wrap_angle(AngleToBumper-global.GravityAngle))*8;
          }else{
             if(Action != ActionGlide){          
                XSpeed = sin(scr_character_wrap_angle(AngleToBumper-global.GravityAngle))*4;
             }
                YSpeed = cos(scr_character_wrap_angle(AngleToBumper-global.GravityAngle))*4;                  
          }
          Ground        = false;    
          if(Action == ActionFly || Action == ActionFlydrop){
             // Check if the vertical speed is way too much:
                if(YSpeed < -3){
                   YSpeed = -3;
                }
          }  
          if(BumperHandle.BumperState == 0){
             BumperHandle.BumperState = 1;  
             if(BumperHandle.ScoreGiven != 10){          
                with(instance_create(BumperHandle.x, BumperHandle.y, obj_effect_score)){               
                     image_index   =  0;
                }                       
             }        
          }
       }
    
	// Set Vertical Flipper handle:
       Vert_Flip_Handle = scr_character_collision_right_object(x, y, Angle, spr_mask_big, obj_casino_vertical_flipper);
	   
	   if(Vert_Flip_Handle != noone && Ground) {
			Vert_Flip_Handle.leftTrigger = true;
			XSpeed = -1 * Vert_Flip_Handle.strength;
			Action = ActionRolling;
			InputAlarm = 10; 
	   }
	   
	   // Set Vertical Flipper handle:
       Vert_Flip_Handle = scr_character_collision_left_object(x, y, Angle, spr_mask_big, obj_casino_vertical_flipper);
	   if(Vert_Flip_Handle != noone && Ground) {
			Vert_Flip_Handle.rightTrigger = true;
			XSpeed = Vert_Flip_Handle.strength;
			Action = ActionRolling;
			InputAlarm = 10;
		}
		
		Horiz_Flip_Left = scr_character_collision_bottom_object(x, y, Angle, spr_mask_big, obj_casino_horizontal_flipper_left);
		
		if (Horiz_Flip_Left != noone) {
			if (Ground) {
				Action = ActionRolling;
				InputAlarm = 1;
				XSpeed = -1;
				AnimationDirection = -1;
			}
			
			if (KeyAction_Pressed) {
				Ground = 0;
				XSpeed = (x - (Horiz_Flip_Left.x + sprite_width)) * 0.125;
				YSpeed = -10;
				Action = ActionJump;
				InputAlarm = 0;
				Shield_Usable = true;
				Horiz_Flip_Left.flipTrigger = true;
				PlaySound(snd_object_bumper, global.SFXVolume, 1, 1);
			}
		}
		
		Horiz_Flip_Right = scr_character_collision_bottom_object(x, y, Angle, spr_mask_big, obj_casino_horizontal_flipper_right);
		
		if (Horiz_Flip_Right != noone) {
			if (Ground) {
				Action = ActionRolling;
				InputAlarm = 1;
				XSpeed = 1;
				AnimationDirection = 1;
			}
			
			if (KeyAction_Pressed) {
				Ground = 0;
				XSpeed = (x - Horiz_Flip_Right.x) * 0.125;
				YSpeed = -10;
				Action = ActionJump;
				InputAlarm = 0;
				Shield_Usable = true;
				Horiz_Flip_Right.flipTrigger = true;
				PlaySound(snd_object_bumper, global.SFXVolume, 1, 1);
			}
		}
		
		if (LockTunnel == 1 && !Ground) {
			// Release the lock on the player
			InputAlarm = 0;
		}
		
		