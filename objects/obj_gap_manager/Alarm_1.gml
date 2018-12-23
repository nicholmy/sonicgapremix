/// @description Add Points to Combo with Multipliers
if (instance_exists(par_character)) {
	if (par_character.HasSpeedShoes) {
		pointsAwarded *= 2;
	}
}

comboTotal += pointsAwarded
pointsAwarded = 0;