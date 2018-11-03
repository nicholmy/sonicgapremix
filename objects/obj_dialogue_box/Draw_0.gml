/// @description  Draw your Dialogue.
        
    draw_set_font(global.Font_Letters)
    draw_set_color(c_gray)
    draw_rectangle(x - 2, y - 2, x + string_width(string_hash_to_newline(MyDialogue)) + 2, y + string_height(string_hash_to_newline(MyDialogue)) + 2, false);   
    draw_set_color(c_black)
    draw_rectangle(x - 3, y - 3, x + string_width(string_hash_to_newline(MyDialogue)) + 3, y + string_height(string_hash_to_newline(MyDialogue)) + 3, true); 
    draw_set_color(MyColor)
    draw_text(x+1, y+1, string_hash_to_newline(MyDialogue))
    draw_set_color(c_white)
    draw_set_font(-1)
    
    

