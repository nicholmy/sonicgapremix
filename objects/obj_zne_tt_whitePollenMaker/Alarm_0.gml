/// @description Spawn pollen somewhere off screen
if (global.ZoneAct == 1) {
var screenX = __view_get( e__VW.XView, 0 );
var screenY = __view_get( e__VW.YView, 0 );
var screenWidth = __view_get( e__VW.WView, 0 );
var screenHeight = __view_get( e__VW.HView, 0 );

var pollenX = screenX + screenWidth
var pollenY = random_range(screenY, screenY + screenHeight)

instance_create(pollenX, pollenY, obj_zne_tt_pollen_white);
}
alarm[0] = spawnSpd