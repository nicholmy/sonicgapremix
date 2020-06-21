/// @description  Create Collapsing tiles.

    var TileOX, TileOY, TileWidth, TileHeight;
    var TileW, TileH;
    var Int;
        Int        = 0;
        TileOX     = 2;
        TileOY     = 5;
        TileWidth  = (sprite_width  div 16);
        TileHeight = (sprite_height div 16);

  // Create all collapsing pieces.
     for(TileH = 0; TileH < TileHeight; TileH++){
         for(TileW = 0; TileW < TileWidth; TileW++){
             with(instance_create(x+TileW*16, y+TileH*16, obj_collapse_aquaticruin_pieces)){
                  // Set Sprite properties:
                     image_speed = 0;
                     image_index = TileH*TileWidth+TileW;   
                     Int         = TileH*TileWidth+TileW;                      
                     mask_index  = spr_mask_collapse_piece;                
                  // Delay:
                     if(image_xscale > 0){
                        alarm[0] = ((TileWidth-TileW)*other.TileOX)+(((TileHeight-TileH)-1)*other.TileOY)
                     }else{
                        alarm[0] = (TileW*other.TileOX)+(((TileHeight-TileH)-1)*other.TileOY);                     
                     }
             }
         }
     }

  // Sound:
     PlaySound(snd_object_destroy, global.SFXVolume, 1, 1);
               
  // Destroy.
     instance_destroy();

           


