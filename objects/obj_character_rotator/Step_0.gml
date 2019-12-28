/// @description Insert description here
// Setup moving in the menus
if(keyboard_check_pressed(global.Key_LEFT)){
    if(SelectID > 1){
        SelectID--
    }else{
        SelectID = SelectMax
    }
    PlaySound(snd_object_switch, global.MaxSFXV, 1, 1)
}
if(keyboard_check_pressed(global.Key_RIGHT)){
    if(SelectID < SelectMax){
        SelectID ++
    }else{
        SelectID = 1
    }
    PlaySound(snd_object_switch, global.MaxSFXV, 1, 1)
}            

Angle = (SelectID - 1) * 60 + 270

// You can write your code in this editor
//if (MoveAngle > Angle) Angle = (Angle + 2) % 360
//else if (MoveAngle < Angle) Angle = (Angle - 2) % 360

if (Angle < 0) Angle += 360