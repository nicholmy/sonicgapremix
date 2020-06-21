/// @description Draw the sprites depending on state
if (state == 0) {
	draw_sprite(spr_eggarcher_idle, 0, x, y);
} else if (state == 1) {
	draw_sprite(spr_eggarcher_idle, currentImage, x, y);
} else {
	draw_sprite(spr_eggarcher_fire, currentImage, x, y);
}

currentImage = (currentImage + imageSpeed) % imageMax