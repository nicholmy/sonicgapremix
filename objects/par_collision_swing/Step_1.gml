/// @description  Swing & Handle Character.
    var player_main, i, Var_Cos, Var_Sin, XPrevious;
    XPrevious = x;

//  Set Cos/Sin:
    Var_Cos = (cos(degtorad(AngleMov))*ChainSize);
    Var_Sin = (sin(degtorad(AngleMov))*ChainSize);

//  Set the X/Y Position:
    x = floor(XRelative+Var_Cos); 
    y = floor(YRelative-Var_Sin); 

//  Change the X/Y Position of the Player:
    i = 0;
    repeat(instance_number(par_character)){
           CharacterMain = par_character;
           if(instance_exists(CharacterMain) == false && CharacterMain != noone){
              i+=1;
              continue;
           }
           if((CharacterMain.Ground == true && CharacterMain.Action != ActionDie) && (CharacterMain.OnSwing = id)){
               CharacterMain.x += (x-XPrevious);
               CharacterMain.y  = ((y-sprite_yoffset)-PlatformOffset);
           }
           i+=1;
    }





