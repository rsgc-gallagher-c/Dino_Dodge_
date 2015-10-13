//Create a game like the one in google chrome
//Carlyle Gallagher 

// global variables (can be used everywhere below)
float x1;    // tracks horizontal position of first cactus
float s1;    // speed for first cactus
float a1;    // acceleration for first cactus
float dinoY;     // tracks position of dino
float dinoS;     // tracks speed of dino
float dinoA;     // tracks acceleration of the dino
float gravity;   // gravity

// this function runs once only
void setup() {
  // draw the canvas
  size(800, 200);

  // set the initial position of the cactus
  x1 = 900; // position it off-screen on the right

  // set the intial acceleration
  a1 = -0.1;

  // set the initial speed
  s1 = -1;

  // set dino initial vertical position
  dinoY = 170;

  // set dino's initial speed
  dinoS = 0;

  // set dino's initial acceleration
  dinoA = -0.5;

  // set gravity
  gravity = 0.05;
}

// this function runs repeatedly
void draw() {
  // background clears each time the program loops
  background(255);

  // draw a circle at bottom right corner of the screen
  //       x    y    w   h
  ellipse(x1, 175, 25, 25);

  // change the speed
  s1 = s1 + a1;

  // create the appearance of moving by changing the x position
  x1 = x1 + s1;

  // put the cactus back on the right edge if it goes off the left edge
  if (x1 < -25) {
    x1 = 900; // place off screen on right 
    s1 = -1;  // reset the speed (to avoid insanely fast movement)
  }

  //Status Update
  fill(0);
  text("dinoY is " + dinoY, 150, 25);
  text("dinoS is " + dinoS, 150, 50);
  text("dinoA is " + dinoA, 150, 75);

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

  dinoA = -1;
}