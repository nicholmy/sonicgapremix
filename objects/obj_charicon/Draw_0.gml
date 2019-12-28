/// @description Insert description here
// You can write your code in this editor
if (global.Character_1 == CharacterSonic) {
	draw_sprite(spr_sonic_idle, 0, x, y)
} else if (global.Character_1 == CharacterTails) {
	draw_sprite(spr_miles_idle, 0, x, y)
	draw_sprite(spr_miles_tail_1, 0, x, y)
} else if (global.Character_1 == CharacterKnuckles) {
	draw_sprite(spr_knuckles_idle, 0, x, y)
} else if (global.Character_1 == CharacterAmy) {
	draw_sprite(spr_amy_idle, 0, x, y)
} else if (global.Character_1 == CharacterMighty) {
	draw_sprite(spr_mighty_idle, 0, x, y)
} else if (global.Character_1 == CharacterRay) {
	draw_sprite(spr_ray_idle, 0, x, y)
}