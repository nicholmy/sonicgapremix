/// @description Rush at the player in one direction
// You can write your code in this editor
if (state == 1) {
	state = 2;
	rushAngle = point_direction(x, y, par_character.x, par_character.y);
	image_xscale = sign(x - par_character.x);
}