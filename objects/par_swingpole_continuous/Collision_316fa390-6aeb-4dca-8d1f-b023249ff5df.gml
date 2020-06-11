/// @description Make character grab the pole
if (!isSwinging and LockTimer == 0 and other.XSpeed > 0 and other.XSpeed > swingMin and other.Action != ActionDie) {
	PlaySound(snd_character_hang, global.SFXVolume, 1, 1);
	isSwinging = true;
	swingProgress = -90;
	
	swingChar = par_character;
	swingChar.Action = ActionPoleSwing;
	//swingChar.AnimationFrame = 4;
	swingSpeed = swingChar.XSpeed;
	swingChar.XSpeed = 0;
	swingChar.YSpeed = 0;
	alarm[1] = 15;
}

if (!isSwinging and LockTimer == 0 and other.XSpeed < 0 and other.XSpeed < -swingMin) {
	PlaySound(snd_character_hang, global.SFXVolume, 1, 1);
	isSwinging = true;
	swingProgress = -90;
	
	swingChar = par_character;
	swingChar.Action = ActionPoleSwing;
	//swingChar.AnimationFrame = 10;
	//swingChar.Animation = "SWING";
	swingSpeed = swingChar.XSpeed;
	swingChar.XSpeed = 0;
	swingChar.YSpeed = 0;
	alarm[1] = 15;
}