/// @description Insert description here
// Setup moving in the menus
if(keyboard_check_pressed(global.Key_LEFT)){
    if(SelectID > 1){
        SelectID--
    }else{
        SelectID = SelectMax
    }
	
	MoveDirection = -1
	MoveAngle = ((MoveAngle - 60) + 360) % 360
    PlaySound(snd_object_switch, global.MaxSFXV, 1, 1)
}
if(keyboard_check_pressed(global.Key_RIGHT)){
    if(SelectID < SelectMax){
        SelectID ++
    }else{
        SelectID = 1
    }
	
	MoveDirection = 1
	MoveAngle = (MoveAngle + 60) % 360
    PlaySound(snd_object_switch, global.MaxSFXV, 1, 1)
}            

//Angle = (SelectID - 1) * 60 + 270

// Keep rotating if it's not on the right character
if (MoveAngle != Angle) Angle = (Angle + 4 * MoveDirection) % 360
else MoveDirection = 0

if (Angle < 0) Angle += 360