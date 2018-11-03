/// @description  Animation + Position.

// Animation.
if(Activated && !Finished){
   if(BulbLoop > 0){
      PostFrame += 2;      
   }else{
      image_index = 0;
      image_speed = 0;
      alarm[0]    = 1;
   }
   if(PostFrame >= image_number-1){
      BulbLoop--
      PostFrame = 0
   }
}


