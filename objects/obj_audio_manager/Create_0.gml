/// @description  Init. Audio Data.
 // This Object handles most Audio related things, make sure to change this for your game!
    
 // Variables (do not edit this if unsure)
    ZoneBGM     =    0;
    SampleRate  = 41100;
    PitchChange =  true;
    PitchValue  =     0;
    RunStep     = false;
    alarm[0]    =     5; 
        
 // Zone Music:
    Test_Theme   = (bgm_intro_zone);
	Test_Theme2  = (bgm_test_zone2);
	Test_Theme3  = (bgm_test_zone3);
	Sky_Station1 = (bgm_skystation_1);
	Sky_Station2 = (bgm_skystation_2);
	Star_Station1 = (bgm_starstation_1);
	Star_Station2 = (bgm_starstation_2);
	
	Minor_Boss_Theme = (bgm_minor_boss);
	Major_Boss_Theme = (bgm_minor_boss);
 
 // Bonus Stages:
    Gumball_Theme = (bgm_bonus_gumball);
 
 // Invincibility Themes:
    Invincibility_Normal    = (bgm_invincibility); // Default Invincibility Music.
    Invincibility_Transform =   (bgm_super_sonic); // Theme that plays when in Super form.
     
 // Jingles:
    Jingle_ActClear = (snd_scoring_theme);         // Theme that plays after you cleared a act.
    Jingle_Drowning = (bgm_drowning);              // Theme that plays when you're about to drown.
    Jingle_GameOver = (bgm_game_over);             // Theme that play when we game over.
    
 // Credits:
    Credits_Theme = (bgm_credits); 
    
 // Effects:
    DeadFade = false;                              // Slowly fades out the music after the character dies.
    BossFade = false;                              // Slowly fades out the music when a boss is active.   
	MajorBossFade = false;
	UpdateActMusic = false;

	alarm[1] = 1;
