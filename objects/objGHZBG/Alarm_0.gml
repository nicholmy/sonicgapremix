with (objGHZBG) {
/// Update BG.
    switch ( sea_back )
    {
        case bg_ghz_parallax_water_1:
        mtn_back = bg_ghz_parallax_mountain_2;
        sea_back = bg_ghz_parallax_water_2;
        break;
    
        case bg_ghz_parallax_water_2:
        mtn_back = bg_ghz_parallax_mountain_3;
        sea_back = bg_ghz_parallax_water_3;
        break;
    
        case bg_ghz_parallax_water_3:
        mtn_back = bg_ghz_parallax_mountain_4;
        sea_back = bg_ghz_parallax_water_4;
        break;
    
        case bg_ghz_parallax_water_4:
        mtn_back = bg_ghz_parallax_mountain_1;
        sea_back = bg_ghz_parallax_water_1;
        break;
    }
 
 // Repeat:
    alarm[0] = 3.75;

}
