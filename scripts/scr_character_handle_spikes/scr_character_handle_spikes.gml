/// @description scr_character_handle_spikes()
// Handels Spikes:
    
   // Find a Spike that hurts you on the top:
      Harmful_Spike_Up = scr_character_collision_bottom_object(x, y, 0, spr_mask_big, obj_spike_up);
   
   // If you're on top of the Spike on the ground:
      if(Harmful_Spike_Up != noone && Ground && Invincibility == 0 && Action != ActionTransform && Action != ActionHurt){
         //Mighty can ignore spikes if he's rolling and going fast enough!
         if (CharacterID == CharacterMighty && Action == ActionRolling) {
			if (abs(XSpeed) < 2) {
	            //If you're going too slow, you get bumped out the roll
	            Action = ActionUncurl;
	            Ground = 0;
	            XSpeed = 5 * AnimationDirection;
	            YSpeed = -4;
	            JumpLock = false;
	            PlaySound(snd_character_spikebump, global.SFXVolume, 1, 1);
			}
         }  
         else {
			//The usual case
            scr_character_action_hit(Harmful_Spike_Up, true);
         }
      } else if (Harmful_Spike_Up != noone && !Ground && YSpeed >= 0 && Invincibility == 0 && Action != ActionTransform && Action != ActionHurt) {
		//Upon contact in the air (before landing):
        if (CharacterID == CharacterMighty) {
            //If you're going too slow and land on spikes, you get bumped out the roll.
            if (((Action = ActionJump || Action = ActionHammerDrop) && abs(XSpeed) < 2)) {
				XSpeed = 5 * AnimationDirection;
				YSpeed = -4;
				HasSpikeTapped = 0;
				JumpLock = false;
				
                PlaySound(snd_character_spikebump, global.SFXVolume, 1, 1);
				
                if (Action = ActionHammerDrop && Shield == ShieldFlames) {
			        // Set the Shield to Dashing:
			            ShieldChild.Shield_State = "dash";
			            ShieldChild.image_xscale = 0;
			            ShieldUsable             = false;
                  
			        // Play Shield sound:  
			            PlaySound(snd_shield_use_flame, global.SFXVolume, -1, true); 
                  
			        // Set the X Speed and Y Speed:
			            XSpeed = AnimationDirection*10;
			        // Camera Lag:
			            obj_camera.Cam_Lag = 140;
                     
			        // Enable the Attack flag:
			            ShieldAttack = 1;
	
				} else if (Action = ActionHammerDrop && Shield == ShieldBubble) {
					XSpeed = 0;
					YSpeed = -8;
				}
				
				if (Action = ActionHammerDrop && Shield != ShieldDefault) {
					if (Shield == ShieldBubble) {
						// Set the Init. Frame of the Shield:
						ShieldChild.Shield_State = "startBounce";
					}
					Action = ActionJump;
				} else {
					Action = ActionUncurl;
				}
            } else if (Action = ActionJump && abs(XSpeed) >= 2 && (HasSpikeTapped || abs(YSpeed) < 0.5)) {
                //You actually don't tap off the spikes if you slightly graze the top of them
                Action = ActionRolling;
                Ground = 1;
				
            } else if (Action = ActionJump && abs(XSpeed) >= 2 && !HasSpikeTapped) {
				// Bubble Shield can bounce off spikes much more effectively
                if(Shield == ShieldBubble){
					if(KeyAction){             
                       YSpeed  = min(-6, YSpeed*-1);; 
                       Ground  = false;
                       JumpHeightMod = true;                   
                    }else{                          
                       YSpeed  = -3; 
                       Ground  = false;
                       JumpHeightMod = false;                                   
                    }  
					JumpLock = false;         
                                    
	                // Enable the Attack flag:
	                ShieldAttack = 1;
					
					// Make the bubble shield bounce
                    ShieldChild.Shield_State = "startBounce";
					
					PlaySound(snd_shield_use_bubble, global.SFXVolume, -1, true)
                } else {
                    YSpeed = -2;
                    HasSpikeTapped = 1;
					
					PlaySound(snd_character_spiketap, global.SFXVolume, 1, 1)
                }
            } 
        }
      }

   // Find a Spike that hurts you on the bottom:
      Harmful_Spike_Down = scr_character_collision_top_object(x, y, 0, spr_mask_big, obj_spike_down);
   
   // Get Hit by the Spike:
      if(Harmful_Spike_Down != noone){
         if(Action != ActionHurt && Invincibility == 0 && Action != ActionTransform){
            //Mighty doesn't care about spikes above him in ball form
            if (CharacterID == CharacterMighty && Action == ActionJump) {
            }
            else {
                scr_character_action_hit(Harmful_Spike_Down, true);
            }
         }
      }      

   // Find a Spike that hurts you on the left:
      Harmful_Spike_Left = scr_character_collision_right_object(x, y, 0, spr_mask_big, obj_spike_left);
   
   // Get Hit by the Spike.
   // For many Mighty related reasons you only get hit if you move into spikes 
      if(Harmful_Spike_Left != noone && Ground){
         // Mighty can roll into spikes with no problem tho
         if(CharacterID == CharacterMighty && Action == ActionRolling) {
            XSpeed = 0;
         }
         else if(((Action != ActionHurt && XSpeed > 0) || Action == ActionPush) && Invincibility == 0 && Action != ActionTransform){
            scr_character_action_hit(Harmful_Spike_Left, true);
         }
      } else if (Harmful_Spike_Left != noone && !Ground) {
        if (CharacterID == CharacterMighty && KeyRight && Action == ActionJump) {
			PlaySound(snd_character_spikebump, global.SFXVolume, 1, 1);
			if(Shield == ShieldElectricity){
				//With the electric shield you bounce upwards
				XSpeed = -2;
				YSpeed = -8;
            
				// Play Shield sound:  
                PlaySound(snd_shield_use_electricity, global.SFXVolume, -1, true);
                // Create Electric Sparks:
                ShieldChild.Shield_State = "spark";
			} else {
				Action = ActionUncurl;
				XSpeed = -2;
				YSpeed = -4;
            
			}
        } else if (CharacterID == CharacterMighty && Action == ActionJump) {
            //Nothing if you weren't holding into them
            XSpeed = 0;
        } else if (XSpeed > 0) {
            //Everything else gets rekt
            scr_character_action_hit(Harmful_Spike_Left, true);
        }
      }

   // Find a Spike that hurts you on the bottom:
      Harmful_Spike_Right = scr_character_collision_left_object(x, y, 0, spr_mask_big, obj_spike_right);
   
      if(Harmful_Spike_Right != noone && Ground){
         // Mighty can roll into spikes with no problem tho
         if(CharacterID == CharacterMighty && Action == ActionRolling) {
            XSpeed = 0;
         }
         else if(((Action != ActionHurt && XSpeed < 0) || Action == ActionPush) && Invincibility == 0 && Action != ActionTransform){
            scr_character_action_hit(Harmful_Spike_Right, true);
         }
      } else if (Harmful_Spike_Right != noone && !Ground) {
        if (CharacterID == CharacterMighty && KeyLeft && Action == ActionJump) {
            PlaySound(snd_character_spikebump, global.SFXVolume, 1, 1);
			if(Shield == ShieldElectricity){
				//With the electric shield you bounce upwards
				XSpeed = 2;
				YSpeed = -8;
            
				// Play Shield sound:  
                PlaySound(snd_shield_use_electricity, global.SFXVolume, -1, true);
                // Create Electric Sparks:
                ShieldChild.Shield_State = "spark"; 
			} else {
				Action = ActionUncurl;
				XSpeed = 2;
				YSpeed = -4;
            
			}
        } else if (CharacterID == CharacterMighty && Action == ActionJump) {
            //Nothing if you weren't holding into them
            XSpeed = 0;
        } else if (XSpeed < 0) {
            //Everything else gets rekt
            scr_character_action_hit(Harmful_Spike_Right, true);
        }
      }         
