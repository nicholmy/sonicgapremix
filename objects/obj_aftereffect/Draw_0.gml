/// @description  Draw After Effect.

   // Palette: (Only if we allow Shaders)
      if(global.Shaders != 0){
         if(Parent.CharacterID = CharacterSonic && Parent.CharacterState = CharacterSuper){
            pal_swap_set(spr_sonic_super_palette, Parent.PalettePosition, false);
         }
         if(Parent.CharacterID = CharacterSonic && Parent.CharacterState = CharacterHyper){
            pal_swap_set(spr_sonic_hyper_palette, Parent.PalettePosition, false);
         }         
      }
      
   // Draw the After effect:
      draw_sprite_ext(sprite_index, floor(AnimationFrame), floor(x), floor(y), 
                      AnimationDirection, 1, AnimationAngle, c_white, image_alpha);

      
   // When we modified the palette, make sure to reset it:
      if(global.Shaders != 0){
         if(Parent.CharacterState != CharacterNormal){
            pal_swap_reset()
         }
      }  
      


