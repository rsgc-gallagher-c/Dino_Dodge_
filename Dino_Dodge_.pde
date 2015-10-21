//Create a game like the one in google chrome
//Carlyle Gallagher 

// global variables (can be used everywhere below)

Cactus c1; //makes a place in memery to keep cactus object 

float dinoY;     // tracks position of dino
float dinoS;     // tracks speed of dino
float dinoA;     // tracks acceleration of the dino
float gravity;   // gravity
float distance;  // tracks the distance between the dino and a cactus 

// this function runs once only
void setup() {
  // draw the canvas
  size(800, 200);

c1 = new Cactus (900, 175, -0.1, -1);

  // set dino initial vertical position
  dinoY = 170;

  // set dino's initial speed
  dinoS = 0;

  // set dino's initial acceleration
  dinoA = -0.5;

  // set gravity
  gravity = 0.075;
}

// this function runs repeatedly
void draw() {
  // background clears each time the program loops
  background(255);



c1.update(gravity); 

  //Status Update
  textSize(12); 
  fill(0);
  text("dinoY is " + dinoY, 150, 25);
  text("dinoS is " + dinoS, 150, 50);
  text("dinoA is " + dinoA, 150, 75);
  text("distance is " + distance, 150, 100); 

  //// determine the distance between the objects  
  ////dino - cactus     
  //float a = dinoY - 175; 
  //float b = 50 - x1; 
  //distance = sqrt( pow(a, 2) + pow(b, 2)      ); 

////determine weather there is a hit
 //if(distance  < (10 + 21) ) {
  // textSize(80);
  // text("GAME OVER", 285, 100);
  // noLoop();
 //}
 
 ////Increase score  
 
 //if(x1 < 0) {
   
 //  textSize(40);
 //  text("+100", 6, 50);

 //}

  //Move the Dino
  dinoA = dinoA + gravity;
  dinoS = dinoS + dinoA; //change speed based on acceleration 
  dinoY = dinoY + dinoS; //change acceleration based on speed

  //Stop the dino if it hits the ground 
  if (dinoY > 170) {//bottom of the screen (200) minus the radius 
    dinoS = 0;
    dinoA = 0;
    dinoY = 170;
  }
  

  // draw the dino
  ellipse(50, dinoY, 50, 50);
}

// respond to keypress 
void keyPressed() {
if(dinoY == 170)
{
  dinoA = -1;
}
}