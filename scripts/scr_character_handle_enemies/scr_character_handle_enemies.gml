/// @description  scr_character_handle_enemies()
//  Script to handle enemies:

    // Destroy a enemy:
       if((Action = ActionJump && CharacterID != CharacterAmy) || (Action = ActionJump && CharacterID == CharacterAmy && AmyRollJump = true) || Action = ActionRolling || (Action = ActionSpindash && CharacterID != CharacterAmy) || (Invincibility > 1 && YSpeed > 0.0)
       ||(CharacterState != CharacterNormal) || (Shield != ShieldDefault && ShieldAttack) || Animation = "ROLL" || HomingUsed == true || Action = ActionGlide || Action = ActionSlide || AmyHammerAttack != 0 || Action = ActionHammerDrop ) 
       or (Action == ActionFly && YSpeed < 0){ 
          var EnemyHandle = scr_character_collision_object(x, y, par_enemy);
		  var RightSpikyEnemy = scr_character_collision_right_object(x, y, Angle, spr_mask_big, par_enemy);
		  
		  if (RightSpikyEnemy && RightSpikyEnemy.isLeftSpiky && CharacterID == CharacterMighty && (Action == ActionJump || Action == ActionRolling)) {
			  XSpeed = -4;
			  PlaySound(snd_character_spiketap, global.SFXVolume, 1, 1)
		  }
          else if(EnemyHandle){
		  
             // Rebound:
                if((ShieldAttack) || (Action = ActionJump && YSpeed >= 0) || (YSpeed >= 0 && Action = ActionRolling || Action != ActionHurt && Invincibility != 0 && YSpeed > 0 ) || (Animation = "ROLL" && YSpeed > 0) || HomingUsed == true || Action = ActionGlide) 
                {
                   if(Action != ActionFly){
                      if(KeyAction){
                         if(HomingUsed == true){
                            HomingUsed  = false;
                            XSpeed      = 0;
                         }
                         YSpeed  *= -1; 
                         Ground  = false;
                         JumpHeightMod = false;                   
                      }else{                
                         if(HomingUsed == true){
                            HomingUsed  = false;                         
                            XSpeed      = 0;
                         }                      
                         YSpeed  = max(-4, YSpeed*-1); 
                         Ground  = false;     
                         JumpHeightMod = false;                                   
                      }         
                   }         
                }
             
             // Destroy the enemy:
                with(EnemyHandle){
                     instance_destroy();
                }
                
          }                              
       }       

       
