/// @description  Draw the Credits.
    draw_set_alpha(Credit_Alpha);
    draw_set_font(Credit_Font);
    draw_set_color(c_white);
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    if(String_Number != END){
       draw_text(global.ScreenWidth/2, global.ScreenHeight/2, string_hash_to_newline(Credit_String[String_Number]));
    }
    draw_set_halign(-1);
    draw_set_valign(-1);    

