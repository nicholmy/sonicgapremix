/// @description  Destroy and give Character air.
    if(BubblePop = true && other.Shield != ShieldBubble && other.Action != ActionDie && other.CharacterState != CharacterHyper){
       other.DrownTimer = 1800;
       other.Action     = ActionBreath;
       PlaySound(snd_character_air, global.SFXVolume, 1, 1);     
       instance_destroy();
    }


