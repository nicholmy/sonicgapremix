/// @description  scr_draw_number_zero(x, y, number, length);
/// @param x
/// @param  y
/// @param  number
/// @param  length

    var NumberString, ZeroString;
        NumberString = string(argument2);
        ZeroString   = "";
        
        for(i=0; i<(argument3-string_length(NumberString)); i++){
            ZeroString = ZeroString + "0";
        }
        
        draw_text(argument0, argument1, string_hash_to_newline(ZeroString+NumberString));

