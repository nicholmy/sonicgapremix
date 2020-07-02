//Obstacles are flat objects on the top
/// scr_character_handle_obstacles()
if (scr_character_collision_bottom_object(x, y, Angle, spr_mask_main, par_collision_obstacles)) {
    scr_character_angle(global.GravityAngle);
}
///scr_character_handle_monitors("")

// Get crushed
var crusherTop = scr_character_collision_top_object(x, y-4, Angle, spr_mask_mid, par_collision_crusher)
var crusherBottom = scr_character_collision_bottom_object(x, y, Angle, spr_mask_mid, par_collision_crusher)

if (crusherTop and scr_character_collision_bottom_object(x, y, Angle, spr_mask_main, par_collision_solid)) {
    Action = ActionDie;
}

if (crusherBottom and scr_character_collision_top_object(x, y, Angle, spr_mask_main, par_collision_solid)) {
    Action = ActionDie;
}