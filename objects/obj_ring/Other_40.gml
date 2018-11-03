/// @description  Destroy a ring if spilled, and outside the view.
    if(InMotion && (x < __view_get( e__VW.XView, 0 ) || x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ))){
       instance_destroy();
    }     
     

