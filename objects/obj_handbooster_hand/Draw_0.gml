/// @description Grabbing or not?
// You can write your code in this editor
if (isGrabbing) {
	draw_sprite_ext(spr_handbooster_hand, 1, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
} else {
	draw_sprite_ext(spr_handbooster_hand, 0, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
}