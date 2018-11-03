/// @description  Easter Egg.

   if(ds_map_find_value(async_load, "id") == KonamiLoaded){
      if(ds_map_find_value(async_load, "status") >= 0 && KonamiSprite == noone){
         PlaySound(egg_billiejean, global.BGMVolume, 1, 1);      
         KonamiSprite = KonamiLoaded;
         global.Lives = 30;
      }
   }

