/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Draw the Treetops
    scr_draw_background_tiled_area(bg_aquaticruin_treetop, 0,  0, __view_get( e__VW.XView, view_current ) * 0.9, __view_get( e__VW.YView, view_current ) * globalYScroll + 0 , __view_get( e__VW.XView, view_current ) * 0.1 + __view_get( e__VW.WView, 0 ), 128);
	scr_draw_background_tiled_area(bg_aquaticruin_sky, 0,  0, __view_get( e__VW.XView, view_current ) * 1, __view_get( e__VW.YView, view_current ) * globalYScroll + 128 , __view_get( e__VW.XView, view_current ) * 0 + __view_get( e__VW.WView, 0 ), 128);
	
	scr_draw_background_tiled_area(bg_aquaticruin_mountain, 0,  0, __view_get( e__VW.XView, view_current ) * 0.9, __view_get( e__VW.YView, view_current ) * globalYScroll + 256 , __view_get( e__VW.XView, view_current ) * 0.1 + __view_get( e__VW.WView, 0 ), 48);
	
	scr_draw_background_tiled_area(bg_aquaticruin_mountain, 0,  48, __view_get( e__VW.XView, view_current ) * 0.8, __view_get( e__VW.YView, view_current ) * globalYScroll + 304 , __view_get( e__VW.XView, view_current ) * 0.2 + __view_get( e__VW.WView, 0 ), 34);
	
	scr_draw_background_tiled_area(bg_aquaticruin_mountain, 0,  82, __view_get( e__VW.XView, view_current ) * 0.75, __view_get( e__VW.YView, view_current ) * globalYScroll + 338 , __view_get( e__VW.XView, view_current ) * 0.25 + __view_get( e__VW.WView, 0 ), 46);
	scr_draw_background_tiled_area(bg_aquaticruin_bushes, 0,  0, __view_get( e__VW.XView, view_current ) * 0.75, __view_get( e__VW.YView, view_current ) * globalYScroll + 384 , __view_get( e__VW.XView, view_current ) * 0.25 + __view_get( e__VW.WView, 0 ), 16);
	
	scr_draw_background_tiled_area(bg_aquaticruin_bushes, 0,  16, __view_get( e__VW.XView, view_current ) * 0.7, __view_get( e__VW.YView, view_current ) * globalYScroll + 400 , __view_get( e__VW.XView, view_current ) * 0.3 + __view_get( e__VW.WView, 0 ), 48);
	scr_draw_background_tiled_area(bg_aquaticruin_depths, 0,  0, __view_get( e__VW.XView, view_current ) * 0.7, __view_get( e__VW.YView, view_current ) * globalYScroll + 448 , __view_get( e__VW.XView, view_current ) * 0.3 + __view_get( e__VW.WView, 0 ), 512);
 // Draw the Clouds
    //scr_draw_background_tiled_area(bg_doomsday_planet1, 0, 0, __view_get( e__VW.XView, view_current ) + (cl_speed * 0.60), __view_get( e__VW.YView, view_current ) * 0.97 + 177, __view_get( e__VW.WView, 0 ) - (cl_speed * 0.60), 47);
    //scr_draw_background_tiled_area(bg_doomsday_planet2, 0, 0, __view_get( e__VW.XView, view_current ) + (cl_speed * 0.70), __view_get( e__VW.YView, view_current ) * 0.97 + 224, __view_get( e__VW.WView, 0 ) - (cl_speed * 0.70), 62);
	//scr_draw_background_tiled_area(bg_doomsday_planet3, 0, 0, __view_get( e__VW.XView, view_current ) + (cl_speed * 0.80), __view_get( e__VW.YView, view_current ) * 0.97 + 286, __view_get( e__VW.WView, 0 ) - (cl_speed * 0.80), 84);
	
/*******WATER BG*******/
	//scr_draw_sprite_tiled_horizontal(sprWaterBG, 0,  __view_get( e__VW.XView, 0 ), global.WaterSurfacePosition);
    //var MaxScaleY   = 0.2;
	//var waterYOffset = -8;
	//var Height = 0;
	
	//floor(__view_get( e__VW.YView, view_current )*RatioY)+Height;
	
    // Calculate scale and limit it over the MaxScaleY
    //var _Scale = min(max((par_character.y - global.WaterSurfacePosition - Height)/sprite_get_height(sprWaterBG), -MaxScaleY), MaxScaleY);

	//scr_draw_background_tiled_area(bg_labyrinth_all, 0,  0, __view_get( e__VW.XView, view_current ) * 0.65, global.WaterSurfacePosition + waterYOffset + _Scale * sprite_get_height(sprWaterBG) , __view_get( e__VW.XView, view_current ) * 0.35 + __view_get( e__VW.WView, 0 ), 1024);
	//scr_draw_background_tiled_area_ext(sprWaterBG, 0,  0, __view_get( e__VW.XView, view_current ) * 0.65 + (cl_speed * 0.90), global.WaterSurfacePosition + waterYOffset , __view_get( e__VW.XView, view_current ) * 0.35 + __view_get( e__VW.WView, 0 ) - (cl_speed * 0.90), 256, _Scale);
	