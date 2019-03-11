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
				show_debug_message(string(Ramp_Gap_Trigger.gapID));
				obj_gap_manager.currentGapID = Ramp_Gap_Trigger.gapID;
				obj_gap_manager.currentTriggerID = Ramp_Gap_Trigger.triggerID;
				obj_gap_manager.charHighlight = Ramp_Gap_Trigger.charHighlight;
				PlaySound(snd_object_checkpoint, global.SFXVolume, 1, 1);
			}
		}
	
		// If this trigger counts as an ending one, is different than the one before, you are doing the same gap as this trigger, and you landed
		// Note that the trigger you land in determines how many points you get
		if (!Ramp_Gap_Trigger.notEnd && Ramp_Gap_Trigger.triggerID != obj_gap_manager.currentTriggerID && obj_gap_manager.currentGapID == Ramp_Gap_Trigger.gapID  && Landed) {
			obj_gap_manager.currentGapSize = Ramp_Gap_Trigger.gapSize;
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
				obj_gap_manager.charHighlight = Transfer_Gap_Trigger.charHighlight;
				PlaySound(snd_object_checkpoint, global.SFXVolume, 1, 1);
			}
		}
	
		// If this trigger counts as an end, is different than the one before, you are doing the same gap as this trigger, and you landed
		// Note that the trigger you land in determines how many points you get
		if (!Transfer_Gap_Trigger.notEnd && Transfer_Gap_Trigger.triggerID != obj_gap_manager.currentTriggerID && obj_gap_manager.currentGapID == Transfer_Gap_Trigger.gapID  && Landed) {
			obj_gap_manager.currentGapSize = Transfer_Gap_Trigger.gapSize;
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
				obj_gap_manager.charHighlight = Hop_Gap_Trigger.charHighlight;
				PlaySound(snd_object_checkpoint, global.SFXVolume, 1, 1);
			}
		}
	
		// Same gap, different trigger, DIFFERENT DIRECTION, this counts as an end, you're good!
		if (!Hop_Gap_Trigger.notEnd && (obj_gap_manager.currentGapID == Hop_Gap_Trigger.gapID) && (obj_gap_manager.currentTriggerID != Hop_Gap_Trigger.triggerID) && !Ground) {
			endTrigger = (Hop_Gap_Trigger.triggerDirection != -1 && Hop_Gap_Trigger.triggerDirection != 1) || (Hop_Gap_Trigger.triggerDirection == 1 && XSpeed < 0) || (Hop_Gap_Trigger.triggerDirection == -1 && XSpeed > 0);
		
			if (endTrigger) {
				obj_gap_manager.currentGapSize = Hop_Gap_Trigger.gapSize;
				obj_gap_manager.alarm[0] = 1;
			}
		}
	}

	//Handle failures
	triggerFail = (Ramp_Gap_Trigger == noone || (Ramp_Gap_Trigger.notEnd && Ramp_Gap_Trigger.triggerID != obj_gap_manager.currentTriggerID)) && (Transfer_Gap_Trigger == noone || (Transfer_Gap_Trigger.notEnd && Transfer_Gap_Trigger.triggerID != obj_gap_manager.currentTriggerID));
	isGapFailAction = Action == ActionHurt || Action == ActionDie || (obj_gap_manager.currentGapID != -1 && Landed && triggerFail);
	isComboFailAction =  Invincibility == 0 && (Action == ActionNormal || Action == ActionHurt || Action == ActionDie || Action == ActionCrouch || Action == ActionLookup);
	
	// If you are doing a gap, you landed, and you're not in a trigger at all (or one that's different and not an end), FAIL
	if (isGapFailAction) {
		obj_gap_manager.alarm[3] = 1;
		PlaySound(snd_character_hurt, global.SFXVolume, 1, 1);
	}
	
	// If you do something combo ending, you fail SONIC	
	if (isComboFailAction && obj_gap_manager.isDoingSONIC && !obj_gap_manager.SONICFinished) {
		var Combo_Letter = scr_character_collision_object(x, y, par_combo_letter);
		
		if (Combo_Letter != noone) {
			var LetterCount = 0;
			for (var i = 0; i < 4; i++) {
				if (obj_gap_manager.SONICList[i] == 1) LetterCount++;
			}
		
			// You're actually fine if this is your first letter and you're inside it, otherwise fail
			if (LetterCount > 1) obj_gap_manager.alarm[4] = 1;
		} else {
			obj_gap_manager.alarm[4] = 1;
		}
	}

	// End the combo and calculate points when you fail one
	if (obj_gap_manager.comboTotal > 0 && isComboFailAction) {
		obj_gap_manager.alarm[2] = 1;
		PlaySound(snd_scoring_result, global.SFXVolume, 1, 1);
	}
	
	var Fail_Gap_Trigger = scr_character_collision_object(x, y, obj_gap_fail);
	
	if (Fail_Gap_Trigger != noone) {
		// Fail whatever current gap this is
		obj_gap_manager.alarm[3] = 1;
	}
}