/// @description  Render the Logo parts.
  
// BG:
   draw_set_alpha(BGAlpha)
   draw_sprite(spr_flicky_background, 0, 0, 0-224);
   draw_set_alpha(1)
    
// Draw the text part of the logo.    
   if(state >= 3) {
      draw_sprite(spr_flicky_text, 0, XText, y);
   }

// Draw the Icon
   draw_self();

