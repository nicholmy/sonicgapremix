/// @description  Logo Timing
switch(state)
{
    case 0: // Allow the Flicky icon to move to the center of the screen.
        state = 1;
        break;
    case 2: // Start the Flicky Engine text entrance with a bang.
        PlaySound(snd_object_destroy, global.SFXVolume, 1, 1); 
        state = 3;
        break;
    case 4:
        state = 5;
}

