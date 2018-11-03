/// @description Draw the Laser!
// Find the point of impact

for(var i = 0; i < max_length; i++){

    var lx = originX + lengthdir_x(i, direction);
    var ly = y + lengthdir_y(i, direction);

	if (collision_point(lx, ly, par_character, false, true) && par_character.Action != ActionHurt && par_character.Action != ActionDie) {
		//Action = ActionRolling;
		if (par_character.Shield != shield_reward) {
			//If you already have a shield, destroy it
			if(par_character.ShieldChild != 0){
                if(instance_exists(par_character.ShieldChild)){
                    with(par_character.ShieldChild){
                        instance_destroy();
                    }
                }
            }
			
			par_character.Shield = shield_reward;
			PlaySound(shield_sound, global.SFXVolume, 1, 0);
		}
		
		par_character.Shield_Usable = true;
		
			   
		break;
	}
    if(collision_point(lx, ly, solid_object, false, true)){
        break;
    }

}

draw_set_color(color1);
draw_line_width(originX, y, lx, ly, (height * 8) + 0.1);
draw_circle(lx, ly, 6, false);

draw_set_color(color2);
draw_line_width(originX, y, lx, ly, (height * 4) + 0.1);
draw_circle(lx, ly, 4, false);

draw_set_color(color3);
draw_line_width(originX, y, lx, ly, (height * 2) + 0.1);
draw_circle(lx, ly, 2, false);


