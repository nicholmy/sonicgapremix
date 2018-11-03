/// @description  After drop, finish everything.

    if(SpinActivated == false && Drop == false){
       SpinActivated = true;       
       with(par_character){
               // Make sure that you can no longer transform after this.
                  AllowTransformation = 0;       
            if(CharacterState != CharacterNormal){
               // Make sure to not run the alarm event:
                  alarm[0] = -1;
               // Reset the Characters state:
                  CharacterState = CharacterNormal;                
               // Change the animation to "BLANK" to make sure that the current animation is being reloaded.
                  Animation      = "BLANK";
               // Reset the Transform Timer:
                  TransformTimer = 15;
               // Again, change the animation to "BLANK" to make sure that the current animation is being reloaded properly.
                  Animation      = "BLANK AGAIN";    
               // If we're Sonic, use a little fade palette:
                  if(CharacterID = CharacterSonic){
                     TransformEnded  = 1;    
                     PalettePosition = 0;       
                  }           
            }            
       }
       
     }
     global.DoTime = 0;     


