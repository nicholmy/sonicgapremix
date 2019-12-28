/// @description Draw the menu title
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_font(global.Font_Letters)

draw_text(x, y, string_hash_to_newline(title))
                
draw_set_color(c_white) 
draw_set_halign(-1)