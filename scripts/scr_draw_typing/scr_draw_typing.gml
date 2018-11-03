/// @description  scr_draw_typing(string, position, x, y);
/// @param string
/// @param  position
/// @param  x
/// @param  y
 // Draw a text using the typing effect.
 
    StringToDraw = string(argument0);
    StringToCopy = string_copy(StringToDraw, 1, argument1);
    
    draw_text(argument2, argument3, string_hash_to_newline(StringToCopy))

