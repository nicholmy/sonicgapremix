/// @description scr_character_action_uncurl()
// Script for uncurling from spikes.

   if(Action = ActionUncurl){
        if (JumpLock) {
            JumpLock = false;
        }
        if(Animation != "UNCURL") {
            Animation  = "UNCURL";
        }
        
        if (Landed && KeyDown) {
            Action = ActionRolling;
            PlaySound(snd_character_roll, global.SFXVolume, 1, 1);
        } else if (Landed) {
            Action = ActionNormal;
        }
   }
