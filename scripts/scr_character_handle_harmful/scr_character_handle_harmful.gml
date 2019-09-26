/// @description scr_character_handle_harmful()
// Handels Harmful objects:

   // Find a enemy:
      Harmful_Enemy = scr_character_collision_object(x, y, par_enemy);
   
   // Get Hit by a enemy:
      if(Harmful_Enemy != noone){
         if(instance_exists(obj_insta_shield) != 1 && ShieldAttack != 1 && ( (Action != ActionJump && CharacterID != CharacterAmy) || (AmyRollJump != true && CharacterID = CharacterAmy) ) 
         && Action != ActionRolling && Action != ActionSpindash && Action != ActionHurt && Invincibility == 0 && Action != ActionTransform && AmyHammerAttack == 0 && Action != ActionGlide){
            if not (Action == ActionFly && YSpeed < 0){ 
               scr_character_action_hit(Harmful_Enemy, false);
            }
         }
      }

   // Find a harmful projectile:
      Harmful_Main = scr_character_collision_object(x, y, par_harmful);
   
   // Get Hit or deflect a projectile:
      if(Harmful_Main != noone && Harmful_Main.moveState != 2){
        // Mighty can deflect whenever he's crouched or in ball form
         if (CharacterID == CharacterMighty && (Action == ActionCrouch || Action == ActionJump || Action == ActionRolling)) {
            Harmful_Main.moveState = 2;
            var NewAngle =         point_direction(id.x, id.y, Harmful_Main.x, Harmful_Main.y);
			Harmful_Main.deflectAngle = NewAngle;
			
            
            PlaySound(snd_character_spiketap, global.SFXVolume, 1, 1);
         }
         else if(Shield == ShieldDefault){
            if(instance_exists(obj_insta_shield) != 1 && Action != ActionHurt && Invincibility == 0 && Action != ActionTransform && Action != ActionFly && Action != ActionGlide){
               scr_character_action_hit(Harmful_Main, false);
            }
         }else{
            if(Invincibility < 1.5){
               var NewSpeed =         sqrt(sqr(Harmful_Main.hspeed) + sqr(Harmful_Main.vspeed));
               var NewAngle =         point_direction(id.x, id.y, Harmful_Main.x, Harmful_Main.y);
               Harmful_Main.hspeed =  dcos(NewAngle) * NewSpeed;
               Harmful_Main.vspeed = -dsin(NewAngle) * NewSpeed;
            }            
         }
      }      
      
   // Deflect projectiles while flying:
      if(Action == ActionFly || Action = ActionGlide){
         if(Harmful_Main != noone){
            AngleToChar         = degtorad(round(scr_character_wrap_angle(point_direction(x, y, id.x, id.y)-90)/22.5)*24);
            Harmful_Main.hspeed = sin(scr_character_wrap_angle(AngleToChar))*4;
            Harmful_Main.vspeed = cos(scr_character_wrap_angle(AngleToChar))*4; 
         }
      }
   
	isHittable = Invincibility == 0 && Action != ActionHurt && instance_exists(obj_insta_shield) != 1 && Action != ActionTransform;
	
   // Find something harmful that is on fire:
      Harmful_Fire = scr_character_collision_object(x, y, par_harmful_fire);
   
   // Get Hit:
      if(instance_exists(obj_insta_shield) != 1 && Harmful_Fire != noone && Shield != ShieldFlames && Action != ActionTransform){
         if(isHittable){
            scr_character_action_hit(Harmful_Fire, false);
         }
      }   
	  
	// Find something harmful that is sparky:
      Harmful_Elec = scr_character_collision_object(x, y, par_harmful_elec);
   
   // Get Hit:
      if(instance_exists(obj_insta_shield) != 1 && Harmful_Elec != noone && Shield != ShieldElectricity && Action != ActionTransform){
         if(isHittable){
            scr_character_action_hit(Harmful_Elec, false);
         }
      } 

	
	// Find something harmful that is spiky (and can't be deflected)
	Harmful_Spiky = scr_character_collision_bottom_object(x, y, 0 , spr_mask_big, par_harmful_spiky);
	Harmful_Spiky_Left = scr_character_collision_left_object(x, y, 0, spr_mask_big, par_harmful_spiky);
	Harmful_Spiky_Right = scr_character_collision_right_object(x, y, 0, spr_mask_big, par_harmful_spiky);
	Harmful_Spiky_Top = scr_character_collision_top_object(x, y, 0, spr_mask_big, par_harmful_spiky);
	
	isBallForm = CharacterID == CharacterMighty && (Action == ActionCrouch || Action == ActionRolling || Action == ActionJump || Action == ActionHammerDrop);
	
	if (Harmful_Spiky != noone && !Ground && SpikeTimer == 0 && isBallForm) {
		SpikeTimer = 30;
		
		if (Action == ActionHammerDrop) {
			YSpeed = -7;
		} else {
			YSpeed = -4;
		}
		
		Action = ActionJump;
		PlaySound(snd_character_spiketap, global.SFXVolume, 1, 1);
	} else if(Harmful_Spiky != noone && SpikeTimer == 0 && isHittable) {
		SpikeTimer = 30;
		scr_character_action_hit(Harmful_Spiky, true);
	}
	
	
	if (Harmful_Spiky_Right != noone && SpikeTimer == 0 && isBallForm) {
		SpikeTimer = 30;
		Action = ActionRolling;
		XSpeed = min(-XSpeed, -2);
		
		PlaySound(snd_character_spiketap, global.SFXVolume, 1, 1);
	} else if(Harmful_Spiky_Right != noone && SpikeTimer == 0 && isHittable) {
		SpikeTimer = 30;
		scr_character_action_hit(Harmful_Spiky_Right, true);
	}
	
	
	if (Harmful_Spiky_Left != noone && SpikeTimer == 0 && isBallForm) {
		SpikeTimer = 30;
		Action = ActionRolling;
		XSpeed = max(-XSpeed, 2);
		
		PlaySound(snd_character_spiketap, global.SFXVolume, 1, 1);
	} else if(Harmful_Spiky_Left != noone && SpikeTimer == 0 && isHittable) {
		SpikeTimer = 30;
		scr_character_action_hit(Harmful_Spiky_Left, true);
	}
	
	if (Harmful_Spiky_Top != noone && !Ground && SpikeTimer == 0 && isBallForm) {
		SpikeTimer = 30;
		Action = ActionJump;
		YSpeed = 4;
		
		PlaySound(snd_character_spiketap, global.SFXVolume, 1, 1);
	} else if(Harmful_Spiky_Top != noone && SpikeTimer == 0 && isHittable) {
		SpikeTimer = 30;
		scr_character_action_hit(Harmful_Spiky_Top, true);
	}
	
	SpikeTimer = max(SpikeTimer - 1, 0);
	
	// Find a harmful object that always hurts:
      Harmful_Pierce = scr_character_collision_object(x, y, par_harmful_pierce);
	  
	if (Harmful_Pierce != noone && isHittable) {
        scr_character_action_hit(Harmful_Pierce, false);
    }