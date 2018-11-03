/// @description scr_character_action_hammer_drop()
// Script to perform the Hammer Drop.
	
   if(Action = ActionJump && ShieldUsable == true && KeyAction_Pressed){
        // Change Flags:
        XSpeed        = 0;
        YSpeed        = 12;
        Angle         = 0;
        ShieldUsable  = false;
        JumpHeightMod = false;
        JumpLock = false;
        Action        = ActionHammerDrop;
        if(Animation != "HAMMERDROP") {
            Animation  = "HAMMERDROP";
        }
        // Sound:
        PlaySound(snd_shield_use_insta, global.SFXVolume, 1, 1);
   }
   
   if(Action = ActionHammerDrop) {
		if (!Ground) {
            // Change Flags:
            XSpeed        = 0;
            YSpeed        = 12;
            Angle         = 0;
            JumpHeightMod = false;
        }
        else if (Landed) {
            // Create Clouds:
            for(i = 0; i < 3; i++){
                Cloud = instance_create(floor(x), floor(y+10), obj_hammerdrop_dust);
                Cloud.Direction =   RelativeAngle;
                Cloud.Speed = 0.5*i + 0.5;
                
                Cloud2 = instance_create(floor(x), floor(y+10), obj_hammerdrop_dust);
                Cloud2.Direction =   (RelativeAngle + 180) % 360;
                Cloud2.Speed = 0.5*i + 0.5;
            }  
            
            HammerHitbox = instance_create(floor(x), floor(y), obj_hammerdrop_hitbox);
            HammerHitbox.Parent = id;
            
			PlaySound(snd_object_destroy, global.SFXVolume, 1, 1);
			
			obj_camera.Camera_ShakeScreen = true;
			obj_camera.Camera_ShakeDuration = 15;
			obj_camera.Camera_ShakeForce = 2;
			
            if(RelativeAngle < 45 || RelativeAngle > 315) {
                Ground        = false;
                Action        = ActionJump;
                XSpeed = (dsin(RelativeAngle) * -3);
                YSpeed = (dcos(RelativeAngle) * -3);
                Angle         = 0;      
                RelativeAngle = 0;
                JumpLock = false;
				
				
            } else {
                //You already roll holding down so force one when you don't hold down
                if (!KeyDown) {
                    Action = ActionRolling;
                    PlaySound(snd_character_roll, global.SFXVolume, 1, 1);
                }
            }
        }
   }
