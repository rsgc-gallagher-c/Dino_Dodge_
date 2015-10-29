class Dinosaur { 
  //global variables for Dinosaur 
  float dinoY;     // tracks position of dino
  float dinoS;     // tracks speed of dino
  float dinoA;     // tracks acceleration of the dino


  //constructor (like setup - runs once) 
  Dinosaur (float dinoY_, float dinoS_, float dinoA_) {

    // set dino initial vertical position
    dinoY = dinoY_;

    // set dino's initial speed
    dinoS = dinoS_;

    // set dino's initial acceleration
    dinoA = dinoA_;
  }

  void update(float gravity)
  {
     // status updates for dinosaur position
    textSize(12);
    fill(0);
    text("dinoY is " + dinoY, 150, 25);
    text("dinoS is " + dinoS, 150, 50);
    text("dinoA is " + dinoA, 150, 75);
  // text("distance is " + distance, 150, 100); // will make this work later
    
    //float a = dinoY - 175; 
    //float b = 50 - c1.getx(); 
    //distance = sqrt( pow(a, 2) + pow(b, 2)      );  

    //if (distance  < (10 + 21) ) {
    //  textSize(80);
    //  text("GAME OVER", 285, 100);
    //  noLoop();
    //}

    dinoA = dinoA + gravity;
    dinoS = dinoS + dinoA; //change speed based on acceleration 
    dinoY = dinoY + dinoS; //change acceleration based on speed
    
    //Stop the dino if it hits the ground 
    if (dinoY > 170) {//bottom of the screen (200) minus the radius 
      dinoS = 0;
      dinoA = 0;
      dinoY = 170;
    }

    ellipse(50, dinoY, 50, 50); //draws the dino on the screen 
  }
 // getY
  // Purpose: an accessor method; lets us find out where the dino is (vertically)
float getY() {
    return dinoY;
  }
  
  // setA
  //
  // Purpose: a mutator method; lets the acceleration for the dinosaur be set
  //          from outside the class
  void setA(float newA_) {
    dinoA = newA_;
  }

}