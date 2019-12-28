/// @description Draw the characters in a circle

draw_sprite(spr_sonic_idle, 0, x + CircleWidth * dcos(Angle), y - CircleWidth * dsin(Angle))
draw_sprite(spr_ray_idle, 0, x + CircleWidth * dcos(Angle + 60), y - CircleWidth * dsin(Angle + 60))
draw_sprite(spr_mighty_idle, 0, x + CircleWidth * dcos(Angle + 120), y - CircleWidth * dsin(Angle + 120))
draw_sprite(spr_amy_idle, 0, x + CircleWidth * dcos(Angle + 180), y - CircleWidth * dsin(Angle + 180))
draw_sprite(spr_knuckles_idle, 0, x + CircleWidth * dcos(Angle + 240), y - CircleWidth * dsin(Angle + 240))
draw_sprite(spr_miles_tail_1, 0, x + CircleWidth * dcos(Angle + 300), y - CircleWidth * dsin(Angle + 300))
draw_sprite(spr_miles_idle, 0, x + CircleWidth * dcos(Angle + 300), y - CircleWidth * dsin(Angle + 300))

/*draw_sprite(spr_sonic_idle, 0, x + CircleWidth * dcos(Angle), y - CircleWidth * dsin(Angle))
draw_sprite(spr_miles_tail_1, 0, x + CircleWidth * dcos(Angle + 60), y - CircleWidth * dsin(Angle + 60))
draw_sprite(spr_miles_idle, 0, x + CircleWidth * dcos(Angle + 60), y - CircleWidth * dsin(Angle + 60))
draw_sprite(spr_knuckles_idle, 0, x + CircleWidth * dcos(Angle + 120), y - CircleWidth * dsin(Angle + 120))
draw_sprite(spr_amy_idle, 0, x + CircleWidth * dcos(Angle + 180), y - CircleWidth * dsin(Angle + 180))
draw_sprite(spr_mighty_idle, 0, x + CircleWidth * dcos(Angle + 240), y - CircleWidth * dsin(Angle + 240))
draw_sprite(spr_ray_idle, 0, x + CircleWidth * dcos(Angle + 300), y - CircleWidth * dsin(Angle + 300))*/