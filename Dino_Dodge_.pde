//Create a game like the one in google chrome
//Carlyle Gallagher 

//Globe variables can be used everywhere below 
int x; //tracks horizontal positon of the first cactus

void setup() {
 
  //draw canvas 
 size(800,200);
  //set initial position of the cactus 
 x = 900;
  
}

void draw() {
 
  //background clears each time the program loops 
 background(255);
  
  //draw circle at bottom 
 ellipse(x,175,50,50);
 
  //create the apperence of moving by changeing the x position 
 x = x - 5;
 
 //put the cactus back on the right side if is goes off the left side
if(x < -25){
   x = 900; //place off screen on right 
   
}
 
}

 