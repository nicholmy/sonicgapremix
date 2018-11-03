/// @description Start the Space Countdown
if (!other.Underwater) {
	other.Underwater = true;
	other.InSpace = true;
	PhysicMode = "Underwater";
	other.DrownTimer = 651;
	
}