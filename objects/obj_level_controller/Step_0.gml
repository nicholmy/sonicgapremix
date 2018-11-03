/// @description  Gain a life with 100 rings.

    if(global.Ring100Check < 100){
    
       if(global.Rings >= (global.Ring100Check * 100)){
       
          // Gain a life:
             global.Ring100Check++
             global.Lives++   
          
          // Play life jingle:
             PlaySound(snd_character_life, global.MaxSFXV, 1, 1)
       }
       
       // If we get hit and we no longer have any rings, set the check back to 1:
          if(global.Rings = 0 && global.Ring100Check != 1){
             global.Ring100Check = 1;
          }
          
    }


/// Cheat Input.

    if(global.Cheats == 1){
    
       // Get key presses:
          if(keyboard_check_pressed(vk_anykey)){
             switch(keyboard_key){
                    case vk_up:{
                         CheatCode += ".UP";                       
                         break;
                    }
                    case vk_down:{
                         CheatCode += ".DOWN";                       
                         break;
                    }               
                    case vk_right:{
                         CheatCode += ".RIGHT";                       
                         break;
                    }
                    case vk_left:{
                         CheatCode += ".LEFT";                        
                         break;
                    }   
                    case global.Key_ACTION:{
                         CheatCode += ".ACTION";                        
                         break;
                    }  
                    case global.Key_SPECIAL:{
                         CheatCode += ".SPECIAL";                       
                         break;
                    }                                                                
             }

             if(CheatTime != 30){
                CheatTime  = 30;
             }
             
          }
          
       // Decrease timer to reset code:
          if(CheatCode != ""){
             if(CheatTime != 0){
                CheatTime --
             }else{
                CheatCode = "";
                CheatTime = 30;
             }
          }   
          
       // Cheats:

          // Debug:       
          if(instance_exists(par_character)){
          
          // Debug:
             if(CheatCode = ".UP.UP.DOWN.DOWN.UP.UP.UP.UP"){
                CheatCode = "";
                CheatTime = 30;
                PlaySound(snd_object_ring, global.SFXVolume, 1, 1);
             }               

          // 50 Rings:       
             if(CheatCode = ".DOWN.DOWN.UP.UP.DOWN.DOWN.DOWN.DOWN"){
                CheatCode     = "";
                CheatTime     = 30;
                global.Rings += 50;
                PlaySound(snd_object_ring, global.SFXVolume, 1, 1);
             }    
             
          // Switch Characters:
             if(CheatCode = ".UP.DOWN.RIGHT.LEFT.ACTION" && par_character.XSpeed = 0){
                CheatCode     = "";
                CheatTime     = 30;
                with(par_character){
                     if(CharacterID < 5){
                        CharacterID++
                     }else{
                        CharacterID = 1;
                     }
                }
                PlaySound(snd_object_ring, global.SFXVolume, 1, 1);
             }   
              
          // Konami Code:
             if(CheatCode = ".UP.UP.DOWN.DOWN.LEFT.RIGHT.LEFT.RIGHT.SPECIAL.ACTION"){
                CheatCode  = "";
                CheatTime  = 30;
                KonamiCode = 1;
                PlaySound(snd_object_ring, global.SFXVolume, 1, 1);
             }   
                  
          }
    
    }
    
    
    /*


   if(Cheat_Code != ""){
      if(Cheat_Timer != 0){
         Cheat_Timer--
      }else{
         Cheat_Code  = "";
         Cheat_Timer = 15;
      }
   }
   
   if(Cheat_Code = ".RIGHT.RIGHT.LEFT.UP.RIGHT"){
      Cheat_Code = ""
      show_message("Nice")
   }

/* */
/// Konami Code - Easter Egg
    if(KonamiCode == 1){
       KonamiCode          = 0;
       KonamiLoaded        = sprite_add("https://i.imgur.com/qMg3vNB.png", 29, false, true, 0, 0);
       global.CharControl  = 0;
    }
    
 // Delete:
    if(KonamiSprite != noone && CheckSound(egg_billiejean) == false){
       KonamiSprite = noone;    
       sprite_delete(KonamiLoaded);
    }
    
 // Stop.
    if(KonamiSprite != noone && CheckSound(egg_billiejean) == true){    
       if(keyboard_check_pressed(global.Key_ACTION)){
          StopSound(egg_billiejean);
       }
    }
           

/* */
/*  */
