/// @description Draw the bonus HUD
var screenX = __view_get( e__VW.XView, view_current );
//var screenY = __view_get( e__VW.YView, view_current );
var screenWidth = __view_get( e__VW.WView, view_current );
//var screenHeight = __view_get( e__VW.HView, view_current );

draw_sprite(spr_main_hud, 2, __view_get( e__VW.XView, view_current )+floor(16), __view_get( e__VW.YView, view_current )+floor(9)); 
draw_set_font(global.Font_HUD){
    draw_set_color(c_white) {
	    draw_set_halign(fa_right);          
	    draw_text(__view_get( e__VW.XView, view_current )+88, __view_get( e__VW.YView, view_current )+9, string_hash_to_newline(ringsLeft));    
	    draw_set_halign(-1);
		
		if (currentTime > 10000 or ((currentTime div 8) mod 2 && currentTime < 100000) or currentTime == 0){                              
			draw_set_halign(fa_left);          
		    draw_text(screenX + screenWidth/2, __view_get( e__VW.YView, view_current )+9, string_hash_to_newline(floor(currentTime/1000)));    
		    draw_set_halign(-1);
		}
    }
}
