/// @description  Create a medium Bubble.
    if(Active == true){
       SmallBubble = instance_create(x+choose(8, 5, 4, 10.14), self.y-2, obj_air_bubble); 
       SmallBubble.BubbleIndex = choose(2, 3);
    }  alarm[1]    = random(90) + 100;


