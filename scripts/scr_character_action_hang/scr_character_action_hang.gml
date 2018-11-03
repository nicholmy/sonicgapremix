/// @description scr_character_action_jump();
// Script to perform Hanging.

if (Action == ActionHang) {
	Allow_XMovement = false;
	Allow_YMovement = false;
	
	if (KeyAction_Pressed) {
		Action = ActionJump;
		Angle = 0;
		ShieldUsable = true;
		YSpeed = -5;
		Allow_XMovement = true;
		Allow_YMovement = true;
		par_hang.inUse = false;
		par_hang.alarm[0] = 5;
		
		if(CharacterID != CharacterAmy){
            PlaySound(snd_character_jump, global.SFXVolume, -1, true);  
        }else{
            PlaySound(snd_character_jump, global.SFXVolume, 1.10, true); 
        }
	}
}