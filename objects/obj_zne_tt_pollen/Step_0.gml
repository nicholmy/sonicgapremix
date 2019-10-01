/// @description Move in a wave
vspeed = -0.125 * dsin(rotAngle)
rotAngle = (rotAngle + 1) % 360

var screenX = __view_get( e__VW.XView, 0 );
var screenWidth = __view_get( e__VW.WView, 0 );

if ((x < screenX - 32) or (x > screenX + screenWidth + 4)) instance_destroy();