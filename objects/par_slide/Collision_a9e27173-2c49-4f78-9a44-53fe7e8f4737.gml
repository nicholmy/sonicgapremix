/// @description Trigger the slide
if (other.Ground and other.Action != ActionWaterSlide) {
	other.Action = ActionWaterSlide;
	other.XSpeed = slideSpd * slideDirection;
}
