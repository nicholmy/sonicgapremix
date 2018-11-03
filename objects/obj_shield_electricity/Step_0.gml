/// @description  Set the X/Y Position and Depth.

 // Set position:
    if(Parent.Action != ActionJump && Parent.Action != ActionRolling){
       x = floor(Parent.x);
       y = floor(Parent.y);
    }else{
       x = floor(Parent.x);
       y = floor(Parent.y+4);   
    }
    
 // Change Depth:
    if(image_index >= 0 && image_index < 15){
       depth  = Parent.depth - 1;
    }else{
       depth  = Parent.depth
    }

	if (Shield_State == "spark") {
		// Create Electric Sparks:
        for(i = 0; i < 4; i++){
            Spark = instance_create(floor(Parent.x-3), floor(Parent.y), obj_electricity_spark);
            switch(i){
                    case 0: { Spark.Direction =   0; break; }
                    case 1: { Spark.Direction = 180; break; }
                    case 2: { Spark.Direction = 225; break; }
                    case 3: { Spark.Direction = 315; break; }                                                                                                
            }
        }  
		
		Shield_State = "default";
	}

