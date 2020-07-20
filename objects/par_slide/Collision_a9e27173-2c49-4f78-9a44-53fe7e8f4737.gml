/// @description Trigger the slide
if (other.Ground and other.Action != ActionWaterSlide and other.Action != ActionDie) {
	other.Action = ActionWaterSlide;
	other.XSpeed = slideSpd * slideDirection;
}
