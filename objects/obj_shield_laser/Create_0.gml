/// @description Set init values for laser
// You can write your code in this editor
direction = shootDirection;

max_length = maxLength;
solid_object = par_collision_terrain;
originX = x + 8 * dsin(direction+180);
height = sin(alarm[0]);

shield_reward = ShieldBubble;
shield_sound = snd_shield_get_bubble;
color1 = c_blue;
color2 = c_aqua;
color3 = c_white;