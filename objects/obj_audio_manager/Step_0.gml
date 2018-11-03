/// @description  Increase/Decrease Volumes.

    // Only run if allowed to:
       if(RunStep == true){

    // Lower the BGM to 0% when the Life Jingle is playing.
       if(CheckSound(snd_character_life) == true or CheckSound(Jingle_Drowning) == true or CheckSound(snd_object_emerald) == true or CheckSound(egg_billiejean) == true
       or CheckSound(bgm_knuckles_fight) == true){
          if(global.BGMVolume != 0){
             global.BGMVolume  = 0;
          }
          if(CheckSound(snd_character_life) == true){
             if(global.SFXVolume != 0){
                global.SFXVolume  = 0;
             }
          }
       }else{
          if(global.BGMVolume < global.MaxBGMV){
             global.BGMVolume++
          }else{
             global.BGMVolume = global.MaxBGMV;
          }          
          if(global.SFXVolume != global.MaxSFXV){
             global.SFXVolume  = global.MaxSFXV;
          }
       }
    
    // Fade out/in Background Music:   
       if(global.BGMVolume = 0){
          audio_sound_gain(ZoneBGM, global.BGMVolume, 0);
          audio_sound_gain(Invincibility_Normal, global.BGMVolume, 0);
          audio_sound_gain(Invincibility_Transform, global.BGMVolume, 0);          
       }else{
          audio_sound_gain(ZoneBGM, global.BGMVolume, 1000);       
          audio_sound_gain(Invincibility_Normal, global.BGMVolume, 1000)
          audio_sound_gain(Invincibility_Transform, global.BGMVolume, 1000);           
       }
       
       
    // Fade out when the character is dead:
       if(DeadFade == 1){
          audio_sound_gain(ZoneBGM, 0, 2000);       
          audio_sound_gain(Invincibility_Normal, 0, 2000)
          audio_sound_gain(Invincibility_Transform, 0, 2000);  
          audio_sound_gain(bgm_knuckles_fight, 0, 2000);         
       }
	   
	   if(BossFade == 1) {
		  audio_sound_gain(ZoneBGM, 0, 500);       
          audio_sound_gain(Invincibility_Normal, 0, 500)
          audio_sound_gain(Invincibility_Transform, 0, 500);  
          audio_sound_gain(bgm_knuckles_fight, 0, 500);  
	   }

       
       }

/// Invincibility Themes.

    // Only run if allowed to:
       if(RunStep == true){
       
    // Check if the Character is invincible:
       CharacterCheck = (par_character)
       
       if(instance_exists(CharacterCheck)){
       
          if(CharacterCheck.CharacterState = CharacterNormal && CharacterCheck.Invincibility = 1.5){
             if(Invincibility_Normal != noone){
                if(CheckSound(Invincibility_Normal) == false){
                   if(ZoneBGM != ""){
                      StopSound(ZoneBGM);
                   }
                   LoopSound(Invincibility_Normal, global.BGMVolume, 1);
                }
             }
          }else{
                if(CheckSound(Invincibility_Normal) == true){
                   StopSound(Invincibility_Normal);
                   if(ZoneBGM != ""){
                      LoopSound(ZoneBGM, global.BGMVolume, 1);
                   }
                }
          }
          
       }   
    
    // Check if the Character transformed into it's Super or Hyper Form:
       
       CharacterCheck = (par_character)
       
       if(instance_exists(CharacterCheck)){
         
             if(CharacterCheck.CharacterState = CharacterSuper or CharacterCheck.CharacterState = CharacterHyper){
                if(Invincibility_Transform != noone){
                   if(Invincibility_Normal != noone){
                      if(CheckSound(Invincibility_Normal) == true){
                         StopSound(Invincibility_Normal);
                      }
                   }
                   if(CheckSound(Invincibility_Transform) == false){
                      if(ZoneBGM != ""){
                         StopSound(ZoneBGM)
                      }
                      LoopSound(Invincibility_Transform, global.BGMVolume, 1);
                   }
                }
             }else{
                   if(CheckSound(Invincibility_Transform) == true){
                      StopSound(Invincibility_Transform)
                      if(ZoneBGM != ""){
                         LoopSound(ZoneBGM, global.BGMVolume, 1);
                      }
                   }               
             }

                    
       }
       
       }       
       

/// Increase Speed/Pitch for Speedshoes.

    // Only run if allowed to:    
    if(RunStep == true && PitchChange == true){
    
       CharacterCheck = (par_character)       
       if(instance_exists(CharacterCheck)){
          if(CharacterCheck.HasSpeedShoes == true && CharacterCheck.SpeedShoeTimer > 0){
             if(PitchValue!=.2){
                PitchValue+=.01
             }
             if(audio_sound_get_pitch(ZoneBGM) != 1.2){
                audio_sound_pitch(ZoneBGM, 1+PitchValue);    
             }
          }else{
             if(global.GameTime < 540000 && CharacterCheck.HasSpeedShoes == false){
                if(PitchValue!=0){
                   PitchValue-=.01
                }
                if(audio_sound_get_pitch(ZoneBGM) != 1){
                   audio_sound_pitch(ZoneBGM, 1+PitchValue);    
                }             
             }
          }
       }

    }    
    

/// Increase the pitch of music when we're about to time over (Custom, not in the original games)

    // Only run if allowed to:    
       if(RunStep == true && PitchChange == true){

       // Change the Patch once we reach 9 minutes on the timer.    
          if(global.GameTime >= 540000){
             if(PitchValue!=.2){
                PitchValue+=.01
             }
             if(audio_sound_get_pitch(ZoneBGM) != 1.2){
                audio_sound_pitch(ZoneBGM, 1+PitchValue);    
             }
          }

       }       

/// Stop Music.
     
 // Stop when the tally results appear:
    if(instance_exists(obj_scoring_results) == true){
       StopSound(ZoneBGM);
    }
    
 // Stop when game over;
    if(instance_exists(obj_game_over) == true){
       StopSound(ZoneBGM);
       StopSound(Jingle_Drowning);
    }
     
 // Stop when the drowning theme appear:
    if(CheckSound(Jingle_Drowning) == true){
       StopSound(ZoneBGM);
    } 
	
	/*if (UpdateActMusic == true) {
	   alarm[1] = 1;
		
	   UpdateActMusic = false;
	} */
	
	if (MajorBossFade == true) {
		StopSound(ZoneBGM);
		ZoneSetTheme(rm_test_zone2, Major_Boss_Theme, 0, -1, -1);
		MajorBossFade = false;
	}
    

    


