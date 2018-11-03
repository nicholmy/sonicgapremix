/// @description  Create a small Bubble.
    if(Active == true){
       SmallBubble = instance_create(x+choose(8, -5, -5, -4, 4, 10.14), self.y-2, obj_air_bubble); 
       SmallBubble.BubbleIndex = choose(0, 1);
    }  alarm[0]    = random(60) + 40;


