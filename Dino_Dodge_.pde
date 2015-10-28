//Create a game like the one in google chrome
//Carlyle Gallagher 

// global variables (can be used everywhere below)

 float gravity;   // gravity
 float distance;  // tracks the distance between the dino and a cactus 

Cactus c1; //makes a place in memery to keep cactus object 
Dinosaur d1; //makes a place for the dino 

// this function runs once only
void setup() {
  // draw the canvas
  size(800, 200);

  c1 = new Cactus(900, 175, -0.1, -1);
  d1 = new Dinosaur(170, 0, 0);
  
}

// this function runs repeatedly
void draw() {
  // background clears each time the program loops
  background(255);


  d1.update(gravity); 
  c1.update(gravity); 

  //Status Update
  //textSize(12); 
  //fill(0);
  //text("dinoY is " + dinoY, 150, 25);
  //text("dinoS is " + dinoS, 150, 50);
  //text("dinoA is " + dinoA, 150, 75);
  //text("distance is " + distance, 150, 100); 

  // determine the distance between the objects  
  //dino - cactus     
 

  //determine weather there is a hit
  

  ////Increase score  

  //if(x1 < 0) {

  //  textSize(40);
  //  text("+100", 6, 50);

  //}

  //Move the Dino
  


  // draw the dino
  
}

// respond to keypress 