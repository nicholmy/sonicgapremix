/// @description  Create the destroyed monitor:
    ID = instance_create(x, y, obj_monitor_destroyed);
    ID.  DestroyParent = DestroyParent;    
    ID.  IconID = MonitorIcon;
    ID.  Y      = y-2;
    ID.  DestroyParent = DestroyParent;
    
 // Dummy Effect:
    scr_create_dummy_effect(spr_explosion, 0.2, x, y, 1, 0);
    
 // Play Sound:
    PlaySound(snd_object_break, global.SFXVolume, 1, 0);

