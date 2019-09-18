/// @description Insert description here
// You can write your code in this editor
y = baseY + 32 * dcos(angle)

angle = (angle + 1) % 360

// Update the pos of the stem
stem.x = x
stem.y = y