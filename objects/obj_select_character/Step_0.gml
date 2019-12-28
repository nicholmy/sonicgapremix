
// Setup moving in the menus
if(SetupMDirection == 1){
    if(keyboard_check_pressed(global.Key_LEFT)){
        if(SelectID != 1){
            SelectID--
        }else{
            SelectID = SelectMax
        }
        PlaySound(snd_object_switch, global.MaxSFXV, 1, 1)
    }
    if(keyboard_check_pressed(global.Key_RIGHT)){
        if(SelectID != SelectMax){
            SelectID ++
        }else{
            SelectID = 1
        }
        PlaySound(snd_object_switch, global.MaxSFXV, 1, 1)
    }
	CanChoose = false;
	alarm[0] = 5;
}
    
if(SetupMDirection == 2){
    if(keyboard_check_pressed(global.Key_UP)){
        if(SelectID != 1){
            SelectID --
        }else{
            SelectID = SelectMax
        }
        PlaySound(snd_object_switch, global.MaxSFXV, 1, 1)
    }
    if(keyboard_check_pressed(global.Key_DOWN)){
        if(SelectID != SelectMax){
            SelectID ++
        }else{
            SelectID = 1
        }
        PlaySound(snd_object_switch, global.MaxSFXV, 1, 1)          
    }
	CanChoose = false;
	alarm[0] = 5;
}

if(keyboard_check_pressed(global.Key_ENTER) and !HasSelected){
	HasSelected = true;
	alarm[1] = 30;
    PlaySound(snd_object_checkpoint, global.MaxSFXV, 1, 1)          
} 

