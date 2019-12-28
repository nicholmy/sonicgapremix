/// @description  Go to the next room.

   if(room_next(room) != rm_bonus_gumball){
      room_goto_next();
   }else{
      room_goto(rm_flicky_credits);
   }


