/// @description  Bridge Configuration.
 // By TPOT.

 // Bridge settings
    NumberOfLogs    = 12;
    MaxiumTension   = 12;
    LogSprite       = spr_aaz_bridge;
    Initializated   = false;
    
 // Bridge status variables
    BridgeWidth     = 0;
    BridgeMidWidth  = 0;
    
 // Bridge lists
    BridgeLogs                 = ds_list_create();
    BridgeTensions             = ds_list_create();
    BridgeTensionsInterpolated = ds_list_create();

