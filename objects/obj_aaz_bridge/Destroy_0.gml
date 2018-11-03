/// @description  Activate all logs and destroy them.

 // Activate logs:
    instance_activate_object(par_bridge)
    
 // Destroy bride logs.
    for(CurrentLog=0; CurrentLog < NumberOflogs; CurrentLog++){
        with(ds_list_find_value(BridgeLogs, CurrentLog)){
             instance_destroy();
        }
    }
    
 // Destroy lists.
    ds_list_destroy(BridgeLogs);
    ds_list_destroy(BridgeTensions);
    ds_list_destroy(BridgeTensionsInterpolated);


