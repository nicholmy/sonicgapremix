/// @description  Check for initialization

    if(Initializated) 
        exit;
    
    // Create logs
    for(CurrentLog=0; CurrentLog < NumberOfLogs; CurrentLog++){
        Log              = instance_create(x+(sprite_get_width(LogSprite)*CurrentLog), y, par_bridge);
        Log.ParentBridge = id;
        Log.LogId        = CurrentLog;
        Log.sprite_index = LogSprite;
        
        ds_list_add(BridgeLogs, Log);
        ds_list_add(BridgeTensions, 0);
        ds_list_add(BridgeTensionsInterpolated, 0);
    }
    
    // Calculate other stuff
    BridgeWidth    = sprite_get_width(LogSprite)*NumberOfLogs;
    BridgeMidWidth = BridgeWidth*0.5;
    
    // Done
    Initializated = true;

