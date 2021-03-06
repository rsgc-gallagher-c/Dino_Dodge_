class Cactus {
  //global Variables for the cactus 
  float x1;    // tracks horizontal position of first cactus
  float y1;    //tracks vertical position of the first cactus 
  float s1;    // speed for first cactus
  float a1;    // acceleration for first cactus


  //constructor (like setup - runs once)
  Cactus (float x_, float y_, float a_, float s_) {
    x1=x_;
    y1=y_;
    a1=a_;
    s1=s_;
  }

  //Update: draws things related to cactus 
  void update (float gravity) {

    // change the speed
    s1 = s1 + a1;

    // create the appearance of moving by changing the x position
    x1 = x1 + s1;

    // put the cactus back on the right edge if it goes off the left edge
    if (x1 < -100) {
      x1 = 900; // place off screen on right 
      s1 = -1;  // reset the speed (to avoid insanely fast movement)
    }

    // draw a circle at bottom right corner of the screen
    //       x    y    w   h
    ellipse(x1, 175, 25, 25);
    ellipse(x1, y1, 25, 25);
  }


  //GetX
  //Purpose: to return X position of the cactus 
  float getx() {

    return x1;
  }

  // getY
  // Purpose: an accessor method; lets us find out where the cactus is (vertically)
  float getY() {
    return y1;
  }
}