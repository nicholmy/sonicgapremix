/// @description Init Interaction w/ Character
// You can write your code in this editor
if (!isBouncing and other.YSpeed > 0 and LockTimer == 0) {
	bounceChar = other;
	
	bounceXSpeed = other.XSpeed;
	bounceYSpeed = -other.YSpeed;
	
	other.x = x;
	other.y = y - 12;
	isBouncing = true;
	other.Action = ActionRolling;
	other.Animation = "ROLL";
	other.InputLock_S = 1;
	other.InputAlarm = 10;
	other.ShieldUsable = false;
	alarm[0] = 10;
}