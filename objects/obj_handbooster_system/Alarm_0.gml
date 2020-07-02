/// @description Transition to spinning state
// You can write your code in this editor
if (state == 4) {
	state = 5;
	grabbedPlayer.y -= 23;
	spinner.y -= 23;
	hand.y -= 24;
	
	alarm[1] = 30;
}