/// @description Use keys to change levels
// Go back
if (keyboard_check_pressed(global.Key_SPECIAL)) {
	room_goto(rm_flicky_select_char)
}

if(keyboard_check_pressed(global.Key_UP)){
    if(SelectID != 1){
        SelectID--
    }else{
		if (levelMode == 0) {
			SelectID = zoneTotal
		} else {
			SelectID = courseTotal
		}
    }
    PlaySound(snd_object_switch, global.MaxSFXV, 1, 1)
}
if(keyboard_check_pressed(global.Key_DOWN)){
	if (levelMode == 0 and SelectID != zoneTotal) {
		SelectID++
	} else if (levelMode == 1 and SelectID != courseTotal) {
		SelectID++
	} else {
		SelectID = 1
	}

    PlaySound(snd_object_switch, global.MaxSFXV, 1, 1)          
}     

if(keyboard_check_pressed(global.Key_LEFT) or keyboard_check_pressed(global.Key_RIGHT)){
	levelMode = (levelMode + 1) % 2
	if (levelMode == 1 and SelectID > courseTotal) SelectID = courseTotal;
	else if (levelMode == 0 and SelectID > zoneTotal) SelectID = zoneTotal;
	
	PlaySound(snd_object_switch, global.MaxSFXV, 1, 1)
		
}

if (keyboard_check_pressed(global.Key_ENTER)) {
	if (levelMode == 0) {
		switch(SelectID){
	            case 1:{
					if (global.Character_1 == CharacterMighty or global.Character_1 == CharacterRay)
						room_goto(rm_SkyStationZone); 
					else
						PlaySound(snd_object_error, global.MaxSFXV, 1, 1)
	            break;    
	            }
	            case 2:{
					room_goto(rm_TechTreeZone);
					break;
	            }   
	            case 3:{
					room_goto(rm_AquaticRuinZone); 
					break;
	            }
	            case 4:{
					room_goto(rm_test_zone3);
					break;
	            }
				case 5:{
					room_goto(rm_test_zone3);
					break;
	            }
		}
	}
	else if (levelMode == 1) {
		switch(SelectID){
	            case 1:{
	            room_goto(rm_StarStationZone);
				PlaySound(snd_object_checkpoint, global.MaxSFXV, 1, 1)
	            break;    
	            }
		}
	}
}