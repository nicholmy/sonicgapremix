/// @description Cycle the palette
PalettePosition += spinDirection

// Mod doesn't make negative numbers wrap the right way? Weird
if (PalettePosition < 0) PalettePosition = 2

PalettePosition = (PalettePosition) % 3

alarm[0] = cycleSpd