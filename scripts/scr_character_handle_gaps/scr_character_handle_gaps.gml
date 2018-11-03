/// @description  scr_character_handle_gaps
 // Script to handle gap interactions with the player

if instance_exists(obj_gap_manager) {
	isStartAction = Action == ActionNormal || Action == ActionRolling;

	Ramp_Gap_Trigger = scr_character_collision_object(x, y, obj_gap_ramp_trigger);

	if (Ramp_Gap_Trigger != noone) {
		// If this counts as a starting trigger, you weren't doing a gap, and you pressed jump while on the ground in the right action
		if (!Ramp_Gap_Trigger.notStart && obj_gap_manager.currentGapID == -1 && Ground && KeyAction_Pressed && isStartAction) {
			//If direction is specified and you're moving in that direction...
			startTrigger = (Ramp_Gap_Trigger.triggerDirection != -1 && Ramp_Gap_Trigger.triggerDirection != 1) || (Ramp_Gap_Trigger.triggerDirection == 1 && XSpeed > 0) || (Ramp_Gap_Trigger.triggerDirection == -1 && XSpeed < 0);
		
			if (startTrigger) {
				obj_gap_manager.currentGapID = Ramp_Gap_Trigger.gapID;
				obj_gap_manager.currentTriggerID = Ramp_Gap_Trigger.triggerID;
				PlaySound(snd_object_checkpoint, global.SFXVolume, 1, 1);
			}
		}
	
		// If this trigger counts as an ending one, is different than the one before, you are doing the same gap as this trigger, and you landed
		// Note that the trigger you land in determines how many points you get
		if (!Ramp_Gap_Trigger.notEnd && Ramp_Gap_Trigger.triggerID != obj_gap_manager.currentTriggerID && obj_gap_manager.currentGapID == Ramp_Gap_Trigger.gapID  && Landed) {
			obj_gap_manager.alarm[0] = 1;
		}
	}

	Transfer_Gap_Trigger = scr_character_collision_object(x, y, obj_gap_transfer_trigger);

	if (Transfer_Gap_Trigger != noone) {
		// If this counts as a start, you weren't doing a gap, you aren't doing this gap, and you're on the ground
		if (!Transfer_Gap_Trigger.notStart && (obj_gap_manager.currentGapID != Transfer_Gap_Trigger.gapID) && Ground) {
			//If direction is specified and you're moving in that direction...
			startTrigger = (Transfer_Gap_Trigger.triggerDirection != -1 && Transfer_Gap_Trigger.triggerDirection != 1) || (Transfer_Gap_Trigger.triggerDirection == 1 && XSpeed > 0) || (Transfer_Gap_Trigger.triggerDirection == -1 && XSpeed < 0);
		
			if (startTrigger) {
				obj_gap_manager.currentGapID = Transfer_Gap_Trigger.gapID;
				obj_gap_manager.currentTriggerID = Transfer_Gap_Trigger.triggerID;
				PlaySound(snd_object_checkpoint, global.SFXVolume, 1, 1);
			}
		}
	
		// If this trigger counts as an end, is different than the one before, you are doing the same gap as this trigger, and you landed
		// Note that the trigger you land in determines how many points you get
		if (!Transfer_Gap_Trigger.notEnd && Transfer_Gap_Trigger.triggerID != obj_gap_manager.currentTriggerID && obj_gap_manager.currentGapID == Transfer_Gap_Trigger.gapID  && Landed) {
			obj_gap_manager.alarm[0] = 1;
		}
	}

	Hop_Gap_Trigger = scr_character_collision_object(x, y, obj_gap_hop_trigger);

	if (Hop_Gap_Trigger != noone) {
		// If this counts as a start, you weren't doing a gap, you aren't doing this gap, and you're in the air
		if (!Hop_Gap_Trigger.notStart && (obj_gap_manager.currentGapID != Hop_Gap_Trigger.gapID) && !Ground) {
			//If direction is specified and you're moving in that direction...
			startTrigger = (Hop_Gap_Trigger.triggerDirection != -1 && Hop_Gap_Trigger.triggerDirection != 1) || (Hop_Gap_Trigger.triggerDirection == 1 && XSpeed > 0) || (Hop_Gap_Trigger.triggerDirection == -1 && XSpeed < 0);
		
			if (startTrigger) {
				obj_gap_manager.currentGapID = Hop_Gap_Trigger.gapID;
				obj_gap_manager.currentTriggerID = Hop_Gap_Trigger.triggerID;
				PlaySound(snd_object_checkpoint, global.SFXVolume, 1, 1);
			}
		}
	
		// Same gap, different trigger, DIFFERENT DIRECTION, this counts as an end, you're good!
		if (!Hop_Gap_Trigger.notEnd && (obj_gap_manager.currentGapID == Hop_Gap_Trigger.gapID) && (obj_gap_manager.currentTriggerID != Hop_Gap_Trigger.triggerID) && !Ground) {
			endTrigger = (Hop_Gap_Trigger.triggerDirection != -1 && Hop_Gap_Trigger.triggerDirection != 1) || (Hop_Gap_Trigger.triggerDirection == 1 && XSpeed < 0) || (Hop_Gap_Trigger.triggerDirection == -1 && XSpeed > 0);
		
			if (endTrigger) {
				obj_gap_manager.alarm[0] = 1;
			}
		}
	}

	triggerFail = (Ramp_Gap_Trigger == noone || (Ramp_Gap_Trigger.notEnd && Ramp_Gap_Trigger.triggerID != obj_gap_manager.currentTriggerID)) && (Transfer_Gap_Trigger == noone || (Transfer_Gap_Trigger.notEnd && Transfer_Gap_Trigger.triggerID != obj_gap_manager.currentTriggerID));
	isGapFailAction = Action == ActionHurt || Action == ActionDie;

	// If you are doing a gap, you landed, and you're not in a trigger at all (or one that's different and not an end)
	if (isGapFailAction || (obj_gap_manager.currentGapID != -1 && Landed && triggerFail)) {
		obj_gap_manager.currentGapID = -1;
	
		PlaySound(snd_character_hurt, global.SFXVolume, 1, 1); 
	}

	// Handle Combos
	isComboFailAction = Action == ActionNormal || Action == ActionHurt || Action == ActionDie || Action == ActionCrouch || Action == ActionLookup;

	if (obj_gap_manager.chainCount > 0 && isComboFailAction) {
		//if (obj_gap_manager.chainCount > 1) {
			PlaySound(snd_scoring_result, global.SFXVolume, 1, 1);
		//}
		global.Score += obj_gap_manager.comboTotal;
		obj_gap_manager.goalScore = max(obj_gap_manager.goalScore - obj_gap_manager.comboTotal, 0);
	
		obj_gap_manager.chainCount = 0;
		obj_gap_manager.comboTotal = 0;
	}
}