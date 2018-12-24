/// @description Draw the Gap HUD
// To be able to draw on the HUD, you need to inherit par_controller
screenX = __view_get( e__VW.XView, 0 );
screenY = __view_get( e__VW.YView, 0 );
screenWidth = __view_get( e__VW.WView, 0 );
screenHeight = __view_get( e__VW.HView, 0 );
draw_set_font(global.Font_Letters){
	draw_set_color(c_yellow){
		draw_set_halign(fa_left);          
		draw_text(screenX + screenWidth-128, screenY + screenHeight-36, "CHAIN");    
		draw_set_halign(-1);
		
		draw_set_halign(fa_left);          
		draw_text(screenX + screenWidth-128, screenY + screenHeight-27, "TOTAL");    
		draw_set_halign(-1);
		
		draw_set_halign(fa_left);          
		draw_text(screenX + screenWidth-128, screenY + screenHeight-18, "LEFT");    
		draw_set_halign(-1);                
	}
	
	var gapColor = c_white;
	switch (charHighlight) {
		case 1:
			gapColor = c_blue;
			break;
		case 2:
			gapColor = c_yellow;
			break;
		case 3:
			gapColor = c_red;
			break;
		case 4:
			gapColor = c_fuchsia;
			break;
		case 5:
			gapColor = c_maroon;
			break;
		case 6:
			gapColor = c_orange;
			break;
	}
	draw_set_color(gapColor) {
		//A negative gap id (-1) means no trick is being done
		if (currentGapID >= 0) {
			draw_set_halign(fa_right);          
			draw_text(screenX + screenWidth-14, screenY + 9, gapNameList[currentGapID]);    
			draw_set_halign(-1);
			
			if (debugFlag) {
				draw_set_halign(fa_right);          
				draw_text(screenX + screenWidth-14, screenY + 18, currentTriggerID);    
				draw_set_halign(-1);
			}
		}
	}
	
	draw_set_color(c_white){		
		draw_set_halign(fa_right);          
		draw_text(screenX + screenWidth-14, screenY + screenHeight-36, string_hash_to_newline(chainCount));    
		draw_set_halign(-1);
		
		draw_set_halign(fa_right);          
		draw_text(screenX + screenWidth-14, screenY + screenHeight-27, string_hash_to_newline(comboTotal));    
		draw_set_halign(-1);
		
		draw_set_halign(fa_right);          
		draw_text(screenX + screenWidth-14, screenY + screenHeight-18, string_hash_to_newline(goalScore));    
		draw_set_halign(-1);                
	}
}