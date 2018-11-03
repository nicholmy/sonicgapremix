/// @description Hit
if(other.HP != 0 && other.State == "Normal"){
    other.State = "Hit";   
    other.HP--;        
    PlaySound(snd_object_destroy, global.SFXVolume, 1, 1);       
}