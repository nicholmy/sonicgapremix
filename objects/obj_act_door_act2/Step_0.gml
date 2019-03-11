/// @description If it's the right act, automatically open the door.

// Inherit the parent event
event_inherited();

if (global.ZoneAct >= actTrigger && !isOpen) {
	alarm[0] = 1;
}