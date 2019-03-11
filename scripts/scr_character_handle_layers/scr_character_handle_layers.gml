/// @description  scr_character_handle_layers()

if (place_meeting(x, y, obj_sensor_layer_low)){
    Layer = 0;
}
if (place_meeting(x, y, obj_sensor_layer_high)){
    Layer = 1;
}
if (place_meeting(x, y, obj_sensor_layer_lowhigh) && Ground) {
    if (XSpeed > 0){
       Layer = 1;
    } else if (XSpeed < 0){
       Layer = 0;
    }
}
if (place_meeting(x, y, obj_sensor_layer_highlow) && Ground) {
    if (XSpeed > 0){
       Layer = 0;
    } else if (XSpeed < 0){
       Layer = 1;
    }
}
