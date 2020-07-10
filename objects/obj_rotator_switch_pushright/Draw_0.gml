/// @description Change switch sprite
if (!isTriggered) {
	draw_sprite_ext(spr_sth3_switch_pushright, 0, x, y, image_xscale, image_yscale, 0, c_white, image_alpha)
} else {
	draw_sprite_ext(spr_sth3_switch_pushright, 1, x, y, image_xscale, image_yscale, 0, c_white, image_alpha)
}