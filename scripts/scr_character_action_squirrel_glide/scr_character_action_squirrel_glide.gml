/// @description scr_character_action_squirrel_glide()
// Script to perform Ray's glide

LeftObstacle = scr_character_collision_left_object(x, y, 0, spr_mask_big, par_collision_solid);
RightObstacle = scr_character_collision_right_object(x, y, 0, spr_mask_big, par_collision_solid);


// Stop Gliding:
if(Action = ActionSquirrelGlide && (KeyAction_Released || LeftObstacle != noone || RightObstacle != noone)){
	Action = ActionJump;
	
	if (Shield == ShieldBubble) {
		// Make the bubble shield bounce
        ShieldChild.Shield_State = "startBounce";
					
		PlaySound(snd_shield_use_bubble, global.SFXVolume, -1, true);
		ShieldUsable = true;
	} 
}

// Set the Action to Glide:
if(Action = ActionJump && !Ground && ShieldUsable == true && KeyAction_Pressed){
	Action = ActionSquirrelGlide;
	ShieldUsable = false;
	Angle  = 0;
	GlideAngle = 0;
	
	// Glide in the direction you're facing
	if (AnimationDirection != sign(XSpeed)) XSpeed = AnimationDirection;
	
	// Nosedive if you're holding the direction you're facing
	if ((XSpeed > 0 && KeyRight) || (XSpeed < 0 && KeyLeft)) GlideAngleDirection = 1;

	// You start with no vertical momentum, keep all your horizontal momentum
	YSpeed = 0;
	GlideSpeed = max(abs(XSpeed), 3);
	
	// Each shield starts you with a boost in a certain direction (with fire being an attack)
	if (Shield == ShieldElectricity) {
		// Play Shield sound:  
        PlaySound(snd_shield_use_electricity, global.SFXVolume, -1, true);
        // Create Electric Sparks:
		ShieldChild.Shield_State = "spark";
		
		GlideSpeed += 6;
		GlideAngleDirection = -1;
		GlideAngle = 45;
	} else if (Shield == ShieldFlames) {
		// Set the Shield to Dashing:
		ShieldChild.Shield_State = "dash";
		
		//if (InvTime > 0) {
			//ShieldChild.image_xscale = 0;
		//}
                  
		// Play Shield sound:  
		PlaySound(snd_shield_use_flame, global.SFXVolume, -1, true);
		
		GlideSpeed += 6;
		GlideAngleDirection = 0;
		GlideAngle = 0;
	} else {
		PlaySound(snd_character_sglide, global.SFXVolume, -1, true);
	}
}

// Gravity while Gliding:
if(Action = ActionSquirrelGlide){
	GlideSpeed += GlideGravity * GlidePeriodFactor * -dsin(GlideAngle);
	// Unique behavior for flying straight forward since sin(angle) is 0
	if (GlideAngle == 0) {
		GlideSpeed -= 0.125;
	}
	// Cap your glide speed because otherwise this gets ridiculous
	GlideSpeed = min(max(GlideSpeed, 1), 16);
	
	XSpeed = GlideSpeed * dcos(GlideAngle) * AnimationDirection;
	
	if (GlideSpeed <= 1) {
		if (YSpeed > -dsin(GlideAngle)) YSpeed = dsin(GlideAngle);
		if (GlideAngle == 0) { 
			YSpeed = 1;
			
			if (Shield == ShieldFlames) {
				ShieldChild.Shield_State = "default";
			}
		}
	} else {
		YSpeed = GlideSpeed * -dsin(GlideAngle);
	}
	
	
	if (GlideAngle >= 45 && Animation != "SGLIDEUP") {
		Animation = "SGLIDEUP";
	} else if (Animation = "SGLIDE") {
		AnimationFrame = 4 - 4 * dsin(2 * GlideAngle);
	}
	
	
	
	// Change your gliding direction depending on where you're facing
	if ((XSpeed > 0 && KeyLeft_Pressed) || (XSpeed < 0 && KeyRight_Pressed) ) {
		// If you're actually heading downwards, get a speed boost
		if (GlideAngle < -22.5) {
			GlideSpeed += GlideBoost;
			PlaySound(snd_character_spindash_release, global.SFXVolume, 1, 1);
		}
		if (Shield == ShieldFlames) {
			ShieldChild.Shield_State = "default";
		}
		GlideAngleDirection = -1;
		Animation = "SGLIDE";
	} else if ((XSpeed > 0 && KeyRight_Pressed) || (XSpeed < 0 && KeyLeft_Pressed)) {
		if (Shield == ShieldFlames) {
			ShieldChild.Shield_State = "default";
		}
		
		GlideAngleDirection = 1;
		Animation = "SGLIDE";
	}
	
	GlideAngle -= sign(GlideAngleDirection) * GlideAngleSpeed;
	
	// Fix Gliding angle so you don't lean too much
	if (GlideAngle > 45) {
		GlideAngle = 45;
	} else if (GlideAngle < -45) {
		GlideAngle = -45;
	}
	
	// Upon landing this is what happens
	if (Landed && KeyDown) {
		Action = ActionRolling;
	} else if (Ground) {
		Action = ActionNormal;
	}
}

//Reset all important values
if (Action != ActionSquirrelGlide) {
	GlideAngle = 0;	
	GlideAngleDirection = -1;
	GlideSpeed = 0;
}

