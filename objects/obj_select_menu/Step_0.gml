
// Setup moving in the menus
if(SetupMDirection == 1){
    if(keyboard_check_pressed(global.Key_LEFT)){
        if(SelectID != 1){
            SelectID --
        }else{
            SelectID = SelectMax
        }
        PlaySound(snd_object_switch, global.MaxSFXV, 1, 1)
    }
    if(keyboard_check_pressed(global.Key_RIGHT)){
        if(SetupMID != SelectMax){
            SelectID ++
        }else{
            SelectID = 1
        }
        PlaySound(snd_object_switch, global.MaxSFXV, 1, 1)
    }            
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
        if(SetupMID != SelectMax){
            SelectID ++
        }else{
            SelectID = 1
        }
        PlaySound(snd_object_switch, global.MaxSFXV, 1, 1)          
    }       
}

