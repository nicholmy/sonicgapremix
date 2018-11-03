/// @description  Main Code.

// ---- Variable declaration ---------------------------------------------------------------------------
    var CurrentLog, CurrentPlayer, PlayerCount, PlayerHandle, TensionPoint, LeftSide, LeftSideStep, Right, RightStep;
    var DistanceFromCenter, CurrentHeight;
    
// ---- Routine ----------------------------------------------------------------------------------------

    // Reset all logs Height
    for (CurrentLog = 0; CurrentLog < NumberOfLogs; CurrentLog += 1)
        ds_list_replace(BridgeTensions, CurrentLog, 0);
    
    // If no player exists, there's nothing more here to do.
    if (!instance_exists(par_character)) exit;
    
    // If a player exists, find out if he's on the bridge right now.
    PlayerCount = instance_number(par_character);
    for(CurrentPlayer = 0; CurrentPlayer < PlayerCount; CurrentPlayer += 1){
        // Get player's handle
        PlayerHandle = instance_find(par_character, CurrentPlayer);
        
        // Find out if he's suitable for the check
        if(PlayerHandle == noone || PlayerHandle.Ground == false ||
        collision_rectangle(x, y-2, x+BridgeWidth, y+MaxiumTension, PlayerHandle, true, true) == false) continue;
        
        // Calculate tension point and distance from center
        TensionPoint        = min(max(round((PlayerHandle.x-x)/sprite_get_width(LogSprite)), 0), NumberOfLogs-1);
        DistanceFromCenter  = MaxiumTension*(1-(abs(floor(PlayerHandle.x-x-BridgeMidWidth)/BridgeMidWidth)));
        
        // Calculate Steps for positioning the logs
        LeftSide            = 0;
        RightSide           = 180;
        LeftSideStep        = scr_safe_division(90, TensionPoint);
        RightSideStep       = scr_safe_division(90, NumberOfLogs-TensionPoint);
        
        // Calculate new Heights. First left side and then Right side
        for (CurrentLog=0; CurrentLog <= TensionPoint; CurrentLog++){
            // Calculate this log's Height
            CurrentHeight = sin(degtorad(LeftSide))*DistanceFromCenter;
            if(CurrentHeight > ds_list_find_value(BridgeTensions, CurrentLog))
                ds_list_replace(BridgeTensions, CurrentLog, CurrentHeight);
                
            // Next step on this side
            LeftSide += LeftSideStep
        }
        for(CurrentLog=NumberOfLogs-1; CurrentLog > TensionPoint; CurrentLog--){
            // Calculate this log's Height
            CurrentHeight = sin(degtorad(RightSide))*DistanceFromCenter;
            if(CurrentHeight > ds_list_find_value(BridgeTensions, CurrentLog))
                ds_list_replace(BridgeTensions, CurrentLog, CurrentHeight);
                
            // Next step on this side
            RightSide -= RightSideStep
        }
    }


/// Interpolate logs.
    for(CurrentLog = 0; CurrentLog < NumberOfLogs; CurrentLog++;){
        ds_list_replace(BridgeTensionsInterpolated, CurrentLog, scr_interpolate_values(ds_list_find_value(BridgeTensionsInterpolated, CurrentLog), ds_list_find_value(BridgeTensions, CurrentLog), 0.2));
    }

