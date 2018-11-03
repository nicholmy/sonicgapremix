/// @description  Time Bonus.

    if(BonusTime > 0){
       BonusTime    -= 10;
       BonusTotal   += 10;
       global.Score += 10;
       alarm[1]      =  1;
    }else{
       BonusTime = 0;
       alarm[1]  = -1;
    }


