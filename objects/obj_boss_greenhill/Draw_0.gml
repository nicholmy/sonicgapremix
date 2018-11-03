/// @description Draw Eggy Based on State
// You can write your code in this editor


EggySprite = spr_eggman_normal;
EggMobileSprite = spr_eggmobile;

if (State == "Hit") {
	EggySprite = spr_eggman_hit;
} else if (XSpeed != 0) {
	EggySprite = spr_eggman_fly;
} else if (MoveState == "PullDown") {
	EggySprite = spr_eggman_haha;
}

if (XSpeed < 0) {
	AnimationDirection = -1;
} else if (XSpeed > 0) {
	AnimationDirection = 1;
}

//draw_sprite_ext(spr_eggmobile_complete, 0, x, y, 1, 1, 0, c_blue, 1);

if (AnimationDirection == -1) {
	draw_sprite_ext(EggySprite, -1, x-3, y-17, AnimationDirection, 1, 0, -1, 1); 
	draw_sprite_ext(EggMobileSprite, -1, x, y+7, AnimationDirection, 1, 0, -1, 1);
	
	if (XSpeed != 0) {
		//draw_sprite_ext(spr_eggmobile_fire, -1, x+37, y+4, AnimationDirection, 1, 0, -1, 1);
		eggMobileFire.x = x + 37;
		eggMobileFire.y = y + 4;
		eggMobileFire.image_xscale = AnimationDirection;
		eggMobileFire.visible = true;
	} else {
		eggMobileFire.visible = false;
	}
} else if (AnimationDirection == 1) {
	draw_sprite_ext(EggySprite, -1, x+3, y-17, AnimationDirection, 1, 0, -1, 1); 
	draw_sprite_ext(EggMobileSprite, -1, x, y+7, AnimationDirection, 1, 0, -1, 1);
	
	if (XSpeed != 0) {
		//draw_sprite_ext(spr_eggmobile_fire, -1, x-37, y+4, AnimationDirection, 1, 0, -1, 1);
		eggMobileFire.x = x - 37;
		eggMobileFire.y = y + 4;
		eggMobileFire.image_xscale = AnimationDirection;
		eggMobileFire.visible = true;
	} else {
		eggMobileFire.visible = false;
	}
}



//draw_sprite_ext(EggySprite, 0, x+3, y-17, AnimationDirection, 1, 0, -1, 1); 
//draw_sprite_ext(EggMobileSprite, 0, x, y+7, AnimationDirection, 1, 0, -1, 1);

//draw_sprite(EggySprite, 0, x+3, y-17);
//draw_sprite(EggMobileSprite, 0, x, y+7);