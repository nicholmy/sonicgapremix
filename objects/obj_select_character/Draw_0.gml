/// @description Draw the character name
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_font(global.Font_Letters)

// Menu Options:
if(SelectID == 1) {
	draw_set_color(c_blue)
	name = "SONIC THE HEDGEHOG"
} else if (SelectID == 2) {
	draw_set_color(c_yellow)
	name = "MILES TAILS PROWER"
} else if (SelectID == 3) {
	draw_set_color(c_red)
	name = "KNUCKLES THE ECHIDNA"
} else if (SelectID == 4) {
	draw_set_color(c_purple)
	name = "AMY ROSE"
} else if (SelectID == 5) {
	draw_set_color(c_maroon)
	name = "MIGHTY THE ARMADILLO"
} else if (SelectID == 6) {
	draw_set_color(c_orange)
	name = "RAY THE FLYING SQUIRREL"
}

if (!isBlinking or (isBlinking && alarm[1] % 4 == 0))
	draw_text(x, y, string_hash_to_newline(name))
                
draw_set_color(c_white) 
draw_set_halign(-1)