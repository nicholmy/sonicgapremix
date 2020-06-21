/// @description Draw the level list
// You can write your code in this editor
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_font(global.Font_Letters)

var lvlListX = x + 64;
var lvlListY = y + 32;

if (levelMode == 0) {
	draw_text(x, y, string_hash_to_newline("ZONE SELECT"))
	if(SelectID == 1){
		draw_set_color(c_yellow)
    }else{
		draw_set_color(c_white)
    }  		 
	draw_text(lvlListX, lvlListY+16, string_hash_to_newline("SKY STATION"))
	
	if(SelectID == 2){
		draw_set_color(c_yellow)
    }else{
		draw_set_color(c_white)
    } 
	draw_text(lvlListX, lvlListY+32, string_hash_to_newline("TECHNOLOGY TREE"))
	
	if(SelectID == 3){
		draw_set_color(c_yellow)
    }else{
		draw_set_color(c_white)
    } 
	draw_text(lvlListX, lvlListY+48, string_hash_to_newline("AQUATIC RUIN"))
	
	if(SelectID == 4){
		draw_set_color(c_yellow)
    }else{
		draw_set_color(c_white)
    }
	draw_text(lvlListX, lvlListY+64, string_hash_to_newline("BOSS ZONE"))
	
	if(SelectID == 5){
		draw_set_color(c_yellow)
    }else{
		draw_set_color(c_white)
    }
	draw_text(lvlListX, lvlListY+80, string_hash_to_newline("TEST ZONE"))
}
else {
	draw_text(x, y, string_hash_to_newline("COURSE SELECT"))
	if(SelectID == 1){
		draw_set_color(c_yellow)
    }else{
		draw_set_color(c_white)
    }  		 
	draw_text(lvlListX, lvlListY+16, string_hash_to_newline("STAR STATION"))
}
                
draw_set_color(c_white) 
draw_set_halign(-1)