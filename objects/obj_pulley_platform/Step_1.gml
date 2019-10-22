/// @description Update the character's position if they're standing on this platform
var i = 0;
repeat(instance_number(par_character)){
        CharMain = par_character;
        if(instance_exists(CharMain) == false){
            i++
            continue;
        }
        if(CharMain.Action != ActionDie){
            if(CharMain.Ground == true && CharMain.OnMoving = id){
				if (x - previousX > 0) {
					show_debug_message("dX: " + string(x - previousX))
					show_debug_message("distance from platform: " + string(x - CharMain.x))
				}
	            CharMain.x += (x-previousX);
	            CharMain.y  = ((y-sprite_yoffset)-PlatformOffset);
            }
        }
        i++
}

previousX = x;
previousY = y;