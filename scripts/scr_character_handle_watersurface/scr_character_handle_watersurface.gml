/// @description  scr_character_handle_watersurface();
 // Script to handle the water surface. (Sets/Modifies the speed)

    if(y > global.WaterSurfacePosition && PreviousY < global.WaterSurfacePosition){
       // Entering the water.
          XSpeed *= 0.5;
          YSpeed *= 0.25;
		  
    }else{
       if(y < global.WaterSurfacePosition && PreviousY > global.WaterSurfacePosition){
          // Leaving the water.
             if(YSpeed > -5){
                YSpeed *= 2;
             }
       }
    }
	
	// Water running code
	var distanceToWater = abs(y - global.WaterSurfacePosition);
	
	// Start the water run
	if (!OnWater and Ground and y < global.WaterSurfacePosition and abs(XSpeed) >= MinWaterSpeed and (distanceToWater <= WaterRunYWindow) and (Angle <= 30 or Angle >= 330)) {
		OnWater = true;
		WaterEntrySpeed = XSpeed;
		LoopSound(snd_character_waterrun, global.SFXVolume, 1);
	}

	if (OnWater) {
		if (!Ground) {
			//Holding right will just keep your speed
			XSpeed = WaterEntrySpeed;
			YSpeed = 0;
			
			// Slow down if the player holds the opposite direction they're running
			if (WaterEntrySpeed > 0 and KeyLeft) {
				WaterEntrySpeed -= XDeceleration;
			} else if (WaterEntrySpeed < 0 and KeyRight) {
				WaterEntrySpeed += XDeceleration;
			}
			
			// Do a usual jump if you press the jump button
			if (KeyAction_Pressed) {
				YSpeed = JumpStrength;
				Action = ActionJump;
				JumpHeightMod = true;
				//It'd be nice if you could activate abilities again
				//ShieldUsable = true;
                if(CharacterID != CharacterAmy){
                   PlaySound(snd_character_jump, global.SFXVolume, -1, true);  
                }else{
                   PlaySound(snd_character_jump, global.SFXVolume, 1.10, true); 
                }
			}
		}
		
		// Water run exit conditions
		if (KeyAction_Pressed or (abs(XSpeed) < MinWaterSpeed) or y > global.WaterSurfacePosition or distanceToWater > WaterRunYWindow) {
			OnWater = false;
			StopSound(snd_character_waterrun);
		}
	}
	
	if (Action = ActionHurt or Action = ActionDie) {
		OnWater = false;
		StopSound(snd_character_waterrun);
	}
	