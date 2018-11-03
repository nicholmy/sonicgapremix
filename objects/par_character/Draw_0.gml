/// @description Draw and Animate the character.
      
   // Palette: (Only if we allow Shaders)
      if(global.Shaders != 0){
         // Sonic:
         if(CharacterID = CharacterSonic && CharacterState = CharacterSuper){
            pal_swap_set(spr_sonic_super_palette, floor(PalettePosition), false);
         }
         if(CharacterID = CharacterSonic && CharacterState = CharacterHyper){
            pal_swap_set(spr_sonic_hyper_palette, floor(PalettePosition), false);
         }    
         if(CharacterID = CharacterSonic && CharacterState = CharacterNormal && TransformEnded == 1){
            pal_swap_set(spr_sonic_to_normal_palette, floor(PalettePosition), false);
         }        
         // Tails:
         if(CharacterID == CharacterTails && CharacterState != CharacterNormal){
            pal_swap_set(spr_tails_super_palette, floor(PalettePosition), false);
         }  
         if(CharacterID = CharacterTails && CharacterState = CharacterNormal && TransformEnded == 1){
            pal_swap_set(spr_tails_to_normal_palette, floor(PalettePosition), false);
         }                      
         // Knuckles
         if(CharacterID == CharacterKnuckles && CharacterState != CharacterNormal){
            pal_swap_set(spr_knuckles_hyper_palette, floor(PalettePosition), false);
         }  
         if(CharacterID = CharacterKnuckles && CharacterState = CharacterNormal && TransformEnded == 1){
            pal_swap_set(spr_knuckles_to_normal_palette, floor(PalettePosition), false);
         }                                   
      }
      
   // Draw the Character:
      if(InvTimer > 0 && Invincibility == 1){
         if((global.ObjectTime div 60) mod 3){
            if(TailSprite != noone){
               draw_sprite_ext(TailSprite, floor(TailFrame), floor(x+TailX), floor(y+TailY), TailDirection, 1, TailAngle, c_white, Alpha);
            }
            draw_sprite_ext(AnimationSprite, floor(AnimationFrame), floor(x+AnimationOffsetX), floor(y+AnimationOffsetY), AnimationDirection, 1, AnimationAngle, c_white, Alpha);
         }
      }else{
            if(TailSprite != noone){
               draw_sprite_ext(TailSprite, floor(TailFrame), floor(x+TailX), floor(y+TailY), TailDirection, 1, TailAngle, c_white, Alpha);
            }     
            draw_sprite_ext(AnimationSprite, floor(AnimationFrame), floor(x+AnimationOffsetX), floor(y+AnimationOffsetY), AnimationDirection, 1, AnimationAngle, c_white, Alpha);
      }
      
   // When we modified the palette, make sure to reset it:
      if(global.Shaders != 0){
         if(CharacterState != CharacterNormal){
            pal_swap_reset()
         }
      }
   
   // Draw the Spindash Dust:
      if(Action = ActionSpindash or (Action = ActionPeelout && Animation = "PEELOUT")){
         draw_sprite_ext(spr_spindash_dust, current_time div 40, floor(x-AnimationDirection*7), floor(y+13), AnimationDirection, 1, 0, c_white, 1);         
      }


