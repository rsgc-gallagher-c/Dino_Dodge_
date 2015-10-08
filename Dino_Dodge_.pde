//Create a game like the one in google chrome
//Carlyle Gallagher 

//Globe variables can be used everywhere below 
int x1; //tracks horizontal positon of the first cactus
int x2;
int x3;

void setup() {
 
  //draw canvas 
 size(800,200);
  //set initial position of the cactus 
 x1 = 900;
 x2 = 1000;
 x3 = 1050;
}

void draw() {
  noStroke();
  fill(8,8,8);
 
  //background clears each time the program loops 
 background(255);
  
  //draw circle at bottom 
 ellipse(x1,175,50,50);
  ellipse(x2,175,50,50);
 ellipse(x3, 175, 50,50);
 
  //create the apperence of moving by changeing the x position 
 x1 = x1 - 4;
 x2 = x2 - 5;
 x3 = x3 - 7;
 
 //put the cactus back on the right side if is goes off the left side
if(x1 < -25){
   x1 = 900; //place off screen on right 
   
}
 
 if(x2 < -25){
   x2 = 900;
 
 }
 
 if(x3 < -25){
   x3 = 900;
 
 }
 
}

 