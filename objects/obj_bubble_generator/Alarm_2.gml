/// @description  Create a big Bubble.
    if(Active == true){
       SmallBubble = instance_create(x+choose(8, -5, -5, -4, 4, 10.14), self.y-2, obj_air_bubble); 
       SmallBubble.BubbleIndex = 6;
    }  alarm[2]    = random(300) + 150;


