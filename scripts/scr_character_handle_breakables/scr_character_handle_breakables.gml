/// @description  scr_character_handle_breakables()
 // Script to handle objects that can be broken.

var _ObjectHandle = scr_character_collision_object(x, y+16, par_collision_hammerable);

if (Action == ActionHammerDrop && _ObjectHandle != noone){
	// Destroy the object:
	instance_destroy(_ObjectHandle);
}

var _ObjectHandleSide = noone;
var _ObjectHandleLeft = scr_character_collision_left_object(x, y, Angle, spr_mask_big, par_collision_breakable_roll);
var _ObjectHandleRight = scr_character_collision_right_object(x, y, Angle, spr_mask_big, par_collision_breakable_roll);

if (_ObjectHandleLeft != noone) _ObjectHandleSide = _ObjectHandleLeft;
if (_ObjectHandleRight != noone) _ObjectHandleSide = _ObjectHandleRight;

if ((CharacterID == CharacterKnuckles || Action == ActionRolling) && _ObjectHandleSide != noone){
	// Your speed influences the direction of the debris
	_ObjectHandleSide.rockDir = sign(XSpeed);
	// Destroy the object:
	instance_destroy(_ObjectHandleSide);
}

_ObjectHandle = scr_character_collision_bottom_object(x, y, Angle, spr_mask_big, par_collision_breakable_jump);

if ((Action == ActionJump || Action == ActionHammerDrop) && _ObjectHandle != noone){
	// Destroy the object:
	instance_destroy(_ObjectHandle);
	
	if (Action == ActionJump) YSpeed = -2;
}

_ObjectHandle = scr_character_collision_right_object(x, y, Angle, spr_mask_big, par_collision_breakable_hard);

if ((CharacterID == CharacterKnuckles || (CharacterID == CharacterMighty && ShieldAttack == 1)) && _ObjectHandle != noone){
	// Your speed influences the direction of the debris
	_ObjectHandle.rockDir = sign(XSpeed);
	// Destroy the object:
	instance_destroy(_ObjectHandle);
}

var _Breakable_Spawner = scr_character_collision_object(x, y, obj_rock_spawner_refresh);

if (_Breakable_Spawner != noone) {
	//show_debug_message("Collided with spawner...");
	//obj_rock_spawner_big.alarm[0] = 1;
	
	
}